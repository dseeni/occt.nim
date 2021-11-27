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
discard "forward decl of IGESAppli_LevelToPWBLayerMap"
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
  IGESAppliToolLevelToPWBLayerMap* {.importcpp: "IGESAppli_ToolLevelToPWBLayerMap", header: "IGESAppli_ToolLevelToPWBLayerMap.hxx",
                                    bycopy.} = object ## ! Returns a ToolLevelToPWBLayerMap, ready to work


proc constructIGESAppliToolLevelToPWBLayerMap*(): IGESAppliToolLevelToPWBLayerMap {.
    constructor, importcpp: "IGESAppli_ToolLevelToPWBLayerMap(@)",
    header: "IGESAppli_ToolLevelToPWBLayerMap.hxx".}
proc readOwnParams*(this: IGESAppliToolLevelToPWBLayerMap;
                   ent: Handle[IGESAppliLevelToPWBLayerMap];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESAppli_ToolLevelToPWBLayerMap.hxx".}
proc writeOwnParams*(this: IGESAppliToolLevelToPWBLayerMap;
                    ent: Handle[IGESAppliLevelToPWBLayerMap];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESAppli_ToolLevelToPWBLayerMap.hxx".}
proc ownShared*(this: IGESAppliToolLevelToPWBLayerMap;
               ent: Handle[IGESAppliLevelToPWBLayerMap];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolLevelToPWBLayerMap.hxx".}
proc dirChecker*(this: IGESAppliToolLevelToPWBLayerMap;
                ent: Handle[IGESAppliLevelToPWBLayerMap]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESAppli_ToolLevelToPWBLayerMap.hxx".}
proc ownCheck*(this: IGESAppliToolLevelToPWBLayerMap;
              ent: Handle[IGESAppliLevelToPWBLayerMap];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESAppli_ToolLevelToPWBLayerMap.hxx".}
proc ownCopy*(this: IGESAppliToolLevelToPWBLayerMap;
             entfrom: Handle[IGESAppliLevelToPWBLayerMap];
             entto: Handle[IGESAppliLevelToPWBLayerMap]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy",
    header: "IGESAppli_ToolLevelToPWBLayerMap.hxx".}
proc ownDump*(this: IGESAppliToolLevelToPWBLayerMap;
             ent: Handle[IGESAppliLevelToPWBLayerMap]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESAppli_ToolLevelToPWBLayerMap.hxx".}
























