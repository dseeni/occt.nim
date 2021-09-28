##  Created on: 2011-10-14
##  Created by: Roman KOZLOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # __IVTKVTK_VIEW_H__ [NewLine] # __IVTKVTK_VIEW_H__ [NewLine] # < IVtk_IView . hxx > [NewLine] # < vtkSmartPointer . h > [NewLine] class vtkRenderer ;
## Error: expected ';'!!!

discard "forward decl of IVtkVTK_View"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( IVtkVTK_View , IVtk_IView ) ! @class IVtkVTK_View
## ! @brief ICamera implementation for VTK.
## !
## ! This class is used for obtaining view transformation parameters.
## ! These parameters are used by selection algorithm to compute
## ! projections of selectable (active) 3D shapes. class IVtkVTK_View : public IVtk_IView { public : typedef Handle ( IVtkVTK_View ) Handle ; IVtkVTK_View ( vtkRenderer * theRenderer ) ; ! Destructor virtual ~ IVtkVTK_View ( ) ; ! @return true if this is a perspective view, and false otherwise. virtual bool IsPerspective ( ) const ; ! @return The focal distance of the view virtual double GetDistance ( ) const ; ! @return The world coordinates of the view position virtual void GetPosition ( double & theX , double & theY , double & theZ ) const ; ! @return The "view up" direction of the view virtual void GetViewUp ( double & theDx , double & theDy , double & theDz ) const ; ! @return The projection direction vector of this view virtual void GetDirectionOfProjection ( double & theDx , double & theDy , double & theDz ) const ; ! @return Three doubles containing scale components of the view transformation virtual void GetScale ( double & theX , double & theY , double & theZ ) const ; ! @return The current view's zoom factor (for parallel projection) virtual double GetParallelScale ( ) const ; ! @return The current view angle (for perspective projection) virtual double GetViewAngle ( ) const ; ! @return Two doubles containing the display coordinates of the view window center virtual void GetViewCenter ( double & theX , double & theY ) const ; ! Gets window size in screen coordinates in pixels virtual void GetWindowSize ( int & theX , int & theY ) const ; ! Gets camera projection and orientation matrices virtual void GetCamera ( Graphic3d_Mat4d & theProj , Graphic3d_Mat4d & theOrient , Standard_Boolean & theIsOrtho ) const ; ! Gets viewport coordinates virtual void GetViewport ( Standard_Real & theX , Standard_Real & theY , Standard_Real & theWidth , Standard_Real & theHeight ) const ; ! Converts 3D display coordinates into 3D world coordinates.
## ! @param [in] theDisplayPnt 2d point of display coordinates
## ! @param [out] theWorldPnt 3d point of world coordinates
## ! @return true if conversion was successful, false otherwise virtual bool DisplayToWorld ( const gp_XY & theDisplayPnt , gp_XYZ & theWorldPnt ) const ; public : typedef IVtk_IView base_type ; static const char * get_type_name ( ) { return IVtkVTK_View ; } static const Handle ( Standard_Type ) & get_type_descriptor ( ) ; virtual const Handle ( Standard_Type ) & DynamicType ( ) const ; private : vtkSmartPointer < vtkRenderer > myRenderer ; } ;
## Error: expected ';'!!!














































