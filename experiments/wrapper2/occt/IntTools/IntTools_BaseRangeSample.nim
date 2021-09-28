##  Created on: 2005-10-05
##  Created by: Mikhail KLOKOV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

## ! base class for range index management

type
  IntToolsBaseRangeSample* {.importcpp: "IntTools_BaseRangeSample",
                            header: "IntTools_BaseRangeSample.hxx", bycopy.} = object


proc constructIntToolsBaseRangeSample*(): IntToolsBaseRangeSample {.constructor,
    importcpp: "IntTools_BaseRangeSample(@)",
    header: "IntTools_BaseRangeSample.hxx".}
proc constructIntToolsBaseRangeSample*(theDepth: cint): IntToolsBaseRangeSample {.
    constructor, importcpp: "IntTools_BaseRangeSample(@)",
    header: "IntTools_BaseRangeSample.hxx".}
proc setDepth*(this: var IntToolsBaseRangeSample; theDepth: cint) {.
    importcpp: "SetDepth", header: "IntTools_BaseRangeSample.hxx".}
proc getDepth*(this: IntToolsBaseRangeSample): cint {.noSideEffect,
    importcpp: "GetDepth", header: "IntTools_BaseRangeSample.hxx".}

























