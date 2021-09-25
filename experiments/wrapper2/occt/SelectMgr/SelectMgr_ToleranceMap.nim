##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! An internal class for calculation of current largest tolerance value which will be applied for creation of selecting frustum by default.
## ! Each time the selection set is deactivated, maximum tolerance value will be recalculated.
## ! If a user enables custom precision using StdSelect_ViewerSelector3d::SetPixelTolerance, it will be applied to all sensitive entities without any checks.

type
  SelectMgrToleranceMap* {.importcpp: "SelectMgr_ToleranceMap",
                          header: "SelectMgr_ToleranceMap.hxx", bycopy.} = object ## !
                                                                             ## Sets
                                                                             ## tolerance
                                                                             ## values to
                                                                             ## -1.0


proc constructSelectMgrToleranceMap*(): SelectMgrToleranceMap {.constructor,
    importcpp: "SelectMgr_ToleranceMap(@)", header: "SelectMgr_ToleranceMap.hxx".}
proc destroySelectMgrToleranceMap*(this: var SelectMgrToleranceMap) {.
    importcpp: "#.~SelectMgr_ToleranceMap()", header: "SelectMgr_ToleranceMap.hxx".}
proc add*(this: var SelectMgrToleranceMap; theTolerance: int) {.importcpp: "Add",
    header: "SelectMgr_ToleranceMap.hxx".}
proc decrement*(this: var SelectMgrToleranceMap; theTolerance: int) {.
    importcpp: "Decrement", header: "SelectMgr_ToleranceMap.hxx".}
proc tolerance*(this: SelectMgrToleranceMap): int {.noSideEffect,
    importcpp: "Tolerance", header: "SelectMgr_ToleranceMap.hxx".}
proc setCustomTolerance*(this: var SelectMgrToleranceMap; theTolerance: int) {.
    importcpp: "SetCustomTolerance", header: "SelectMgr_ToleranceMap.hxx".}
proc resetDefaults*(this: var SelectMgrToleranceMap) {.importcpp: "ResetDefaults",
    header: "SelectMgr_ToleranceMap.hxx".}
proc customTolerance*(this: SelectMgrToleranceMap): int {.noSideEffect,
    importcpp: "CustomTolerance", header: "SelectMgr_ToleranceMap.hxx".}
proc isCustomTolSet*(this: SelectMgrToleranceMap): bool {.noSideEffect,
    importcpp: "IsCustomTolSet", header: "SelectMgr_ToleranceMap.hxx".}
