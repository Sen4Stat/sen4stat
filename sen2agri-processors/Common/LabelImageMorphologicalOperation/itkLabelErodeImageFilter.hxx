/*=========================================================================
 *
 *  Copyright Insight Software Consortium
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *         http://www.apache.org/licenses/LICENSE-2.0.txt
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 *=========================================================================*/
#ifndef itkLabelErodeImageFilter_hxx
#define itkLabelErodeImageFilter_hxx

#include "itkLabelErodeImageFilter.h"

namespace itk
{
template< typename TInputImage, typename TOutputImage, typename TKernel >
LabelErodeImageFilter< TInputImage, TOutputImage, TKernel >
::LabelErodeImageFilter()
{
}

template< typename TInputImage, typename TOutputImage, typename TKernel >
typename LabelErodeImageFilter< TInputImage, TOutputImage, TKernel >::PixelType
LabelErodeImageFilter< TInputImage, TOutputImage, TKernel >
::Evaluate(const NeighborhoodIteratorType &nit,
           const KernelIteratorType kernelBegin,
           const KernelIteratorType kernelEnd)
{
  unsigned int i;
  KernelIteratorType kernel_it;
  const PixelType &centerPixel = nit.GetCenterPixel();

  for ( i = 0, kernel_it = kernelBegin; kernel_it < kernelEnd; ++kernel_it, ++i )
    {
    // if structuring element is positive, use the pixel under that element
    // in the image
    if ( *kernel_it > NumericTraits< KernelPixelType >::ZeroValue() )
      {
      // note we use GetPixel() on the NeighborhoodIterator in order
      // to respect boundary conditions.
      if (nit.GetPixel(i) != centerPixel)
        return this->GetBackgroundValue();
      }
    }

  return centerPixel;
}
} // end namespace itk
#endif
