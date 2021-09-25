##  Created on: 1993-05-10
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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IGESData_DirChecker"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CopyTool"
discard "forward decl of IGESDimen_GeneralModule"
discard "forward decl of IGESDimen_GeneralModule"
type
  HandleIGESDimenGeneralModule* = Handle[IGESDimenGeneralModule]

## ! Definition of General Services for IGESDimen (specific part)
## ! This Services comprise : Shared & Implied Lists, Copy, Check

type
  IGESDimenGeneralModule* {.importcpp: "IGESDimen_GeneralModule",
                           header: "IGESDimen_GeneralModule.hxx", bycopy.} = object of IGESDataGeneralModule ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## a
                                                                                                      ## GeneralModule
                                                                                                      ## from
                                                                                                      ## IGESDimen
                                                                                                      ## and
                                                                                                      ## puts
                                                                                                      ## it
                                                                                                      ## into
                                                                                                      ## GeneralLib


proc constructIGESDimenGeneralModule*(): IGESDimenGeneralModule {.constructor,
    importcpp: "IGESDimen_GeneralModule(@)", header: "IGESDimen_GeneralModule.hxx".}
proc ownSharedCase*(this: IGESDimenGeneralModule; cn: int;
                   ent: Handle[IGESDataIGESEntity];
                   iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnSharedCase", header: "IGESDimen_GeneralModule.hxx".}
proc dirChecker*(this: IGESDimenGeneralModule; cn: int;
                ent: Handle[IGESDataIGESEntity]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDimen_GeneralModule.hxx".}
proc ownCheckCase*(this: IGESDimenGeneralModule; cn: int;
                  ent: Handle[IGESDataIGESEntity]; shares: InterfaceShareTool;
                  ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheckCase", header: "IGESDimen_GeneralModule.hxx".}
proc newVoid*(this: IGESDimenGeneralModule; cn: int;
             entto: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "NewVoid", header: "IGESDimen_GeneralModule.hxx".}
proc ownCopyCase*(this: IGESDimenGeneralModule; cn: int;
                 entfrom: Handle[IGESDataIGESEntity];
                 entto: Handle[IGESDataIGESEntity]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopyCase", header: "IGESDimen_GeneralModule.hxx".}
proc categoryNumber*(this: IGESDimenGeneralModule; cn: int;
                    ent: Handle[StandardTransient]; shares: InterfaceShareTool): int {.
    noSideEffect, importcpp: "CategoryNumber",
    header: "IGESDimen_GeneralModule.hxx".}
type
  IGESDimenGeneralModulebaseType* = IGESDataGeneralModule

proc getTypeName*(): cstring {.importcpp: "IGESDimen_GeneralModule::get_type_name(@)",
                            header: "IGESDimen_GeneralModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_GeneralModule::get_type_descriptor(@)",
    header: "IGESDimen_GeneralModule.hxx".}
proc dynamicType*(this: IGESDimenGeneralModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_GeneralModule.hxx".}
