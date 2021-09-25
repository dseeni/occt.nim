##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion* {.importcpp: "RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion", header: "RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion.hxx",
      bycopy.} = object         ## ! Empty constructor


proc constructRWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion*(): RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion {.
    constructor, importcpp: "RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion(@)",
    header: "RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion.hxx".}
proc readStep*(this: RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck]; ent: Handle[
    StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion]) {.noSideEffect,
    importcpp: "ReadStep",
    header: "RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion.hxx".}
proc writeStep*(this: RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion;
               sw: var StepDataStepWriter; ent: Handle[
    StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion]) {.noSideEffect,
    importcpp: "WriteStep",
    header: "RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion.hxx".}
proc share*(this: RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion; ent: Handle[
    StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion.hxx".}
