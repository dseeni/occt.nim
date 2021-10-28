##  Created on: 1993-06-23
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRep_Builder"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  BRepPrimFaceBuilder* {.importcpp: "BRepPrim_FaceBuilder",
                        header: "BRepPrim_FaceBuilder.hxx", bycopy.} = object


proc newBRepPrimFaceBuilder*(): BRepPrimFaceBuilder {.cdecl, constructor,
    importcpp: "BRepPrim_FaceBuilder(@)", dynlib: tkprim.}
proc newBRepPrimFaceBuilder*(b: BRepBuilder; s: Handle[GeomSurface]): BRepPrimFaceBuilder {.
    cdecl, constructor, importcpp: "BRepPrim_FaceBuilder(@)", dynlib: tkprim.}
proc newBRepPrimFaceBuilder*(b: BRepBuilder; s: Handle[GeomSurface]; uMin: cfloat;
                            uMax: cfloat; vMin: cfloat; vMax: cfloat): BRepPrimFaceBuilder {.
    cdecl, constructor, importcpp: "BRepPrim_FaceBuilder(@)", dynlib: tkprim.}
proc init*(this: var BRepPrimFaceBuilder; b: BRepBuilder; s: Handle[GeomSurface]) {.
    cdecl, importcpp: "Init", dynlib: tkprim.}
proc init*(this: var BRepPrimFaceBuilder; b: BRepBuilder; s: Handle[GeomSurface];
          uMin: cfloat; uMax: cfloat; vMin: cfloat; vMax: cfloat) {.cdecl,
    importcpp: "Init", dynlib: tkprim.}
proc face*(this: BRepPrimFaceBuilder): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face", dynlib: tkprim.}
converter `topoDS_Face`*(this: var BRepPrimFaceBuilder): TopoDS_Face {.cdecl,
    importcpp: "BRepPrim_FaceBuilder::operator TopoDS_Face", dynlib: tkprim.}
proc edge*(this: BRepPrimFaceBuilder; i: cint): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edge", dynlib: tkprim.}
proc vertex*(this: BRepPrimFaceBuilder; i: cint): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex", dynlib: tkprim.}