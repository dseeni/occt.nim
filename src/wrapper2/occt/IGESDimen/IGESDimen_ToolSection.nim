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
discard "forward decl of IGESDimen_Section"
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
  IGESDimenToolSection* {.importcpp: "IGESDimen_ToolSection",
                         header: "IGESDimen_ToolSection.hxx", bycopy.} = object ## !
                                                                           ## Returns a
                                                                           ## ToolSection, ready to work


proc constructIGESDimenToolSection*(): IGESDimenToolSection {.constructor,
    importcpp: "IGESDimen_ToolSection(@)", header: "IGESDimen_ToolSection.hxx".}
proc readOwnParams*(this: IGESDimenToolSection; ent: Handle[IGESDimenSection];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESDimen_ToolSection.hxx".}
proc writeOwnParams*(this: IGESDimenToolSection; ent: Handle[IGESDimenSection];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDimen_ToolSection.hxx".}
proc ownShared*(this: IGESDimenToolSection; ent: Handle[IGESDimenSection];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolSection.hxx".}
proc ownCorrect*(this: IGESDimenToolSection; ent: Handle[IGESDimenSection]): StandardBoolean {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESDimen_ToolSection.hxx".}
proc dirChecker*(this: IGESDimenToolSection; ent: Handle[IGESDimenSection]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDimen_ToolSection.hxx".}
proc ownCheck*(this: IGESDimenToolSection; ent: Handle[IGESDimenSection];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDimen_ToolSection.hxx".}
proc ownCopy*(this: IGESDimenToolSection; entfrom: Handle[IGESDimenSection];
             entto: Handle[IGESDimenSection]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolSection.hxx".}
proc ownDump*(this: IGESDimenToolSection; ent: Handle[IGESDimenSection];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: StandardInteger) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESDimen_ToolSection.hxx".}

