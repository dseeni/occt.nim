##  Created on: 1995-03-08
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
type
  BRepPrimAPI_MakeHalfSpace* {.importcpp: "BRepPrimAPI_MakeHalfSpace",
                              header: "BRepPrimAPI_MakeHalfSpace.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepPrimAPI_MakeHalfSpace; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeHalfSpace::operator new",
    header: "BRepPrimAPI_MakeHalfSpace.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakeHalfSpace; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeHalfSpace::operator delete",
    header: "BRepPrimAPI_MakeHalfSpace.hxx".}
proc `new[]`*(this: var BRepPrimAPI_MakeHalfSpace; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeHalfSpace::operator new[]",
    header: "BRepPrimAPI_MakeHalfSpace.hxx".}
proc `delete[]`*(this: var BRepPrimAPI_MakeHalfSpace; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeHalfSpace::operator delete[]",
    header: "BRepPrimAPI_MakeHalfSpace.hxx".}
proc `new`*(this: var BRepPrimAPI_MakeHalfSpace; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeHalfSpace::operator new",
    header: "BRepPrimAPI_MakeHalfSpace.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakeHalfSpace; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeHalfSpace::operator delete",
    header: "BRepPrimAPI_MakeHalfSpace.hxx".}
proc constructBRepPrimAPI_MakeHalfSpace*(face: TopoDS_Face; refPnt: Pnt): BRepPrimAPI_MakeHalfSpace {.
    constructor, importcpp: "BRepPrimAPI_MakeHalfSpace(@)",
    header: "BRepPrimAPI_MakeHalfSpace.hxx".}
proc constructBRepPrimAPI_MakeHalfSpace*(shell: TopoDS_Shell; refPnt: Pnt): BRepPrimAPI_MakeHalfSpace {.
    constructor, importcpp: "BRepPrimAPI_MakeHalfSpace(@)",
    header: "BRepPrimAPI_MakeHalfSpace.hxx".}
proc solid*(this: BRepPrimAPI_MakeHalfSpace): TopoDS_Solid {.noSideEffect,
    importcpp: "Solid", header: "BRepPrimAPI_MakeHalfSpace.hxx".}
converter `topoDS_Solid`*(this: BRepPrimAPI_MakeHalfSpace): TopoDS_Solid {.
    noSideEffect, importcpp: "BRepPrimAPI_MakeHalfSpace::operator TopoDS_Solid",
    header: "BRepPrimAPI_MakeHalfSpace.hxx".}