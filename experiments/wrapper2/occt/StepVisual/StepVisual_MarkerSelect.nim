##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
discard "forward decl of StepVisual_MarkerMember"
type
  StepVisualMarkerSelect* {.importcpp: "StepVisual_MarkerSelect",
                           header: "StepVisual_MarkerSelect.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## MarkerSelect
                                                                                                   ## SelectType


proc constructStepVisualMarkerSelect*(): StepVisualMarkerSelect {.constructor,
    importcpp: "StepVisual_MarkerSelect(@)", header: "StepVisual_MarkerSelect.hxx".}
proc caseNum*(this: StepVisualMarkerSelect; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "CaseNum", header: "StepVisual_MarkerSelect.hxx".}
proc newMember*(this: StepVisualMarkerSelect): Handle[StepDataSelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepVisual_MarkerSelect.hxx".}
proc caseMem*(this: StepVisualMarkerSelect; sm: Handle[StepDataSelectMember]): cint {.
    noSideEffect, importcpp: "CaseMem", header: "StepVisual_MarkerSelect.hxx".}
proc markerMember*(this: StepVisualMarkerSelect): Handle[StepVisualMarkerMember] {.
    noSideEffect, importcpp: "MarkerMember", header: "StepVisual_MarkerSelect.hxx".}

























