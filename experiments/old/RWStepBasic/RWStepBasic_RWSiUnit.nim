##  Created on: 1995-12-04
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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepBasic_SiUnit"
discard "forward decl of StepData_StepWriter"
discard "forward decl of TCollection_AsciiString"
type
  RWStepBasicRWSiUnit* {.importcpp: "RWStepBasic_RWSiUnit",
                        header: "RWStepBasic_RWSiUnit.hxx", bycopy.} = object


proc constructRWStepBasicRWSiUnit*(): RWStepBasicRWSiUnit {.constructor,
    importcpp: "RWStepBasic_RWSiUnit(@)", header: "RWStepBasic_RWSiUnit.hxx".}
proc readStep*(this: RWStepBasicRWSiUnit; data: Handle[StepDataStepReaderData];
              num: cint; ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicSiUnit]) {.noSideEffect, importcpp: "ReadStep",
    header: "RWStepBasic_RWSiUnit.hxx".}
proc writeStep*(this: RWStepBasicRWSiUnit; sw: var StepDataStepWriter;
               ent: Handle[StepBasicSiUnit]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWSiUnit.hxx".}
proc decodePrefix*(this: RWStepBasicRWSiUnit; aPrefix: var StepBasicSiPrefix;
                  text: StandardCString): bool {.noSideEffect,
    importcpp: "DecodePrefix", header: "RWStepBasic_RWSiUnit.hxx".}
proc decodeName*(this: RWStepBasicRWSiUnit; aName: var StepBasicSiUnitName;
                text: StandardCString): bool {.noSideEffect,
    importcpp: "DecodeName", header: "RWStepBasic_RWSiUnit.hxx".}
proc encodePrefix*(this: RWStepBasicRWSiUnit; aPrefix: StepBasicSiPrefix): TCollectionAsciiString {.
    noSideEffect, importcpp: "EncodePrefix", header: "RWStepBasic_RWSiUnit.hxx".}
proc encodeName*(this: RWStepBasicRWSiUnit; aName: StepBasicSiUnitName): TCollectionAsciiString {.
    noSideEffect, importcpp: "EncodeName", header: "RWStepBasic_RWSiUnit.hxx".}
























