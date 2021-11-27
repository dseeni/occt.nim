##  Created on: 1993-01-21
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

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
type
  TopoDS_Iterator* {.importcpp: "TopoDS_Iterator", header: "TopoDS_Iterator.hxx",
                    bycopy.} = object


proc `new`*(this: var TopoDS_Iterator; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Iterator::operator new", header: "TopoDS_Iterator.hxx".}
proc `delete`*(this: var TopoDS_Iterator; theAddress: pointer) {.
    importcpp: "TopoDS_Iterator::operator delete", header: "TopoDS_Iterator.hxx".}
proc `new[]`*(this: var TopoDS_Iterator; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Iterator::operator new[]", header: "TopoDS_Iterator.hxx".}
proc `delete[]`*(this: var TopoDS_Iterator; theAddress: pointer) {.
    importcpp: "TopoDS_Iterator::operator delete[]", header: "TopoDS_Iterator.hxx".}
proc `new`*(this: var TopoDS_Iterator; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Iterator::operator new", header: "TopoDS_Iterator.hxx".}
proc `delete`*(this: var TopoDS_Iterator; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Iterator::operator delete", header: "TopoDS_Iterator.hxx".}
proc constructTopoDS_Iterator*(): TopoDS_Iterator {.constructor,
    importcpp: "TopoDS_Iterator(@)", header: "TopoDS_Iterator.hxx".}
proc constructTopoDS_Iterator*(s: TopoDS_Shape; cumOri: StandardBoolean = true;
                              cumLoc: StandardBoolean = true): TopoDS_Iterator {.
    constructor, importcpp: "TopoDS_Iterator(@)", header: "TopoDS_Iterator.hxx".}
proc initialize*(this: var TopoDS_Iterator; s: TopoDS_Shape;
                cumOri: StandardBoolean = true; cumLoc: StandardBoolean = true) {.
    importcpp: "Initialize", header: "TopoDS_Iterator.hxx".}
proc more*(this: TopoDS_Iterator): StandardBoolean {.noSideEffect, importcpp: "More",
    header: "TopoDS_Iterator.hxx".}
proc next*(this: var TopoDS_Iterator) {.importcpp: "Next",
                                    header: "TopoDS_Iterator.hxx".}
proc value*(this: TopoDS_Iterator): TopoDS_Shape {.noSideEffect, importcpp: "Value",
    header: "TopoDS_Iterator.hxx".}