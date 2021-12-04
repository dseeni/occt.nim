##  Copyright (c) 2020 OPEN CASCADE SAS
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
  HandleSelectMgrAndOrFilter* = Handle[SelectMgrAndOrFilter]

## ! A framework to define an OR or AND selection filter.
## ! To use an AND selection filter call SetUseOrFilter with False parameter.
## ! By default the OR selection filter is used.

type
  SelectMgrAndOrFilter* {.importcpp: "SelectMgr_AndOrFilter",
                         header: "SelectMgr_AndOrFilter.hxx", bycopy.} = object of SelectMgrCompositionFilter ##
                                                                                                       ## !
                                                                                                       ## Constructs
                                                                                                       ## an
                                                                                                       ## empty
                                                                                                       ## selection
                                                                                                       ## filter.
    ## !< disabled objects.
    ## !  Selection isn't applied to these objects.
    ## !< selection filter type. SelectMgr_TypeFilter_OR by default.


proc newSelectMgrAndOrFilter*(theFilterType: SelectMgrFilterType): SelectMgrAndOrFilter {.
    cdecl, constructor, importcpp: "SelectMgr_AndOrFilter(@)", header: "SelectMgr_AndOrFilter.hxx".}
proc isOk*(this: SelectMgrAndOrFilter; theObj: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, cdecl, importcpp: "IsOk", header: "SelectMgr_AndOrFilter.hxx".}
proc setDisabledObjects*(this: var SelectMgrAndOrFilter;
                        theObjects: Handle[Graphic3dNMapOfTransient]) {.cdecl,
    importcpp: "SetDisabledObjects", header: "SelectMgr_AndOrFilter.hxx".}
proc filterType*(this: SelectMgrAndOrFilter): SelectMgrFilterType {.noSideEffect,
    cdecl, importcpp: "FilterType", header: "SelectMgr_AndOrFilter.hxx".}
proc setFilterType*(this: var SelectMgrAndOrFilter;
                   theFilterType: SelectMgrFilterType) {.cdecl,
    importcpp: "SetFilterType", header: "SelectMgr_AndOrFilter.hxx".}