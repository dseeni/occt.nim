##  Created on: 1993-07-21
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Wedge"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_Face"
type
  BRepPrimAPI_MakeBox* {.importcpp: "BRepPrimAPI_MakeBox",
                        header: "BRepPrimAPI_MakeBox.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## constructor


proc newBRepPrimAPI_MakeBox*(): BRepPrimAPI_MakeBox {.cdecl, constructor,
    importcpp: "BRepPrimAPI_MakeBox(@)", dynlib: tkprim.}
proc newBRepPrimAPI_MakeBox*(dx: cfloat; dy: cfloat; dz: cfloat): BRepPrimAPI_MakeBox {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeBox(@)", dynlib: tkprim.}
proc newBRepPrimAPI_MakeBox*(p: Pnt; dx: cfloat; dy: cfloat; dz: cfloat): BRepPrimAPI_MakeBox {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeBox(@)", dynlib: tkprim.}
proc newBRepPrimAPI_MakeBox*(p1: Pnt; p2: Pnt): BRepPrimAPI_MakeBox {.cdecl,
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)", dynlib: tkprim.}
proc newBRepPrimAPI_MakeBox*(axes: Ax2; dx: cfloat; dy: cfloat; dz: cfloat): BRepPrimAPI_MakeBox {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeBox(@)", dynlib: tkprim.}
proc init*(this: var BRepPrimAPI_MakeBox; theDX: cfloat; theDY: cfloat; theDZ: cfloat) {.
    cdecl, importcpp: "Init", dynlib: tkprim.}
proc init*(this: var BRepPrimAPI_MakeBox; thePnt: Pnt; theDX: cfloat; theDY: cfloat;
          theDZ: cfloat) {.cdecl, importcpp: "Init", dynlib: tkprim.}
proc init*(this: var BRepPrimAPI_MakeBox; thePnt1: Pnt; thePnt2: Pnt) {.cdecl,
    importcpp: "Init", dynlib: tkprim.}
proc init*(this: var BRepPrimAPI_MakeBox; theAxes: Ax2; theDX: cfloat; theDY: cfloat;
          theDZ: cfloat) {.cdecl, importcpp: "Init", dynlib: tkprim.}
proc wedge*(this: var BRepPrimAPI_MakeBox): var BRepPrimWedge {.cdecl,
    importcpp: "Wedge", dynlib: tkprim.}
proc build*(this: var BRepPrimAPI_MakeBox) {.cdecl, importcpp: "Build", dynlib: tkprim.}
proc shell*(this: var BRepPrimAPI_MakeBox): TopoDS_Shell {.cdecl, importcpp: "Shell",
    dynlib: tkprim.}
converter `topoDS_Shell`*(this: var BRepPrimAPI_MakeBox): TopoDS_Shell {.cdecl,
    importcpp: "BRepPrimAPI_MakeBox::operator TopoDS_Shell", dynlib: tkprim.}
proc solid*(this: var BRepPrimAPI_MakeBox): TopoDS_Solid {.cdecl, importcpp: "Solid",
    dynlib: tkprim.}
converter `topoDS_Solid`*(this: var BRepPrimAPI_MakeBox): TopoDS_Solid {.cdecl,
    importcpp: "BRepPrimAPI_MakeBox::operator TopoDS_Solid", dynlib: tkprim.}
proc bottomFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.cdecl,
    importcpp: "BottomFace", dynlib: tkprim.}
proc backFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.cdecl,
    importcpp: "BackFace", dynlib: tkprim.}
proc frontFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.cdecl,
    importcpp: "FrontFace", dynlib: tkprim.}
proc leftFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.cdecl,
    importcpp: "LeftFace", dynlib: tkprim.}
proc rightFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.cdecl,
    importcpp: "RightFace", dynlib: tkprim.}
proc topFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.cdecl,
    importcpp: "TopFace", dynlib: tkprim.}