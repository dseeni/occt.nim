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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ApplicationContext"
discard "forward decl of StepBasic_ApplicationContext"
type
  HandleC1C1* = Handle[StepBasicApplicationContext]
  StepBasicApplicationContext* {.importcpp: "StepBasic_ApplicationContext",
                                header: "StepBasic_ApplicationContext.hxx", bycopy.} = object of StandardTransient ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## ApplicationContext


proc constructStepBasicApplicationContext*(): StepBasicApplicationContext {.
    constructor, importcpp: "StepBasic_ApplicationContext(@)",
    header: "StepBasic_ApplicationContext.hxx".}
proc init*(this: var StepBasicApplicationContext;
          aApplication: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ApplicationContext.hxx".}
proc setApplication*(this: var StepBasicApplicationContext;
                    aApplication: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetApplication", header: "StepBasic_ApplicationContext.hxx".}
proc application*(this: StepBasicApplicationContext): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Application",
                              header: "StepBasic_ApplicationContext.hxx".}
type
  StepBasicApplicationContextbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ApplicationContext::get_type_name(@)",
                            header: "StepBasic_ApplicationContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ApplicationContext::get_type_descriptor(@)",
    header: "StepBasic_ApplicationContext.hxx".}
proc dynamicType*(this: StepBasicApplicationContext): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ApplicationContext.hxx".}