#include "skullstrip.hpp"
#include <vector>
#include <string>
#include <algorithm>
#include <iostream>

#include <itkImage.h>
#include <itkExceptionObject.h>
#include <itkImageFileWriter.h>
#include <itkImageFileReader.h>
#include <itkMetaDataObject.h>
#include <itkNrrdImageIO.h>
#include <itkMaskImageFilter.h>
#include <itkBinaryBallStructuringElement.h>
#include <itkGrayscaleDilateImageFilter.h>
#include <itkMedianImageFilter.h>

// type definitions for the nrrd files
typedef itk::Image<int,3>	    DiffusionImageType;
typedef DiffusionImageType::Pointer	    DiffusionImagePointer;
typedef itk::ImageFileReader<DiffusionImageType> ImageReaderType;

typedef itk::Image<short,3> AtlasLabelType;
typedef itk::ImageFileReader<AtlasLabelType> LabelReaderType;

typedef itk::ImageFileWriter<DiffusionImageType> WriterType;

typedef itk::ImageRegionConstIterator<DiffusionImageType> ConstIterator;
typedef itk::ImageRegionIterator<DiffusionImageType> Iterator;

typedef itk::BinaryBallStructuringElement<AtlasLabelType::PixelType,3> StructuringElementType;

typedef itk::MaskImageFilter<DiffusionImageType, AtlasLabelType, DiffusionImageType> MaskFilterType;
typedef itk::GrayscaleDilateImageFilter<AtlasLabelType, AtlasLabelType, StructuringElementType> DilateFilterType;
typedef itk::MedianImageFilter<AtlasLabelType, AtlasLabelType> MedianFilterType;

/** Basic version
 * @brief strip
 * @param input
 * @param output
 * @param label
 */
void strip(const char *input, const char *output, const char *label)
{
    std::cout<<"Iterators version"<<std::endl;

    // Reading files
    ImageReaderType::Pointer in = ImageReaderType::New();
    in->SetFileName(input);
    in->Update();

    ImageReaderType::Pointer la = ImageReaderType::New();
    la->SetFileName(label);
    la->Update();

    // Creating images
    DiffusionImagePointer image = in->GetOutput();
    DiffusionImagePointer image_lab = la->GetOutput();
    DiffusionImagePointer image_output = DiffusionImageType::New();

    WriterType::Pointer writer = WriterType::New();
    DiffusionImageType::RegionType regions = image->GetLargestPossibleRegion();
    image_output->SetRegions(regions);
    image_output->Allocate();

    // Processing the image
    ConstIterator it_label(image_lab,image_lab->GetRequestedRegion());
    Iterator it(image,image->GetRequestedRegion());
    Iterator it_out(image_output,image_output->GetRequestedRegion());

    for (it.GoToBegin(),it_label.GoToBegin(),it_out.GoToBegin() ; !it.IsAtEnd() && !it_label.IsAtEnd() && !it_out.IsAtEnd() ; ++it, ++it_label, ++it_out)
    {
        if (it_label.Get()==0)
        {
            it_out.Set(0);
        }
        else
        {
            it_out.Set(it.Get());
        }
    }

    // Writing the file
    writer->SetInput( image_output );
    writer->SetFileName(output);
    try
    {
        writer->Update();
    }
    catch (itk::ExceptionObject e)
    {
        std::cout << e << std::endl;
    }
}

/** Version with filter
 * @brief strip_filter
 * @param input
 * @param output
 * @param label
 */
