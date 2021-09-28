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
discard "forward decl of IGESAppli_NodalConstraint"
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
  IGESAppliToolNodalConstraint* {.importcpp: "IGESAppli_ToolNodalConstraint",
                                 header: "IGESAppli_ToolNodalConstraint.hxx",
                                 bycopy.} = object ## ! Returns a ToolNodalConstraint, ready to work


proc constructIGESAppliToolNodalConstraint*(): IGESAppliToolNodalConstraint {.
    constructor, importcpp: "IGESAppli_ToolNodalConstraint(@)",
    header: "IGESAppli_ToolNodalConstraint.hxx".}
proc readOwnParams*(this: IGESAppliToolNodalConstraint;
                   ent: Handle[IGESAppliNodalConstraint];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESAppli_ToolNodalConstraint.hxx".}
proc writeOwnParams*(this: IGESAppliToolNodalConstraint;
                    ent: Handle[IGESAppliNodalConstraint];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESAppli_ToolNodalConstraint.hxx".}
proc ownShared*(this: IGESAppliToolNodalConstraint;
               ent: Handle[IGESAppliNodalConstraint];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolNodalConstraint.hxx".}
proc dirChecker*(this: IGESAppliToolNodalConstraint;
                ent: Handle[IGESAppliNodalConstraint]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESAppli_ToolNodalConstraint.hxx".}
proc ownCheck*(this: IGESAppliToolNodalConstraint;
              ent: Handle[IGESAppliNodalConstraint]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESAppli_ToolNodalConstraint.hxx".}
proc ownCopy*(this: IGESAppliToolNodalConstraint;
             entfrom: Handle[IGESAppliNodalConstraint];
             entto: Handle[IGESAppliNodalConstraint]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESAppli_ToolNodalConstraint.hxx".}
proc ownDump*(this: IGESAppliToolNodalConstraint;
             ent: Handle[IGESAppliNodalConstraint]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESAppli_ToolNodalConstraint.hxx".}

























