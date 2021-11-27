##  Created on: 1993-10-14
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

discard "forward decl of BOPAlgo_PaveFiller"
discard "forward decl of TopoDS_Shape"
type
  BRepAlgoAPI_Fuse* {.importcpp: "BRepAlgoAPI_Fuse",
                     header: "BRepAlgoAPI_Fuse.hxx", bycopy.} = object of BRepAlgoAPI_BooleanOperation


proc `new`*(this: var BRepAlgoAPI_Fuse; theSize: csize_t): pointer {.
    importcpp: "BRepAlgoAPI_Fuse::operator new", header: "BRepAlgoAPI_Fuse.hxx".}
proc `delete`*(this: var BRepAlgoAPI_Fuse; theAddress: pointer) {.
    importcpp: "BRepAlgoAPI_Fuse::operator delete", header: "BRepAlgoAPI_Fuse.hxx".}
proc `new[]`*(this: var BRepAlgoAPI_Fuse; theSize: csize_t): pointer {.
    importcpp: "BRepAlgoAPI_Fuse::operator new[]", header: "BRepAlgoAPI_Fuse.hxx".}
proc `delete[]`*(this: var BRepAlgoAPI_Fuse; theAddress: pointer) {.
    importcpp: "BRepAlgoAPI_Fuse::operator delete[]",
    header: "BRepAlgoAPI_Fuse.hxx".}
proc `new`*(this: var BRepAlgoAPI_Fuse; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepAlgoAPI_Fuse::operator new", header: "BRepAlgoAPI_Fuse.hxx".}
proc `delete`*(this: var BRepAlgoAPI_Fuse; a2: pointer; a3: pointer) {.
    importcpp: "BRepAlgoAPI_Fuse::operator delete", header: "BRepAlgoAPI_Fuse.hxx".}
proc constructBRepAlgoAPI_Fuse*(): BRepAlgoAPI_Fuse {.constructor,
    importcpp: "BRepAlgoAPI_Fuse(@)", header: "BRepAlgoAPI_Fuse.hxx".}
proc destroyBRepAlgoAPI_Fuse*(this: var BRepAlgoAPI_Fuse) {.
    importcpp: "#.~BRepAlgoAPI_Fuse()", header: "BRepAlgoAPI_Fuse.hxx".}
proc constructBRepAlgoAPI_Fuse*(pf: BOPAlgoPaveFiller): BRepAlgoAPI_Fuse {.
    constructor, importcpp: "BRepAlgoAPI_Fuse(@)", header: "BRepAlgoAPI_Fuse.hxx".}
proc constructBRepAlgoAPI_Fuse*(s1: TopoDS_Shape; s2: TopoDS_Shape): BRepAlgoAPI_Fuse {.
    constructor, importcpp: "BRepAlgoAPI_Fuse(@)", header: "BRepAlgoAPI_Fuse.hxx".}
proc constructBRepAlgoAPI_Fuse*(s1: TopoDS_Shape; s2: TopoDS_Shape;
                               aDSF: BOPAlgoPaveFiller): BRepAlgoAPI_Fuse {.
    constructor, importcpp: "BRepAlgoAPI_Fuse(@)", header: "BRepAlgoAPI_Fuse.hxx".}