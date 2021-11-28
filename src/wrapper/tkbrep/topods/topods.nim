##  Created on: 1990-12-11
##  Created by: Remi Lequette
##  Copyright (c) 1990-1999 Matra Datavision
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

discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_Compound"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_HShape"
discard "forward decl of TopoDS_TShape"
discard "forward decl of TopoDS_TVertex"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_TEdge"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_TWire"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_TFace"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_TShell"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_TSolid"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_TCompSolid"
discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_TCompound"
discard "forward decl of TopoDS_Compound"
discard "forward decl of TopoDS_Builder"
discard "forward decl of TopoDS_Iterator"
type
  TopoDS* {.importcpp: "TopoDS", header: "TopoDS.hxx", bycopy.} = object ## ! Basic tool to access the data structure.
                                                                 ## ! Casts shape S to the more specialized return type, Vertex.
                                                                 ## ! Exceptions
                                                                 ## !
                                                                 ## Standard_TypeMismatch if S cannot be cast to this return type.


proc vertex*(s: TopoDS_Shape): TopoDS_Vertex {.cdecl, importcpp: "TopoDS::Vertex(@)",
    dynlib: tkbrep.}
proc vertex*(a1: var TopoDS_Shape): var TopoDS_Vertex {.cdecl,
    importcpp: "TopoDS::Vertex(@)", dynlib: tkbrep.}
proc edge*(s: TopoDS_Shape): TopoDS_Edge {.cdecl, importcpp: "TopoDS::Edge(@)",
                                       dynlib: tkbrep.}
proc edge*(a1: var TopoDS_Shape): var TopoDS_Edge {.cdecl,
    importcpp: "TopoDS::Edge(@)", dynlib: tkbrep.}
proc wire*(s: TopoDS_Shape): TopoDS_Wire {.cdecl, importcpp: "TopoDS::Wire(@)",
                                       dynlib: tkbrep.}
proc wire*(a1: var TopoDS_Shape): var TopoDS_Wire {.cdecl,
    importcpp: "TopoDS::Wire(@)", dynlib: tkbrep.}
proc face*(s: TopoDS_Shape): TopoDS_Face {.cdecl, importcpp: "TopoDS::Face(@)",
                                       dynlib: tkbrep.}
proc face*(a1: var TopoDS_Shape): var TopoDS_Face {.cdecl,
    importcpp: "TopoDS::Face(@)", dynlib: tkbrep.}
proc shell*(s: TopoDS_Shape): TopoDS_Shell {.cdecl, importcpp: "TopoDS::Shell(@)",
    dynlib: tkbrep.}
proc shell*(a1: var TopoDS_Shape): var TopoDS_Shell {.cdecl,
    importcpp: "TopoDS::Shell(@)", dynlib: tkbrep.}
proc solid*(s: TopoDS_Shape): TopoDS_Solid {.cdecl, importcpp: "TopoDS::Solid(@)",
    dynlib: tkbrep.}
proc solid*(a1: var TopoDS_Shape): var TopoDS_Solid {.cdecl,
    importcpp: "TopoDS::Solid(@)", dynlib: tkbrep.}
proc compSolid*(s: TopoDS_Shape): TopoDS_CompSolid {.cdecl,
    importcpp: "TopoDS::CompSolid(@)", dynlib: tkbrep.}
proc compSolid*(a1: var TopoDS_Shape): var TopoDS_CompSolid {.cdecl,
    importcpp: "TopoDS::CompSolid(@)", dynlib: tkbrep.}
proc compound*(s: TopoDS_Shape): TopoDS_Compound {.cdecl,
    importcpp: "TopoDS::Compound(@)", dynlib: tkbrep.}
proc compound*(a1: var TopoDS_Shape): var TopoDS_Compound {.cdecl,
    importcpp: "TopoDS::Compound(@)", dynlib: tkbrep.}