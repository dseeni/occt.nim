##  Created on: 2011-10-11
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

## !!!Ignored construct:  # __IVTK_INTERFACE_H__ [NewLine] # __IVTK_INTERFACE_H__ [NewLine] # < Standard_Type . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] class IVtk_Interface ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( IVtk_Interface , Standard_Transient ) ! @class IVtk_Interface
## ! @brief Base interface for visualisation component.
## !
## ! It is a handle class ("smart" pointer). IVtk_Interface is a base class for OCC interfaces
## ! for VTK classes, such as interface for shape objects (IVtk_IShape) and view(IVtk_IView),
## ! shape triangulation (IVtk_IShapeData, IVtk_IShapeMesher) and picking (IVtk_IShapePickerAlgo). class IVtk_Interface : public Standard_Transient { public : typedef Handle ( IVtk_Interface ) Handle ; public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return IVtk_Interface ; } static const Handle ( Standard_Type ) & get_type_descriptor ( ) ; virtual const Handle ( Standard_Type ) & DynamicType ( ) const ; virtual ~ IVtk_Interface ( ) { } } ;
## Error: expected ';'!!!














































