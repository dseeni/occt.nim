##  Created on: 2015-07-22
##  Created by: Irina KRYLOVA
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

discard "forward decl of StepBasic_PlaneAngleMeasureWithUnit"
discard "forward decl of StepRepr_ReprItemAndPlaneAngleMeasureWithUnit"
discard "forward decl of StepRepr_ReprItemAndPlaneAngleMeasureWithUnit"
type
  HandleStepReprReprItemAndPlaneAngleMeasureWithUnit* = Handle[
      StepReprReprItemAndPlaneAngleMeasureWithUnit]
  StepReprReprItemAndPlaneAngleMeasureWithUnit* {.
      importcpp: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit",
      header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx", bycopy.} = object of StepReprReprItemAndMeasureWithUnit


proc constructStepReprReprItemAndPlaneAngleMeasureWithUnit*(): StepReprReprItemAndPlaneAngleMeasureWithUnit {.
    constructor, importcpp: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit(@)",
    header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx".}
proc setPlaneAngleMeasureWithUnit*(this: var StepReprReprItemAndPlaneAngleMeasureWithUnit;
    aLMWU: Handle[StepBasicPlaneAngleMeasureWithUnit]) {.
    importcpp: "SetPlaneAngleMeasureWithUnit",
    header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx".}
proc getPlaneAngleMeasureWithUnit*(this: StepReprReprItemAndPlaneAngleMeasureWithUnit): Handle[
    StepBasicPlaneAngleMeasureWithUnit] {.noSideEffect,
    importcpp: "GetPlaneAngleMeasureWithUnit",
    header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx".}
type
  StepReprReprItemAndPlaneAngleMeasureWithUnitbaseType* = StepReprReprItemAndMeasureWithUnit

proc getTypeName*(): cstring {.importcpp: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit::get_type_name(@)", header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit::get_type_descriptor(@)",
    header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx".}
proc dynamicType*(this: StepReprReprItemAndPlaneAngleMeasureWithUnit): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx".}
