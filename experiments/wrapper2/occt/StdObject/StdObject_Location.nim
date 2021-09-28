##  Copyright (c) 2015 OPEN CASCADE SAS
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

type
  StdObjectLocation* {.importcpp: "StdObject_Location",
                      header: "StdObject_Location.hxx", bycopy.} = object ## ! Gets persistent child objects


proc pChildren*(this: StdObjectLocation; theChildren: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdObject_Location.hxx".}
proc `import`*(this: StdObjectLocation): TopLocLocation {.noSideEffect,
    importcpp: "Import", header: "StdObject_Location.hxx".}
proc translate*(theLoc: TopLocLocation; theMap: var StdObjMgtTransientPersistentMap): StdObjectLocation {.
    importcpp: "StdObject_Location::Translate(@)",
    header: "StdObject_Location.hxx".}
## ! Read persistent data from a file.

proc `>>`*(theReadData: var StdObjMgtReadData; theLocation: var StdObjectLocation): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_Location.hxx".}
## ! Write persistent data to a file.

proc `<<`*(theWriteData: var StdObjMgtWriteData; theLocation: StdObjectLocation): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_Location.hxx".}

























