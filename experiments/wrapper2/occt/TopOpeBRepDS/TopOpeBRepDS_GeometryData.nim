##  Created on: 1994-05-26
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of TopOpeBRepDS_Interference"
type
  TopOpeBRepDS_GeometryData* {.importcpp: "TopOpeBRepDS_GeometryData",
                              header: "TopOpeBRepDS_GeometryData.hxx", bycopy.} = object


proc constructTopOpeBRepDS_GeometryData*(): TopOpeBRepDS_GeometryData {.
    constructor, importcpp: "TopOpeBRepDS_GeometryData(@)",
    header: "TopOpeBRepDS_GeometryData.hxx".}
proc constructTopOpeBRepDS_GeometryData*(other: TopOpeBRepDS_GeometryData): TopOpeBRepDS_GeometryData {.
    constructor, importcpp: "TopOpeBRepDS_GeometryData(@)",
    header: "TopOpeBRepDS_GeometryData.hxx".}
proc assign*(this: var TopOpeBRepDS_GeometryData; other: TopOpeBRepDS_GeometryData) {.
    importcpp: "Assign", header: "TopOpeBRepDS_GeometryData.hxx".}
proc interferences*(this: TopOpeBRepDS_GeometryData): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "Interferences",
    header: "TopOpeBRepDS_GeometryData.hxx".}
proc changeInterferences*(this: var TopOpeBRepDS_GeometryData): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeInterferences", header: "TopOpeBRepDS_GeometryData.hxx".}
proc addInterference*(this: var TopOpeBRepDS_GeometryData;
                     i: Handle[TopOpeBRepDS_Interference]) {.
    importcpp: "AddInterference", header: "TopOpeBRepDS_GeometryData.hxx".}

























