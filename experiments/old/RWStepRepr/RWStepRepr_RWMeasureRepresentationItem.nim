##  Created on: 1999-09-08
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepRepr_MeasureRepresentationItem"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWMeasureRepresentationItem* {.
      importcpp: "RWStepRepr_RWMeasureRepresentationItem",
      header: "RWStepRepr_RWMeasureRepresentationItem.hxx", bycopy.} = object


proc constructRWStepReprRWMeasureRepresentationItem*(): RWStepReprRWMeasureRepresentationItem {.
    constructor, importcpp: "RWStepRepr_RWMeasureRepresentationItem(@)",
    header: "RWStepRepr_RWMeasureRepresentationItem.hxx".}
proc readStep*(this: RWStepReprRWMeasureRepresentationItem;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprMeasureRepresentationItem]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWMeasureRepresentationItem.hxx".}
proc writeStep*(this: RWStepReprRWMeasureRepresentationItem;
               sw: var StepDataStepWriter;
               ent: Handle[StepReprMeasureRepresentationItem]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWMeasureRepresentationItem.hxx".}
proc share*(this: RWStepReprRWMeasureRepresentationItem;
           ent: Handle[StepReprMeasureRepresentationItem];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWMeasureRepresentationItem.hxx".}
























