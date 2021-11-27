##  Created on: 1997-12-24
##  Created by: Xuan PHAM PHU
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_Interference"
type
  TopOpeBRepDS_Edge3dInterferenceTool* {.importcpp: "TopOpeBRepDS_Edge3dInterferenceTool", header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx",
                                        bycopy.} = object


proc `new`*(this: var TopOpeBRepDS_Edge3dInterferenceTool; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_Edge3dInterferenceTool::operator new",
    header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc `delete`*(this: var TopOpeBRepDS_Edge3dInterferenceTool; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_Edge3dInterferenceTool::operator delete",
    header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_Edge3dInterferenceTool; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_Edge3dInterferenceTool::operator new[]",
    header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_Edge3dInterferenceTool; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_Edge3dInterferenceTool::operator delete[]",
    header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc `new`*(this: var TopOpeBRepDS_Edge3dInterferenceTool; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "TopOpeBRepDS_Edge3dInterferenceTool::operator new", header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc `delete`*(this: var TopOpeBRepDS_Edge3dInterferenceTool; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_Edge3dInterferenceTool::operator delete",
    header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc constructTopOpeBRepDS_Edge3dInterferenceTool*(): TopOpeBRepDS_Edge3dInterferenceTool {.
    constructor, importcpp: "TopOpeBRepDS_Edge3dInterferenceTool(@)",
    header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc initPointVertex*(this: var TopOpeBRepDS_Edge3dInterferenceTool; isVertex: int;
                     vonOO: TopoDS_Shape) {.importcpp: "InitPointVertex",
    header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc init*(this: var TopOpeBRepDS_Edge3dInterferenceTool; eref: TopoDS_Shape;
          e: TopoDS_Shape; f: TopoDS_Shape; i: Handle[TopOpeBRepDS_Interference]) {.
    importcpp: "Init", header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc add*(this: var TopOpeBRepDS_Edge3dInterferenceTool; eref: TopoDS_Shape;
         e: TopoDS_Shape; f: TopoDS_Shape; i: Handle[TopOpeBRepDS_Interference]) {.
    importcpp: "Add", header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc transition*(this: TopOpeBRepDS_Edge3dInterferenceTool;
                i: Handle[TopOpeBRepDS_Interference]) {.noSideEffect,
    importcpp: "Transition", header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}