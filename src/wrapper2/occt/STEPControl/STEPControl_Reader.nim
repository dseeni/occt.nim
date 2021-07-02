##  Created on: 1996-07-08
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of XSControl_WorkSession"
discard "forward decl of StepData_StepModel"
discard "forward decl of StepRepr_RepresentationContext"
type
  STEPControlReader* {.importcpp: "STEPControl_Reader",
                      header: "STEPControl_Reader.hxx", bycopy.} = object of XSControlReader ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## reader
                                                                                      ## object
                                                                                      ## with
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## STEP
                                                                                      ## model.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## units
                                                                                      ## for
                                                                                      ## length
                                                                                      ## ,
                                                                                      ## angle
                                                                                      ## and
                                                                                      ## solidangle
                                                                                      ## for
                                                                                      ## shape
                                                                                      ## representations


proc constructSTEPControlReader*(): STEPControlReader {.constructor,
    importcpp: "STEPControl_Reader(@)", header: "STEPControl_Reader.hxx".}
proc constructSTEPControlReader*(ws: Handle[XSControlWorkSession];
                                scratch: StandardBoolean = standardTrue): STEPControlReader {.
    constructor, importcpp: "STEPControl_Reader(@)",
    header: "STEPControl_Reader.hxx".}
proc stepModel*(this: STEPControlReader): Handle[StepDataStepModel] {.noSideEffect,
    importcpp: "StepModel", header: "STEPControl_Reader.hxx".}
proc transferRoot*(this: var STEPControlReader; num: StandardInteger = 1;
                  theProgress: MessageProgressRange = messageProgressRange()): StandardBoolean {.
    importcpp: "TransferRoot", header: "STEPControl_Reader.hxx".}
proc nbRootsForTransfer*(this: var STEPControlReader): StandardInteger {.
    importcpp: "NbRootsForTransfer", header: "STEPControl_Reader.hxx".}
proc fileUnits*(this: var STEPControlReader;
               theUnitLengthNames: var TColStdSequenceOfAsciiString;
               theUnitAngleNames: var TColStdSequenceOfAsciiString;
               theUnitSolidAngleNames: var TColStdSequenceOfAsciiString) {.
    importcpp: "FileUnits", header: "STEPControl_Reader.hxx".}

