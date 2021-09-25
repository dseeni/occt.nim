##  Created on: 1993-10-14
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

discard "forward decl of Standard_DomainError"
discard "forward decl of IGESBasic_Hierarchy"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_ParamReader"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IGESData_DirChecker"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CopyTool"
discard "forward decl of IGESData_IGESDumper"
type
  IGESBasicToolHierarchy* {.importcpp: "IGESBasic_ToolHierarchy",
                           header: "IGESBasic_ToolHierarchy.hxx", bycopy.} = object ## !
                                                                               ## Returns a
                                                                               ## ToolHierarchy,
                                                                               ## ready
                                                                               ## to
                                                                               ## work


proc constructIGESBasicToolHierarchy*(): IGESBasicToolHierarchy {.constructor,
    importcpp: "IGESBasic_ToolHierarchy(@)", header: "IGESBasic_ToolHierarchy.hxx".}
proc readOwnParams*(this: IGESBasicToolHierarchy; ent: Handle[IGESBasicHierarchy];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESBasic_ToolHierarchy.hxx".}
proc writeOwnParams*(this: IGESBasicToolHierarchy; ent: Handle[IGESBasicHierarchy];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESBasic_ToolHierarchy.hxx".}
proc ownShared*(this: IGESBasicToolHierarchy; ent: Handle[IGESBasicHierarchy];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolHierarchy.hxx".}
proc ownCorrect*(this: IGESBasicToolHierarchy; ent: Handle[IGESBasicHierarchy]): bool {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESBasic_ToolHierarchy.hxx".}
proc dirChecker*(this: IGESBasicToolHierarchy; ent: Handle[IGESBasicHierarchy]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESBasic_ToolHierarchy.hxx".}
proc ownCheck*(this: IGESBasicToolHierarchy; ent: Handle[IGESBasicHierarchy];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESBasic_ToolHierarchy.hxx".}
proc ownCopy*(this: IGESBasicToolHierarchy; entfrom: Handle[IGESBasicHierarchy];
             entto: Handle[IGESBasicHierarchy]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESBasic_ToolHierarchy.hxx".}
proc ownDump*(this: IGESBasicToolHierarchy; ent: Handle[IGESBasicHierarchy];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESBasic_ToolHierarchy.hxx".}
