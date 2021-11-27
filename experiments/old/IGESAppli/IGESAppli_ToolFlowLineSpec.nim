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
discard "forward decl of IGESAppli_FlowLineSpec"
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
  IGESAppliToolFlowLineSpec* {.importcpp: "IGESAppli_ToolFlowLineSpec",
                              header: "IGESAppli_ToolFlowLineSpec.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## a
                                                                                     ## ToolFlowLineSpec,
                                                                                     ## ready
                                                                                     ## to
                                                                                     ## work


proc constructIGESAppliToolFlowLineSpec*(): IGESAppliToolFlowLineSpec {.
    constructor, importcpp: "IGESAppli_ToolFlowLineSpec(@)",
    header: "IGESAppli_ToolFlowLineSpec.hxx".}
proc readOwnParams*(this: IGESAppliToolFlowLineSpec;
                   ent: Handle[IGESAppliFlowLineSpec];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESAppli_ToolFlowLineSpec.hxx".}
proc writeOwnParams*(this: IGESAppliToolFlowLineSpec;
                    ent: Handle[IGESAppliFlowLineSpec]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESAppli_ToolFlowLineSpec.hxx".}
proc ownShared*(this: IGESAppliToolFlowLineSpec;
               ent: Handle[IGESAppliFlowLineSpec];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolFlowLineSpec.hxx".}
proc dirChecker*(this: IGESAppliToolFlowLineSpec;
                ent: Handle[IGESAppliFlowLineSpec]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESAppli_ToolFlowLineSpec.hxx".}
proc ownCheck*(this: IGESAppliToolFlowLineSpec; ent: Handle[IGESAppliFlowLineSpec];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESAppli_ToolFlowLineSpec.hxx".}
proc ownCopy*(this: IGESAppliToolFlowLineSpec;
             entfrom: Handle[IGESAppliFlowLineSpec];
             entto: Handle[IGESAppliFlowLineSpec]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESAppli_ToolFlowLineSpec.hxx".}
proc ownDump*(this: IGESAppliToolFlowLineSpec; ent: Handle[IGESAppliFlowLineSpec];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESAppli_ToolFlowLineSpec.hxx".}
























