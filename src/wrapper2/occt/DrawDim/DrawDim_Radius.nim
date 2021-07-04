##  Created on: 1997-04-21
##  Created by: Denis PASCAL
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Face,
  DrawDim_Dimension

discard "forward decl of TopoDS_Face"
discard "forward decl of Draw_Display"
discard "forward decl of DrawDim_Radius"
discard "forward decl of DrawDim_Radius"
type
  Handle_DrawDim_Radius* = handle[DrawDim_Radius]
  DrawDim_Radius* {.importcpp: "DrawDim_Radius", header: "DrawDim_Radius.hxx", bycopy.} = object of DrawDim_Dimension


proc constructDrawDim_Radius*(cylinder: TopoDS_Face): DrawDim_Radius {.constructor,
    importcpp: "DrawDim_Radius(@)", header: "DrawDim_Radius.hxx".}
proc Cylinder*(this: DrawDim_Radius): TopoDS_Face {.noSideEffect,
    importcpp: "Cylinder", header: "DrawDim_Radius.hxx".}
proc Cylinder*(this: var DrawDim_Radius; face: TopoDS_Face) {.importcpp: "Cylinder",
    header: "DrawDim_Radius.hxx".}
proc DrawOn*(this: DrawDim_Radius; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawDim_Radius.hxx".}
type
  DrawDim_Radiusbase_type* = DrawDim_Dimension

proc get_type_name*(): cstring {.importcpp: "DrawDim_Radius::get_type_name(@)",
                              header: "DrawDim_Radius.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawDim_Radius::get_type_descriptor(@)",
    header: "DrawDim_Radius.hxx".}
proc DynamicType*(this: DrawDim_Radius): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawDim_Radius.hxx".}