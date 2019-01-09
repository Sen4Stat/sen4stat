#include "LtuCountryInfo.h"
LtuCountryInfo::LtuCountryInfo() {
    using namespace std::placeholders;
    m_LineHandlerFnc = std::bind(&LtuCountryInfo::HandleFileLine, this, _1, _2, _3);
}

std::string LtuCountryInfo::GetName() { return "LTU"; }

std::string LtuCountryInfo::GetUniqueId(OGRFeature &ogrFeat) {
    return GetGSAAUniqueId(ogrFeat);
}

std::string LtuCountryInfo::GetMainCrop(OGRFeature &ogrFeat) {
    return ogrFeat.GetFieldAsString(ogrFeat.GetFieldIndex("PSL_KODAS"));
}

bool LtuCountryInfo::GetHasPractice(OGRFeature &ogrFeat, const std::string &practice) {
    const std::string &uid = GetUniqueId(ogrFeat);
    if (practice == CATCH_CROP_VAL) {
        return (m_ccISMap.find(uid) != m_ccISMap.end() ||
                m_ccPOMap.find(uid) != m_ccPOMap.end());
    } else if (practice == FALLOW_LAND_VAL) {
        return (m_blackFallowMap.find(uid) != m_blackFallowMap.end() ||
                m_greenFallowMap.find(uid) != m_greenFallowMap.end());
    } else if (practice == NITROGEN_FIXING_CROP_VAL) {
        return (m_nfcMap.find(uid) != m_nfcMap.end());
    }
    return false;
}

std::string LtuCountryInfo::GetPracticeType(OGRFeature &ogrFeat) {
    const std::string &uid = GetUniqueId(ogrFeat);
    if (m_practice == CATCH_CROP_VAL) {
        if (m_ccISMap.find(uid) != m_ccISMap.end()) {
            return "IS";
        } else if (m_ccPOMap.find(uid) != m_ccPOMap.end()) {
            return "PO";
        }
    } else if (m_practice == FALLOW_LAND_VAL) {
        if (m_blackFallowMap.find(uid) != m_blackFallowMap.end()) {
            return "PDJ";
        }
        if(m_greenFallowMap.find(uid) != m_greenFallowMap.end()){
            return "PDZ";
        }
    } // else if (practice == NITROGEN_FIXING_CROP_VAL) return "NA"
    return "NA";
}

std::string LtuCountryInfo::GetPEnd(OGRFeature &ogrFeat) {
    if (m_practice == FALLOW_LAND_VAL) {
        const std::string &pType = GetPracticeType(ogrFeat);
        if (pType == "PDZ") {
            return m_pWinterEnd;
        }
    }
    return m_pend;
}

int LtuCountryInfo::HandleFileLine(const MapHdrIdx& header, const std::vector<std::string>& line, int fileIdx) {
    std::map<std::string, std::string> *pRefMap = NULL;
    switch(fileIdx) {
    case 0:
        if (m_practice.size() == 0 || m_practice == CATCH_CROP_VAL) {
            // we have a ccPO file
            pRefMap = &m_ccPOMap;
        } else if (m_practice == FALLOW_LAND_VAL) {
            pRefMap = &m_blackFallowMap;
        } else if (m_practice == NITROGEN_FIXING_CROP_VAL) {
            pRefMap = &m_nfcMap;
        }

        break;
    case 1:
        if (m_practice.size() == 0 || m_practice == CATCH_CROP_VAL) {
            // we have a ccIS file
            pRefMap = &m_ccISMap;
        } else if (m_practice == FALLOW_LAND_VAL) {
            pRefMap = &m_greenFallowMap;
        } else {
            std::cout << "ERROR: Unexpected file here!!!" << std::endl;
            return false;
        }
        break;
    case 2:
        // here is expected only for no practice selections
        pRefMap = &m_blackFallowMap;
        break;
    case 3:
        // here is expected only for no practice selections
        pRefMap = &m_greenFallowMap;
        break;
    case 4:
        // here is expected only for no practice selections
        pRefMap = &m_nfcMap;
        break;
    }

    if (pRefMap) {
        std::string uid;
        std::vector<std::string> keys = {"valdos numeris", "kZs", "deklaruoto lauko numeris"};
        for(size_t i = 0; i<keys.size();i++) {
            MapHdrIdx::const_iterator itMap = header.find(keys[i]);
            if (itMap != header.end() && itMap->second < line.size()) {
                if (i != 0) {
                    uid += "-";
                }
                uid += line[itMap->second];
            }
        }
        (*pRefMap)[uid] = uid;
    } else {
        std::cout << "An error occurred trying to identify the file!!!" << std::endl;
        return false;
    }
    return true;
}

bool LtuCountryInfo::HasUid(const std::string &fid, const std::map<std::string, std::string> &refMap) {
    std::map<std::string, std::string>::const_iterator itMap = refMap.find(fid);
    return itMap != refMap.end();
}

std::string LtuCountryInfo::GetGSAAUniqueId(OGRFeature &ogrFeat)    {
    std::string gsaaId;
    int aggId = ogrFeat.GetFieldIndex("agg_id");
    if (aggId >= 0) {
        gsaaId = ogrFeat.GetFieldAsString(aggId);
    } else {
        gsaaId = std::to_string(ogrFeat.GetFieldAsInteger(ogrFeat.GetFieldIndex("VALDOS_NR"))) + "-" +
                ogrFeat.GetFieldAsString(ogrFeat.GetFieldIndex("KZS_NR")) + "-" +
                ogrFeat.GetFieldAsString(ogrFeat.GetFieldIndex("LAUKO_NR"));
    }

    return gsaaId;
}
