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

## ! Extension of TDataStd_DataMapOfStringByte class
## ! to be manipulated by handle.

type
  TDataStdHDataMapOfStringByte* {.importcpp: "TDataStd_HDataMapOfStringByte",
                                 header: "TDataStd_HDataMapOfStringByte.hxx",
                                 bycopy.} = object of StandardTransient

  TDataStdHDataMapOfStringBytebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TDataStd_HDataMapOfStringByte::get_type_name(@)",
                            header: "TDataStd_HDataMapOfStringByte.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_HDataMapOfStringByte::get_type_descriptor(@)",
    header: "TDataStd_HDataMapOfStringByte.hxx".}
proc dynamicType*(this: TDataStdHDataMapOfStringByte): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TDataStd_HDataMapOfStringByte.hxx".}
proc constructTDataStdHDataMapOfStringByte*(nbBuckets: cint = 1): TDataStdHDataMapOfStringByte {.
    constructor, importcpp: "TDataStd_HDataMapOfStringByte(@)",
    header: "TDataStd_HDataMapOfStringByte.hxx".}
proc constructTDataStdHDataMapOfStringByte*(theOther: TDataStdDataMapOfStringByte): TDataStdHDataMapOfStringByte {.
    constructor, importcpp: "TDataStd_HDataMapOfStringByte(@)",
    header: "TDataStd_HDataMapOfStringByte.hxx".}
proc map*(this: TDataStdHDataMapOfStringByte): TDataStdDataMapOfStringByte {.
    noSideEffect, importcpp: "Map", header: "TDataStd_HDataMapOfStringByte.hxx".}
proc changeMap*(this: var TDataStdHDataMapOfStringByte): var TDataStdDataMapOfStringByte {.
    importcpp: "ChangeMap", header: "TDataStd_HDataMapOfStringByte.hxx".}
discard "forward decl of TDataStd_HDataMapOfStringByte"
type
  HandleC1C1* = Handle[TDataStdHDataMapOfStringByte]


