void strip_filter(const char *input, const char *output, const char *label)
{
    std::cout<<"Filter version"<<std::endl;

    // Reading files
    ImageReaderType::Pointer in = ImageReaderType::New();
    in->SetFileName(input);

    LabelReaderType::Pointer la = LabelReaderType::New();
    la->SetFileName(label);

    try
    {
        in->Update();
        la->Update();
    }
    catch (itk::ExceptionObject e)
    {
        std::cout << e << std::endl;
    }

    WriterType::Pointer writer = WriterType::New();

    MaskFilterType::Pointer maskFilter = MaskFilterType::New();

    maskFilter->SetInput( in->GetOutput() );
    maskFilter->SetMaskImage( la->GetOutput() );

    try
    {
        maskFilter->Update();
    }
    catch (itk::ExceptionObject e)
    {
        std::cout << e << std::endl;
    }

    // Writing the file
    writer->SetInput( maskFilter->GetOutput() );
    writer->SetFileName(output);
    try
    {
        writer->Update();
    }
    catch (itk::ExceptionObject e)
    {
        std::cout << e << std::endl;
    }
}

/** Filtering with dilated label
 * @brief strip_dilate
 * @param input
 * @param output
 * @param label
 */
void strip_dilate(const char* input, const char* output, const char* label)
{
    std::cout<<"Dilatation version"<<std::endl;

    // Reading files
    ImageReaderType::Pointer in = ImageReaderType::New();
    in->SetFileName(input);

    LabelReaderType::Pointer la = LabelReaderType::New();
    la->SetFileName(label);

    StructuringElementType structuringElement;
    structuringElement.SetRadius(1);
    structuringElement.CreateStructuringElement();

    try
    {
        in->Update();
        la->Update();
    }
    catch (itk::ExceptionObject e)
    {
        std::cout << e << std::endl;
    }

    WriterType::Pointer writer = WriterType::New();

    DilateFilterType::Pointer dilateFilter= DilateFilterType::New();

    MaskFilterType::Pointer maskFilter = MaskFilterType::New();

    dilateFilter->SetInput( la->GetOutput());
    dilateFilter->SetKernel(structuringElement);

    try
    {
        dilateFilter->Update();
    }
    catch (itk::ExceptionObject e)
    {
        std::cout << e << std::endl;
    }

    maskFilter->SetInput( in->GetOutput() );
    maskFilter->SetMaskImage( dilateFilter->GetOutput() );

    try
    {
        maskFilter->Update();
    }
    catch (itk::ExceptionObject e)
    {
        std::cout << e << std::endl;
    }

    // Writing the file
    writer->SetInput( maskFilter->GetOutput() );
    writer->SetFileName(output);
    try
    {
        writer->Update();
    }
    catch (itk::ExceptionObject e)
    {
        std::cout << e << std::endl;
    }
}

/** Filtering with smoothed label
 * @brief strip_smooth
 * @param input
 * @param output
 * @param label
 */
void strip_smooth(const char* input, const char* output, const char* label)
{
    std::cout<<"Smoothing version"<<std::endl;

    // Reading files
    ImageReaderType::Pointer in = ImageReaderType::New();
    in->SetFileName(input);

    LabelReaderType::Pointer la = LabelReaderType::New();
    la->SetFileName(label);

    try
    {
        in->Update();
        la->Update();
    }
    catch (itk::ExceptionObject e)
    {
        std::cout << e << std::endl;
    }

    WriterType::Pointer writer = WriterType::New();

    MedianFilterType::Pointer medianFilter= MedianFilterType::New();
    MedianFilterType::InputSizeType radius;

    MaskFilterType::Pointer maskFilter = MaskFilterType::New();

    radius.Fill(2);
    medianFilter->SetInput( la->GetOutput());
    medianFilter->SetRadius(radius);

    try
    {
        medianFilter->Update();
    }
    catch (itk::ExceptionObject e)
    {
        std::cout << e << std::endl;
    }

    maskFilter->SetInput( in->GetOutput() );
    maskFilter->SetMaskImage( medianFilter->GetOutput() );

    try
    {
        maskFilter->Update();
    }
    catch (itk::ExceptionObject e)
    {
        std::cout << e << std::endl;
    }

    // Writing the file
    writer->SetInput( maskFilter->GetOutput() );
    writer->SetFileName(output);
    try
    {
        writer->Update();
    }
    catch (itk::ExceptionObject e)
    {
        std::cout << e << std::endl;
    }

}
