##  Created on: 1993-02-02
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_GeneralModule"
discard "forward decl of Interface_GeneralModule"
type
  HandleInterfaceGeneralModule* = Handle[InterfaceGeneralModule]

## ! This class defines general services, which must be provided
## ! for each type of Entity (i.e. of Transient Object processed
## ! by an Interface) : Shared List, Check, Copy, Delete, Category
## !
## ! To optimise processing (e.g. firstly bind an Entity to a Module
## ! then calls  Module), each recognized Entity Type corresponds
## ! to a Case Number, determined by the Protocol each class of
## ! GeneralModule belongs to.

type
  InterfaceGeneralModule* {.importcpp: "Interface_GeneralModule",
                           header: "Interface_GeneralModule.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Specific
                                                                                                  ## filling
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## list
                                                                                                  ## of
                                                                                                  ## Entities
                                                                                                  ## shared
                                                                                                  ## by
                                                                                                  ## an
                                                                                                  ## Entity
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## <ent>,
                                                                                                  ## according
                                                                                                  ## a
                                                                                                  ## Case
                                                                                                  ## Number
                                                                                                  ## <CN>
                                                                                                  ## (formerly
                                                                                                  ## computed
                                                                                                  ## by
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## CaseNum),
                                                                                                  ## considered
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ## context
                                                                                                  ## of
                                                                                                  ## a
                                                                                                  ## Model
                                                                                                  ## <model>
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## calls
                                                                                                  ## FillSharedCase
                                                                                                  ## (i.e.,
                                                                                                  ## ignores
                                                                                                  ## the
                                                                                                  ## model)
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Can
                                                                                                  ## be
                                                                                                  ## redefined
                                                                                                  ## to
                                                                                                  ## use
                                                                                                  ## the
                                                                                                  ## model
                                                                                                  ## for
                                                                                                  ## working


proc fillShared*(this: InterfaceGeneralModule;
                model: Handle[InterfaceInterfaceModel]; cn: int;
                ent: Handle[StandardTransient]; iter: var InterfaceEntityIterator) {.
    noSideEffect, importcpp: "FillShared", header: "Interface_GeneralModule.hxx".}
proc fillSharedCase*(this: InterfaceGeneralModule; cn: int;
                    ent: Handle[StandardTransient];
                    iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "FillSharedCase", header: "Interface_GeneralModule.hxx".}
proc share*(this: InterfaceGeneralModule; iter: var InterfaceEntityIterator;
           shared: Handle[StandardTransient]) {.noSideEffect, importcpp: "Share",
    header: "Interface_GeneralModule.hxx".}
proc listImplied*(this: InterfaceGeneralModule;
                 model: Handle[InterfaceInterfaceModel]; cn: int;
                 ent: Handle[StandardTransient]; iter: var InterfaceEntityIterator) {.
    noSideEffect, importcpp: "ListImplied", header: "Interface_GeneralModule.hxx".}
proc listImpliedCase*(this: InterfaceGeneralModule; cn: int;
                     ent: Handle[StandardTransient];
                     iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "ListImpliedCase", header: "Interface_GeneralModule.hxx".}
proc checkCase*(this: InterfaceGeneralModule; cn: int;
               ent: Handle[StandardTransient]; shares: InterfaceShareTool;
               ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "CheckCase", header: "Interface_GeneralModule.hxx".}
proc canCopy*(this: InterfaceGeneralModule; cn: int; ent: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "CanCopy", header: "Interface_GeneralModule.hxx".}
proc dispatch*(this: InterfaceGeneralModule; cn: int;
              entfrom: Handle[StandardTransient];
              entto: var Handle[StandardTransient]; tc: var InterfaceCopyTool): bool {.
    noSideEffect, importcpp: "Dispatch", header: "Interface_GeneralModule.hxx".}
proc newVoid*(this: InterfaceGeneralModule; cn: int;
             entto: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "NewVoid", header: "Interface_GeneralModule.hxx".}
proc copyCase*(this: InterfaceGeneralModule; cn: int;
              entfrom: Handle[StandardTransient];
              entto: Handle[StandardTransient]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "CopyCase", header: "Interface_GeneralModule.hxx".}
proc newCopiedCase*(this: InterfaceGeneralModule; cn: int;
                   entfrom: Handle[StandardTransient];
                   entto: var Handle[StandardTransient]; tc: var InterfaceCopyTool): bool {.
    noSideEffect, importcpp: "NewCopiedCase", header: "Interface_GeneralModule.hxx".}
proc renewImpliedCase*(this: InterfaceGeneralModule; cn: int;
                      entfrom: Handle[StandardTransient];
                      entto: Handle[StandardTransient]; tc: InterfaceCopyTool) {.
    noSideEffect, importcpp: "RenewImpliedCase",
    header: "Interface_GeneralModule.hxx".}
proc whenDeleteCase*(this: InterfaceGeneralModule; cn: int;
                    ent: Handle[StandardTransient]; dispatched: bool) {.
    noSideEffect, importcpp: "WhenDeleteCase",
    header: "Interface_GeneralModule.hxx".}
proc categoryNumber*(this: InterfaceGeneralModule; cn: int;
                    ent: Handle[StandardTransient]; shares: InterfaceShareTool): int {.
    noSideEffect, importcpp: "CategoryNumber",
    header: "Interface_GeneralModule.hxx".}
proc name*(this: InterfaceGeneralModule; cn: int; ent: Handle[StandardTransient];
          shares: InterfaceShareTool): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "Interface_GeneralModule.hxx".}
type
  InterfaceGeneralModulebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_GeneralModule::get_type_name(@)",
                            header: "Interface_GeneralModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_GeneralModule::get_type_descriptor(@)",
    header: "Interface_GeneralModule.hxx".}
proc dynamicType*(this: InterfaceGeneralModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Interface_GeneralModule.hxx".}
