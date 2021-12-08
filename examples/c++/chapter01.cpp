// https://occtutorials.wordpress.com/2015/12/06/chapter-1-1-points-and-transformations/#more-95
// https://github.com/lvk88/OccTutorial/blob/master/Chapter1_Basics/runners/chapter1_1.cpp

// g++ chapter01.cpp -I/usr/include/opencascade -lTKernel -lTKMath -o chapter01

//OpenCASCADE tutorials by Laszlo Kudela
//2015 November
//Chapter 1.1 Basics
//This is a first example that shows how to create basic classes
//from OpenCASCADEs most basic library, TKMath. We will create
//two points in the 3D space, pnt1 and pnt2. We display the coordinates of
//the points and print out the distance between them.
//After that, we apply a rotation transformation on pnt1 as well as a mirroring
//on pnt1.
#include "gp_Pnt.hxx"
#include "gp_Ax1.hxx"
#include "gp_Trsf.hxx"

#include<iostream>

int main(int argc, char *argv[])
{

	//Create two point classes, with (x,y,z) coordinates
	gp_Pnt pnt1(0.0,0.0,0.0);
	gp_Pnt pnt2(1.0,1.0,1.0);

	//Display their coordinates
  	std::cout << "pnt1: " << pnt1.X() << " " << pnt1.Y() << " " << pnt1.Z() << std::endl;	
  	std::cout << "pnt2: " << pnt2.X() << " " << pnt2.Y() << " " << pnt2.Z() << std::endl;	
	std::cout << "Distance between pnt1 and pnt2: " << pnt1.Distance(pnt2) << std::endl;

	//Rotate pnt1 around the point2, by 90 degrees 
  	gp_Trsf rotation;
	gp_Ax1 rotationAxis(gp_Pnt(1.0,1.0,0.0),gp_Dir(0.0,0.0,1.0));
	rotation.SetRotation(rotationAxis,3.1415926/2.0);	
	pnt1.Transform(rotation);
	std::cout << "pnt1 after rotation: " << pnt1.X() << " " << pnt1.Y() << " " << pnt1.Z()  << std::endl;

	//Create a new point by mirroring pnt1 about the y axis
	gp_Ax1 axisOfSymmetry(gp_Pnt(0.0,0.0,0.0),gp_Dir(0.0,1.0,0.0));
	gp_Pnt pnt3 = pnt1.Mirrored(axisOfSymmetry);
	std::cout << "pnt3 after mirroring: " << pnt3.X() << " " << pnt3.Y() << " " << pnt3.Z()  << std::endl;
	
	return 0;
}
