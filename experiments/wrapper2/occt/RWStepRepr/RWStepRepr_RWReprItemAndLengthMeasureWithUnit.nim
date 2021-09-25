##  Created on: 2003-08-21
##  Created by: Sergey KUUL
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepRepr_ReprItemAndLengthMeasureWithUnit"
discard "forward decl of StepData_StepWriter"
type
  RWStepReprRWReprItemAndLengthMeasureWithUnit* {.
      importcpp: "RWStepRepr_RWReprItemAndLengthMeasureWithUnit",
      header: "RWStepRepr_RWReprItemAndLengthMeasureWithUnit.hxx", bycopy.} = object


proc constructRWStepReprRWReprItemAndLengthMeasureWithUnit*(): RWStepReprRWReprItemAndLengthMeasureWithUnit {.
    constructor, importcpp: "RWStepRepr_RWReprItemAndLengthMeasureWithUnit(@)",
    header: "RWStepRepr_RWReprItemAndLengthMeasureWithUnit.hxx".}
proc readStep*(this: RWStepReprRWReprItemAndLengthMeasureWithUnit;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprReprItemAndLengthMeasureWithUnit]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepRepr_RWReprItemAndLengthMeasureWithUnit.hxx".}
proc writeStep*(this: RWStepReprRWReprItemAndLengthMeasureWithUnit;
               sw: var StepDataStepWriter;
               ent: Handle[StepReprReprItemAndLengthMeasureWithUnit]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepRepr_RWReprItemAndLengthMeasureWithUnit.hxx".}
