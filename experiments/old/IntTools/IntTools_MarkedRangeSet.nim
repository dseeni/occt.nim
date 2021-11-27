##  Created on: 2001-09-26
##  Created by: Michael KLOKOV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of IntTools_CArray1OfReal"
discard "forward decl of IntTools_Range"
type
  IntToolsMarkedRangeSet* {.importcpp: "IntTools_MarkedRangeSet",
                           header: "IntTools_MarkedRangeSet.hxx", bycopy.} = object ## !
                                                                               ## Empty
                                                                               ## constructor


proc constructIntToolsMarkedRangeSet*(): IntToolsMarkedRangeSet {.constructor,
    importcpp: "IntTools_MarkedRangeSet(@)", header: "IntTools_MarkedRangeSet.hxx".}
proc constructIntToolsMarkedRangeSet*(theFirstBoundary: cfloat;
                                     theLastBoundary: cfloat; theInitFlag: cint): IntToolsMarkedRangeSet {.
    constructor, importcpp: "IntTools_MarkedRangeSet(@)",
    header: "IntTools_MarkedRangeSet.hxx".}
proc constructIntToolsMarkedRangeSet*(theSortedArray: IntToolsCArray1OfReal;
                                     theInitFlag: cint): IntToolsMarkedRangeSet {.
    constructor, importcpp: "IntTools_MarkedRangeSet(@)",
    header: "IntTools_MarkedRangeSet.hxx".}
proc setBoundaries*(this: var IntToolsMarkedRangeSet; theFirstBoundary: cfloat;
                   theLastBoundary: cfloat; theInitFlag: cint) {.
    importcpp: "SetBoundaries", header: "IntTools_MarkedRangeSet.hxx".}
proc setRanges*(this: var IntToolsMarkedRangeSet;
               theSortedArray: IntToolsCArray1OfReal; theInitFlag: cint) {.
    importcpp: "SetRanges", header: "IntTools_MarkedRangeSet.hxx".}
proc insertRange*(this: var IntToolsMarkedRangeSet; theFirstBoundary: cfloat;
                 theLastBoundary: cfloat; theFlag: cint): bool {.
    importcpp: "InsertRange", header: "IntTools_MarkedRangeSet.hxx".}
proc insertRange*(this: var IntToolsMarkedRangeSet; theRange: IntToolsRange;
                 theFlag: cint): bool {.importcpp: "InsertRange",
                                     header: "IntTools_MarkedRangeSet.hxx".}
proc insertRange*(this: var IntToolsMarkedRangeSet; theFirstBoundary: cfloat;
                 theLastBoundary: cfloat; theFlag: cint; theIndex: cint): bool {.
    importcpp: "InsertRange", header: "IntTools_MarkedRangeSet.hxx".}
proc insertRange*(this: var IntToolsMarkedRangeSet; theRange: IntToolsRange;
                 theFlag: cint; theIndex: cint): bool {.importcpp: "InsertRange",
    header: "IntTools_MarkedRangeSet.hxx".}
proc setFlag*(this: var IntToolsMarkedRangeSet; theIndex: cint; theFlag: cint) {.
    importcpp: "SetFlag", header: "IntTools_MarkedRangeSet.hxx".}
proc flag*(this: IntToolsMarkedRangeSet; theIndex: cint): cint {.noSideEffect,
    importcpp: "Flag", header: "IntTools_MarkedRangeSet.hxx".}
proc getIndex*(this: IntToolsMarkedRangeSet; theValue: cfloat): cint {.noSideEffect,
    importcpp: "GetIndex", header: "IntTools_MarkedRangeSet.hxx".}
proc getIndices*(this: var IntToolsMarkedRangeSet; theValue: cfloat): TColStdSequenceOfInteger {.
    importcpp: "GetIndices", header: "IntTools_MarkedRangeSet.hxx".}
proc getIndex*(this: IntToolsMarkedRangeSet; theValue: cfloat; useLower: bool): cint {.
    noSideEffect, importcpp: "GetIndex", header: "IntTools_MarkedRangeSet.hxx".}
proc length*(this: IntToolsMarkedRangeSet): cint {.noSideEffect, importcpp: "Length",
    header: "IntTools_MarkedRangeSet.hxx".}
proc range*(this: IntToolsMarkedRangeSet; theIndex: cint): IntToolsRange {.
    noSideEffect, importcpp: "Range", header: "IntTools_MarkedRangeSet.hxx".}
























