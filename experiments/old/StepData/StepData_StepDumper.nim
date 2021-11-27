##  Created on: 1994-03-14
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of StepData_StepModel"
discard "forward decl of Interface_InterfaceMismatch"
discard "forward decl of StepData_Protocol"
discard "forward decl of StepData_StepWriter"
type
  StepDataStepDumper* {.importcpp: "StepData_StepDumper",
                       header: "StepData_StepDumper.hxx", bycopy.} = object


proc `new`*(this: var StepDataStepDumper; theSize: csize_t): pointer {.
    importcpp: "StepData_StepDumper::operator new",
    header: "StepData_StepDumper.hxx".}
proc `delete`*(this: var StepDataStepDumper; theAddress: pointer) {.
    importcpp: "StepData_StepDumper::operator delete",
    header: "StepData_StepDumper.hxx".}
proc `new[]`*(this: var StepDataStepDumper; theSize: csize_t): pointer {.
    importcpp: "StepData_StepDumper::operator new[]",
    header: "StepData_StepDumper.hxx".}
proc `delete[]`*(this: var StepDataStepDumper; theAddress: pointer) {.
    importcpp: "StepData_StepDumper::operator delete[]",
    header: "StepData_StepDumper.hxx".}
proc `new`*(this: var StepDataStepDumper; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepData_StepDumper::operator new",
    header: "StepData_StepDumper.hxx".}
proc `delete`*(this: var StepDataStepDumper; a2: pointer; a3: pointer) {.
    importcpp: "StepData_StepDumper::operator delete",
    header: "StepData_StepDumper.hxx".}
proc constructStepDataStepDumper*(amodel: Handle[StepDataStepModel];
                                 protocol: Handle[StepDataProtocol]; mode: int = 0): StepDataStepDumper {.
    constructor, importcpp: "StepData_StepDumper(@)",
    header: "StepData_StepDumper.hxx".}
proc stepWriter*(this: var StepDataStepDumper): var StepDataStepWriter {.
    importcpp: "StepWriter", header: "StepData_StepDumper.hxx".}
proc dump*(this: var StepDataStepDumper; s: var StandardOStream;
          ent: Handle[StandardTransient]; level: int): StandardBoolean {.
    importcpp: "Dump", header: "StepData_StepDumper.hxx".}
proc dump*(this: var StepDataStepDumper; s: var StandardOStream; num: int; level: int): StandardBoolean {.
    importcpp: "Dump", header: "StepData_StepDumper.hxx".}