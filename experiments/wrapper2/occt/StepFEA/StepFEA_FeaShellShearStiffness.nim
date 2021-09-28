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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_SymmetricTensor22d"
discard "forward decl of StepFEA_FeaShellShearStiffness"
discard "forward decl of StepFEA_FeaShellShearStiffness"
type
  HandleC1C1* = Handle[StepFEA_FeaShellShearStiffness]

## ! Representation of STEP entity FeaShellShearStiffness

type
  StepFEA_FeaShellShearStiffness* {.importcpp: "StepFEA_FeaShellShearStiffness", header: "StepFEA_FeaShellShearStiffness.hxx",
                                   bycopy.} = object of StepFEA_FeaMaterialPropertyRepresentationItem ##
                                                                                                 ## !
                                                                                                 ## Empty
                                                                                                 ## constructor


proc constructStepFEA_FeaShellShearStiffness*(): StepFEA_FeaShellShearStiffness {.
    constructor, importcpp: "StepFEA_FeaShellShearStiffness(@)",
    header: "StepFEA_FeaShellShearStiffness.hxx".}
proc init*(this: var StepFEA_FeaShellShearStiffness;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aFeaConstants: StepFEA_SymmetricTensor22d) {.importcpp: "Init",
    header: "StepFEA_FeaShellShearStiffness.hxx".}
proc feaConstants*(this: StepFEA_FeaShellShearStiffness): StepFEA_SymmetricTensor22d {.
    noSideEffect, importcpp: "FeaConstants",
    header: "StepFEA_FeaShellShearStiffness.hxx".}
proc setFeaConstants*(this: var StepFEA_FeaShellShearStiffness;
                     feaConstants: StepFEA_SymmetricTensor22d) {.
    importcpp: "SetFeaConstants", header: "StepFEA_FeaShellShearStiffness.hxx".}
type
  StepFEA_FeaShellShearStiffnessbaseType* = StepFEA_FeaMaterialPropertyRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepFEA_FeaShellShearStiffness::get_type_name(@)",
                            header: "StepFEA_FeaShellShearStiffness.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_FeaShellShearStiffness::get_type_descriptor(@)",
    header: "StepFEA_FeaShellShearStiffness.hxx".}
proc dynamicType*(this: StepFEA_FeaShellShearStiffness): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_FeaShellShearStiffness.hxx".}

























