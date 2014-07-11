#include <iostream>

#include "itkImage.h"
#include "itkImageFileReader.h"
#include "itkImageFileWriter.h"

int main(int argc, char* argv[])
{
	if(argc<3)
	{
		std::cout<<"Error : Not enough input arguments"<<std::endl;
		return EXIT_FAILURE;
	}

	char *input = argv[1], *input_label = argv[2], *output;
	if(argc<4)
	{
		std::string str = "output.nrrd";
		output = new char[str.size()+1];
		std::copy(str.begin(), str.end(), output);
		output[str.size()] = '\0';
	}
	else
		output = argv[3];

	typedef unsigned int PixelType;
	const unsigned int Dim = 3;

	typedef itk::Image< PixelType, Dim > Image;
	typedef itk::ImageFileReader< Image > Reader;
	typedef itk::ImageFileWriter< Image > Writer;
	typedef itk::ImageRegionConstIterator< Image > ConstIterator;
	typedef itk::ImageRegionIterator< Image > Iterator;

	Reader::Pointer reader = Reader::New(), reader_label = Reader::New();
	reader->SetFileName(input);
	reader_label->SetFileName(input_label);
	reader->Update(); reader_label->Update();

	Image::Pointer image = reader->GetOutput();
	Image::Pointer image_label = reader_label->GetOutput();

	Image::Pointer image_output = Image::New();
	Image::RegionType region = image->GetLargestPossibleRegion();
	image_output->SetRegions(region);
	image_output->Allocate();

	Writer::Pointer writer = Writer::New();
	writer->SetFileName(output);

	ConstIterator iterator_label(image_label, image_label->GetLargestPossibleRegion());
	Iterator iterator(image, image->GetLargestPossibleRegion());
	Iterator iterator_output(image_output, image_output->GetLargestPossibleRegion());


	while(!iterator.IsAtEnd() && !iterator_label.IsAtEnd() && !iterator_output.IsAtEnd())
	{
		if(iterator_label.Get() == 0)
			iterator_output.Set(0);
		else
			iterator_output.Set(iterator.Get());
		++iterator; ++iterator_label; ++iterator_output;
	}

	writer->SetInput(image_output);
	writer->Update();


	return EXIT_SUCCESS;
}
