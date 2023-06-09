CREATE TABLE IF NOT EXISTS auxdata_file (
    id smallserial NOT NULL,
    auxdata_descriptor_id smallint NOT NULL,
    file_order smallint NOT NULL,
    name character varying,
    label character varying NOT NULL,
    extensions character varying[],
    required boolean DEFAULT false,
    CONSTRAINT auxdata_file_pkey PRIMARY KEY (id),
    CONSTRAINT u_auxdata_descriptor_file UNIQUE (auxdata_descriptor_id, file_order)
);