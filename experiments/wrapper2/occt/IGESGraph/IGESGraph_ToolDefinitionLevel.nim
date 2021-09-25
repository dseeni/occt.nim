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
discard "forward decl of IGESGraph_DefinitionLevel"
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
  IGESGraphToolDefinitionLevel* {.importcpp: "IGESGraph_ToolDefinitionLevel",
                                 header: "IGESGraph_ToolDefinitionLevel.hxx",
                                 bycopy.} = object ## ! Returns a ToolDefinitionLevel, ready to work


proc constructIGESGraphToolDefinitionLevel*(): IGESGraphToolDefinitionLevel {.
    constructor, importcpp: "IGESGraph_ToolDefinitionLevel(@)",
    header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc readOwnParams*(this: IGESGraphToolDefinitionLevel;
                   ent: Handle[IGESGraphDefinitionLevel];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc writeOwnParams*(this: IGESGraphToolDefinitionLevel;
                    ent: Handle[IGESGraphDefinitionLevel];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc ownShared*(this: IGESGraphToolDefinitionLevel;
               ent: Handle[IGESGraphDefinitionLevel];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc dirChecker*(this: IGESGraphToolDefinitionLevel;
                ent: Handle[IGESGraphDefinitionLevel]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc ownCheck*(this: IGESGraphToolDefinitionLevel;
              ent: Handle[IGESGraphDefinitionLevel]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc ownCopy*(this: IGESGraphToolDefinitionLevel;
             entfrom: Handle[IGESGraphDefinitionLevel];
             entto: Handle[IGESGraphDefinitionLevel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc ownDump*(this: IGESGraphToolDefinitionLevel;
             ent: Handle[IGESGraphDefinitionLevel]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: int) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESGraph_ToolDefinitionLevel.hxx".}
