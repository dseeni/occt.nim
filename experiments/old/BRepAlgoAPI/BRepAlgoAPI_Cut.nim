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
  BRepAlgoAPI_Cut* {.importcpp: "BRepAlgoAPI_Cut", header: "BRepAlgoAPI_Cut.hxx",
                    bycopy.} = object of BRepAlgoAPI_BooleanOperation


proc `new`*(this: var BRepAlgoAPI_Cut; theSize: csize_t): pointer {.
    importcpp: "BRepAlgoAPI_Cut::operator new", header: "BRepAlgoAPI_Cut.hxx".}
proc `delete`*(this: var BRepAlgoAPI_Cut; theAddress: pointer) {.
    importcpp: "BRepAlgoAPI_Cut::operator delete", header: "BRepAlgoAPI_Cut.hxx".}
proc `new[]`*(this: var BRepAlgoAPI_Cut; theSize: csize_t): pointer {.
    importcpp: "BRepAlgoAPI_Cut::operator new[]", header: "BRepAlgoAPI_Cut.hxx".}
proc `delete[]`*(this: var BRepAlgoAPI_Cut; theAddress: pointer) {.
    importcpp: "BRepAlgoAPI_Cut::operator delete[]", header: "BRepAlgoAPI_Cut.hxx".}
proc `new`*(this: var BRepAlgoAPI_Cut; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepAlgoAPI_Cut::operator new", header: "BRepAlgoAPI_Cut.hxx".}
proc `delete`*(this: var BRepAlgoAPI_Cut; a2: pointer; a3: pointer) {.
    importcpp: "BRepAlgoAPI_Cut::operator delete", header: "BRepAlgoAPI_Cut.hxx".}
proc constructBRepAlgoAPI_Cut*(): BRepAlgoAPI_Cut {.constructor,
    importcpp: "BRepAlgoAPI_Cut(@)", header: "BRepAlgoAPI_Cut.hxx".}
proc destroyBRepAlgoAPI_Cut*(this: var BRepAlgoAPI_Cut) {.
    importcpp: "#.~BRepAlgoAPI_Cut()", header: "BRepAlgoAPI_Cut.hxx".}
proc constructBRepAlgoAPI_Cut*(pf: BOPAlgoPaveFiller): BRepAlgoAPI_Cut {.
    constructor, importcpp: "BRepAlgoAPI_Cut(@)", header: "BRepAlgoAPI_Cut.hxx".}
proc constructBRepAlgoAPI_Cut*(s1: TopoDS_Shape; s2: TopoDS_Shape): BRepAlgoAPI_Cut {.
    constructor, importcpp: "BRepAlgoAPI_Cut(@)", header: "BRepAlgoAPI_Cut.hxx".}
proc constructBRepAlgoAPI_Cut*(s1: TopoDS_Shape; s2: TopoDS_Shape;
                              aDSF: BOPAlgoPaveFiller;
                              bFWD: StandardBoolean = true): BRepAlgoAPI_Cut {.
    constructor, importcpp: "BRepAlgoAPI_Cut(@)", header: "BRepAlgoAPI_Cut.hxx".}