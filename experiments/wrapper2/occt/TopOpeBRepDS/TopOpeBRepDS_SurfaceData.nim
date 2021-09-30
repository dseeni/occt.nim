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
discard "forward decl of TopOpeBRepDS_Surface"
type
  TopOpeBRepDS_SurfaceData* {.importcpp: "TopOpeBRepDS_SurfaceData",
                             header: "TopOpeBRepDS_SurfaceData.hxx", bycopy.} = object of TopOpeBRepDS_GeometryData


proc `new`*(this: var TopOpeBRepDS_SurfaceData; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_SurfaceData::operator new",
    header: "TopOpeBRepDS_SurfaceData.hxx".}
proc `delete`*(this: var TopOpeBRepDS_SurfaceData; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_SurfaceData::operator delete",
    header: "TopOpeBRepDS_SurfaceData.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_SurfaceData; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_SurfaceData::operator new[]",
    header: "TopOpeBRepDS_SurfaceData.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_SurfaceData; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_SurfaceData::operator delete[]",
    header: "TopOpeBRepDS_SurfaceData.hxx".}
proc `new`*(this: var TopOpeBRepDS_SurfaceData; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepDS_SurfaceData::operator new",
    header: "TopOpeBRepDS_SurfaceData.hxx".}
proc `delete`*(this: var TopOpeBRepDS_SurfaceData; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_SurfaceData::operator delete",
    header: "TopOpeBRepDS_SurfaceData.hxx".}
proc constructTopOpeBRepDS_SurfaceData*(): TopOpeBRepDS_SurfaceData {.constructor,
    importcpp: "TopOpeBRepDS_SurfaceData(@)",
    header: "TopOpeBRepDS_SurfaceData.hxx".}
proc constructTopOpeBRepDS_SurfaceData*(s: TopOpeBRepDS_Surface): TopOpeBRepDS_SurfaceData {.
    constructor, importcpp: "TopOpeBRepDS_SurfaceData(@)",
    header: "TopOpeBRepDS_SurfaceData.hxx".}