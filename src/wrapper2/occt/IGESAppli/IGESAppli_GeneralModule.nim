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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESData/IGESData_GeneralModule, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IGESData_DirChecker"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CopyTool"
discard "forward decl of IGESAppli_GeneralModule"
discard "forward decl of IGESAppli_GeneralModule"
type
  Handle_IGESAppli_GeneralModule* = handle[IGESAppli_GeneralModule]

## ! Definition of General Services for IGESAppli (specific part)
## ! This Services comprise : Shared & Implied Lists, Copy, Check

type
  IGESAppli_GeneralModule* {.importcpp: "IGESAppli_GeneralModule",
                            header: "IGESAppli_GeneralModule.hxx", bycopy.} = object of IGESData_GeneralModule ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## GeneralModule
                                                                                                        ## from
                                                                                                        ## IGESAppli
                                                                                                        ## and
                                                                                                        ## puts
                                                                                                        ## it
                                                                                                        ## into
                                                                                                        ## GeneralLib


proc constructIGESAppli_GeneralModule*(): IGESAppli_GeneralModule {.constructor,
    importcpp: "IGESAppli_GeneralModule(@)", header: "IGESAppli_GeneralModule.hxx".}
proc OwnSharedCase*(this: IGESAppli_GeneralModule; CN: Standard_Integer;
                   ent: handle[IGESData_IGESEntity];
                   iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnSharedCase", header: "IGESAppli_GeneralModule.hxx".}
proc DirChecker*(this: IGESAppli_GeneralModule; CN: Standard_Integer;
                ent: handle[IGESData_IGESEntity]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESAppli_GeneralModule.hxx".}
proc OwnCheckCase*(this: IGESAppli_GeneralModule; CN: Standard_Integer;
                  ent: handle[IGESData_IGESEntity]; shares: Interface_ShareTool;
                  ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "OwnCheckCase", header: "IGESAppli_GeneralModule.hxx".}
proc NewVoid*(this: IGESAppli_GeneralModule; CN: Standard_Integer;
             entto: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "NewVoid", header: "IGESAppli_GeneralModule.hxx".}
proc OwnCopyCase*(this: IGESAppli_GeneralModule; CN: Standard_Integer;
                 entfrom: handle[IGESData_IGESEntity];
                 entto: handle[IGESData_IGESEntity]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopyCase", header: "IGESAppli_GeneralModule.hxx".}
proc CategoryNumber*(this: IGESAppli_GeneralModule; CN: Standard_Integer;
                    ent: handle[Standard_Transient]; shares: Interface_ShareTool): Standard_Integer {.
    noSideEffect, importcpp: "CategoryNumber",
    header: "IGESAppli_GeneralModule.hxx".}
type
  IGESAppli_GeneralModulebase_type* = IGESData_GeneralModule

proc get_type_name*(): cstring {.importcpp: "IGESAppli_GeneralModule::get_type_name(@)",
                              header: "IGESAppli_GeneralModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_GeneralModule::get_type_descriptor(@)",
    header: "IGESAppli_GeneralModule.hxx".}
proc DynamicType*(this: IGESAppli_GeneralModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_GeneralModule.hxx".}