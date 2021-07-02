##  Created on: 1996-02-15
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

discard "forward decl of TCollection_HAsciiString"
type
  InterfaceSTAT* {.importcpp: "Interface_STAT", header: "Interface_STAT.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## a
                                                                                        ## STAT
                                                                                        ## form.
                                                                                        ## At
                                                                                        ## start,
                                                                                        ## one
                                                                                        ## default
                                                                                        ## phase
                                                                                        ## is
                                                                                        ## defined,
                                                                                        ##
                                                                                        ## !
                                                                                        ## with
                                                                                        ## one
                                                                                        ## default
                                                                                        ## step.
                                                                                        ## Then,
                                                                                        ## it
                                                                                        ## suffises
                                                                                        ## to
                                                                                        ## start
                                                                                        ## with
                                                                                        ## a
                                                                                        ##
                                                                                        ## !
                                                                                        ## count
                                                                                        ## of
                                                                                        ## items
                                                                                        ## (and
                                                                                        ## cycles
                                                                                        ## if
                                                                                        ## several)
                                                                                        ## then
                                                                                        ## record
                                                                                        ## items,
                                                                                        ##
                                                                                        ## !
                                                                                        ## to
                                                                                        ## have
                                                                                        ## a
                                                                                        ## queryable
                                                                                        ## report.


proc constructInterfaceSTAT*(title: StandardCString = ""): InterfaceSTAT {.
    constructor, importcpp: "Interface_STAT(@)", header: "Interface_STAT.hxx".}
proc constructInterfaceSTAT*(other: InterfaceSTAT): InterfaceSTAT {.constructor,
    importcpp: "Interface_STAT(@)", header: "Interface_STAT.hxx".}
proc internals*(this: InterfaceSTAT; tit: var Handle[TCollectionHAsciiString];
               total: var StandardReal;
               phn: var Handle[TColStdHSequenceOfAsciiString];
               phw: var Handle[TColStdHSequenceOfReal];
               phdeb: var Handle[TColStdHSequenceOfInteger];
               phfin: var Handle[TColStdHSequenceOfInteger];
               stw: var Handle[TColStdHSequenceOfReal]) {.noSideEffect,
    importcpp: "Internals", header: "Interface_STAT.hxx".}
proc addPhase*(this: var InterfaceSTAT; weight: StandardReal;
              name: StandardCString = "") {.importcpp: "AddPhase",
                                        header: "Interface_STAT.hxx".}
proc addStep*(this: var InterfaceSTAT; weight: StandardReal = 1) {.importcpp: "AddStep",
    header: "Interface_STAT.hxx".}
proc description*(this: InterfaceSTAT; nbphases: var StandardInteger;
                 total: var StandardReal; title: var StandardCString) {.noSideEffect,
    importcpp: "Description", header: "Interface_STAT.hxx".}
proc phase*(this: InterfaceSTAT; num: StandardInteger; n0step: var StandardInteger;
           nbstep: var StandardInteger; weight: var StandardReal;
           name: var StandardCString) {.noSideEffect, importcpp: "Phase",
                                     header: "Interface_STAT.hxx".}
proc step*(this: InterfaceSTAT; num: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Step", header: "Interface_STAT.hxx".}
proc start*(this: InterfaceSTAT; items: StandardInteger; cycles: StandardInteger = 1) {.
    noSideEffect, importcpp: "Start", header: "Interface_STAT.hxx".}
proc startCount*(items: StandardInteger; title: StandardCString = "") {.
    importcpp: "Interface_STAT::StartCount(@)", header: "Interface_STAT.hxx".}
proc nextPhase*(items: StandardInteger; cycles: StandardInteger = 1) {.
    importcpp: "Interface_STAT::NextPhase(@)", header: "Interface_STAT.hxx".}
proc setPhase*(items: StandardInteger; cycles: StandardInteger = 1) {.
    importcpp: "Interface_STAT::SetPhase(@)", header: "Interface_STAT.hxx".}
proc nextCycle*(items: StandardInteger) {.importcpp: "Interface_STAT::NextCycle(@)",
                                       header: "Interface_STAT.hxx".}
proc nextStep*() {.importcpp: "Interface_STAT::NextStep(@)",
                 header: "Interface_STAT.hxx".}
proc nextItem*(nbitems: StandardInteger = 1) {.
    importcpp: "Interface_STAT::NextItem(@)", header: "Interface_STAT.hxx".}
proc `end`*() {.importcpp: "Interface_STAT::End(@)", header: "Interface_STAT.hxx".}
proc where*(phase: StandardBoolean = standardTrue): StandardCString {.
    importcpp: "Interface_STAT::Where(@)", header: "Interface_STAT.hxx".}
proc percent*(phase: StandardBoolean = standardFalse): StandardInteger {.
    importcpp: "Interface_STAT::Percent(@)", header: "Interface_STAT.hxx".}

