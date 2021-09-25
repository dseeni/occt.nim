##  Created on: 2007-08-17
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

## ! Extension of TDataStd_DataMapOfStringHArray1OfReal class
## ! to be manipulated by handle.

type
  TDataStdHDataMapOfStringHArray1OfReal* {.
      importcpp: "TDataStd_HDataMapOfStringHArray1OfReal",
      header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx", bycopy.} = object of StandardTransient

  TDataStdHDataMapOfStringHArray1OfRealbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TDataStd_HDataMapOfStringHArray1OfReal::get_type_name(@)", header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "TDataStd_HDataMapOfStringHArray1OfReal::get_type_descriptor(@)",
    header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx".}
proc dynamicType*(this: TDataStdHDataMapOfStringHArray1OfReal): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx".}
proc constructTDataStdHDataMapOfStringHArray1OfReal*(nbBuckets: int = 1): TDataStdHDataMapOfStringHArray1OfReal {.
    constructor, importcpp: "TDataStd_HDataMapOfStringHArray1OfReal(@)",
    header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx".}
proc constructTDataStdHDataMapOfStringHArray1OfReal*(
    theOther: TDataStdDataMapOfStringHArray1OfReal): TDataStdHDataMapOfStringHArray1OfReal {.
    constructor, importcpp: "TDataStd_HDataMapOfStringHArray1OfReal(@)",
    header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx".}
proc map*(this: TDataStdHDataMapOfStringHArray1OfReal): TDataStdDataMapOfStringHArray1OfReal {.
    noSideEffect, importcpp: "Map",
    header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx".}
proc changeMap*(this: var TDataStdHDataMapOfStringHArray1OfReal): var TDataStdDataMapOfStringHArray1OfReal {.
    importcpp: "ChangeMap", header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx".}
discard "forward decl of TDataStd_HDataMapOfStringHArray1OfReal"
type
  HandleTDataStdHDataMapOfStringHArray1OfReal* = Handle[
      TDataStdHDataMapOfStringHArray1OfReal]

