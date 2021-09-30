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
discard "forward decl of TopOpeBRepDS_Point"
type
  TopOpeBRepDS_PointData* {.importcpp: "TopOpeBRepDS_PointData",
                           header: "TopOpeBRepDS_PointData.hxx", bycopy.} = object of TopOpeBRepDS_GeometryData


proc `new`*(this: var TopOpeBRepDS_PointData; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_PointData::operator new",
    header: "TopOpeBRepDS_PointData.hxx".}
proc `delete`*(this: var TopOpeBRepDS_PointData; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_PointData::operator delete",
    header: "TopOpeBRepDS_PointData.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_PointData; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_PointData::operator new[]",
    header: "TopOpeBRepDS_PointData.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_PointData; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_PointData::operator delete[]",
    header: "TopOpeBRepDS_PointData.hxx".}
proc `new`*(this: var TopOpeBRepDS_PointData; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepDS_PointData::operator new",
    header: "TopOpeBRepDS_PointData.hxx".}
proc `delete`*(this: var TopOpeBRepDS_PointData; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_PointData::operator delete",
    header: "TopOpeBRepDS_PointData.hxx".}
proc constructTopOpeBRepDS_PointData*(): TopOpeBRepDS_PointData {.constructor,
    importcpp: "TopOpeBRepDS_PointData(@)", header: "TopOpeBRepDS_PointData.hxx".}
proc constructTopOpeBRepDS_PointData*(p: TopOpeBRepDS_Point): TopOpeBRepDS_PointData {.
    constructor, importcpp: "TopOpeBRepDS_PointData(@)",
    header: "TopOpeBRepDS_PointData.hxx".}
proc constructTopOpeBRepDS_PointData*(p: TopOpeBRepDS_Point; i1: int; i2: int): TopOpeBRepDS_PointData {.
    constructor, importcpp: "TopOpeBRepDS_PointData(@)",
    header: "TopOpeBRepDS_PointData.hxx".}
proc setShapes*(this: var TopOpeBRepDS_PointData; i1: int; i2: int) {.
    importcpp: "SetShapes", header: "TopOpeBRepDS_PointData.hxx".}
proc getShapes*(this: TopOpeBRepDS_PointData; i1: var int; i2: var int) {.noSideEffect,
    importcpp: "GetShapes", header: "TopOpeBRepDS_PointData.hxx".}