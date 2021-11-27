##  Created on: 1993-06-23
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopOpeBRepDS_DataStructure"
type
  TopOpeBRepDS_ShapeData* {.importcpp: "TopOpeBRepDS_ShapeData",
                           header: "TopOpeBRepDS_ShapeData.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepDS_ShapeData; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_ShapeData::operator new",
    header: "TopOpeBRepDS_ShapeData.hxx".}
proc `delete`*(this: var TopOpeBRepDS_ShapeData; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_ShapeData::operator delete",
    header: "TopOpeBRepDS_ShapeData.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_ShapeData; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_ShapeData::operator new[]",
    header: "TopOpeBRepDS_ShapeData.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_ShapeData; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_ShapeData::operator delete[]",
    header: "TopOpeBRepDS_ShapeData.hxx".}
proc `new`*(this: var TopOpeBRepDS_ShapeData; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepDS_ShapeData::operator new",
    header: "TopOpeBRepDS_ShapeData.hxx".}
proc `delete`*(this: var TopOpeBRepDS_ShapeData; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_ShapeData::operator delete",
    header: "TopOpeBRepDS_ShapeData.hxx".}
proc constructTopOpeBRepDS_ShapeData*(): TopOpeBRepDS_ShapeData {.constructor,
    importcpp: "TopOpeBRepDS_ShapeData(@)", header: "TopOpeBRepDS_ShapeData.hxx".}
proc interferences*(this: TopOpeBRepDS_ShapeData): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "Interferences", header: "TopOpeBRepDS_ShapeData.hxx".}
proc changeInterferences*(this: var TopOpeBRepDS_ShapeData): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeInterferences", header: "TopOpeBRepDS_ShapeData.hxx".}
proc keep*(this: TopOpeBRepDS_ShapeData): StandardBoolean {.noSideEffect,
    importcpp: "Keep", header: "TopOpeBRepDS_ShapeData.hxx".}
proc changeKeep*(this: var TopOpeBRepDS_ShapeData; b: StandardBoolean) {.
    importcpp: "ChangeKeep", header: "TopOpeBRepDS_ShapeData.hxx".}