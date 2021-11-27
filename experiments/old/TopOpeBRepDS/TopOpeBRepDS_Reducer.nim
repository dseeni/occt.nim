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

discard "forward decl of TopOpeBRepDS_HDataStructure"
type
  TopOpeBRepDS_Reducer* {.importcpp: "TopOpeBRepDS_Reducer",
                         header: "TopOpeBRepDS_Reducer.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepDS_Reducer; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_Reducer::operator new",
    header: "TopOpeBRepDS_Reducer.hxx".}
proc `delete`*(this: var TopOpeBRepDS_Reducer; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_Reducer::operator delete",
    header: "TopOpeBRepDS_Reducer.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_Reducer; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_Reducer::operator new[]",
    header: "TopOpeBRepDS_Reducer.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_Reducer; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_Reducer::operator delete[]",
    header: "TopOpeBRepDS_Reducer.hxx".}
proc `new`*(this: var TopOpeBRepDS_Reducer; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepDS_Reducer::operator new",
    header: "TopOpeBRepDS_Reducer.hxx".}
proc `delete`*(this: var TopOpeBRepDS_Reducer; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_Reducer::operator delete",
    header: "TopOpeBRepDS_Reducer.hxx".}
proc constructTopOpeBRepDS_Reducer*(hds: Handle[TopOpeBRepDS_HDataStructure]): TopOpeBRepDS_Reducer {.
    constructor, importcpp: "TopOpeBRepDS_Reducer(@)",
    header: "TopOpeBRepDS_Reducer.hxx".}
proc processFaceInterferences*(this: var TopOpeBRepDS_Reducer;
                              m: TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State) {.
    importcpp: "ProcessFaceInterferences", header: "TopOpeBRepDS_Reducer.hxx".}
proc processEdgeInterferences*(this: var TopOpeBRepDS_Reducer) {.
    importcpp: "ProcessEdgeInterferences", header: "TopOpeBRepDS_Reducer.hxx".}