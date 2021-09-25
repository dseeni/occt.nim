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
discard "forward decl of IGESAppli_ElementResults"
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
  IGESAppliToolElementResults* {.importcpp: "IGESAppli_ToolElementResults",
                                header: "IGESAppli_ToolElementResults.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## a
                                                                                         ## ToolElementResults,
                                                                                         ## ready
                                                                                         ## to
                                                                                         ## work


proc constructIGESAppliToolElementResults*(): IGESAppliToolElementResults {.
    constructor, importcpp: "IGESAppli_ToolElementResults(@)",
    header: "IGESAppli_ToolElementResults.hxx".}
proc readOwnParams*(this: IGESAppliToolElementResults;
                   ent: Handle[IGESAppliElementResults];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESAppli_ToolElementResults.hxx".}
proc writeOwnParams*(this: IGESAppliToolElementResults;
                    ent: Handle[IGESAppliElementResults];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESAppli_ToolElementResults.hxx".}
proc ownShared*(this: IGESAppliToolElementResults;
               ent: Handle[IGESAppliElementResults];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolElementResults.hxx".}
proc dirChecker*(this: IGESAppliToolElementResults;
                ent: Handle[IGESAppliElementResults]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESAppli_ToolElementResults.hxx".}
proc ownCheck*(this: IGESAppliToolElementResults;
              ent: Handle[IGESAppliElementResults]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESAppli_ToolElementResults.hxx".}
proc ownCopy*(this: IGESAppliToolElementResults;
             entfrom: Handle[IGESAppliElementResults];
             entto: Handle[IGESAppliElementResults]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESAppli_ToolElementResults.hxx".}
proc ownDump*(this: IGESAppliToolElementResults;
             ent: Handle[IGESAppliElementResults]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: int) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESAppli_ToolElementResults.hxx".}
