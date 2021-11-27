##  Created on: 1994-04-18
##  Created by: Modelistation
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of gp_Pnt2d"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Text2D"
discard "forward decl of Draw_Text2D"
type
  HandleC1C1* = Handle[DrawText2D]
  DrawText2D* {.importcpp: "Draw_Text2D", header: "Draw_Text2D.hxx", bycopy.} = object of DrawDrawable2D


proc constructDrawText2D*(p: Pnt2d; t: StandardCString; col: DrawColor): DrawText2D {.
    constructor, importcpp: "Draw_Text2D(@)", header: "Draw_Text2D.hxx".}
proc constructDrawText2D*(p: Pnt2d; t: StandardCString; col: DrawColor; moveX: cint;
                         moveY: cint): DrawText2D {.constructor,
    importcpp: "Draw_Text2D(@)", header: "Draw_Text2D.hxx".}
proc setPnt2d*(this: var DrawText2D; p: Pnt2d) {.importcpp: "SetPnt2d",
    header: "Draw_Text2D.hxx".}
proc drawOn*(this: DrawText2D; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Text2D.hxx".}
type
  DrawText2DbaseType* = DrawDrawable2D

proc getTypeName*(): cstring {.importcpp: "Draw_Text2D::get_type_name(@)",
                            header: "Draw_Text2D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Text2D::get_type_descriptor(@)", header: "Draw_Text2D.hxx".}
proc dynamicType*(this: DrawText2D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Text2D.hxx".}
























