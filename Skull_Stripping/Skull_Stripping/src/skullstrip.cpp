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

void strip(const char *input, const char *output, const char *label)
{
    // type definition for the nrrd files
    typedef itk::Image<unsigned int,3>	    DiffusionImageType;
    typedef DiffusionImageType::Pointer	    DiffusionImagePointer;
    typedef itk::ImageFileReader<DiffusionImageType> FileReaderType;
    typedef itk::ImageFileWriter<DiffusionImageType> WriterType;
    typedef itk::ImageRegionConstIterator<DiffusionImageType> ConstIterator;
    typedef itk::ImageRegionIterator<DiffusionImageType> Iterator;

    // Reading files
    FileReaderType::Pointer in = FileReaderType::New();
    in->SetFileName(input);
    in->Update();

    FileReaderType::Pointer la = FileReaderType::New();
    la->SetFileName(label);
    la->Update();

    // Creating images
    DiffusionImagePointer image = in->GetOutput();
    DiffusionImagePointer image_lab = la->GetOutput();
    DiffusionImagePointer image_output = DiffusionImageType::New();

    WriterType::Pointer nrrdWriter = WriterType::New();
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
    nrrdWriter->SetInput( image_output );
    nrrdWriter->SetFileName(output);
    try
    {
        nrrdWriter->Update();
    }
    catch (itk::ExceptionObject e)
    {
        std::cout << e << std::endl;
    }
    std::cout<<"file written"<<std::endl;
}
