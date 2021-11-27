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
discard "forward decl of IGESDraw_LabelDisplay"
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
  IGESDrawToolLabelDisplay* {.importcpp: "IGESDraw_ToolLabelDisplay",
                             header: "IGESDraw_ToolLabelDisplay.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## a
                                                                                   ## ToolLabelDisplay,
                                                                                   ## ready
                                                                                   ## to
                                                                                   ## work


proc constructIGESDrawToolLabelDisplay*(): IGESDrawToolLabelDisplay {.constructor,
    importcpp: "IGESDraw_ToolLabelDisplay(@)",
    header: "IGESDraw_ToolLabelDisplay.hxx".}
proc readOwnParams*(this: IGESDrawToolLabelDisplay;
                   ent: Handle[IGESDrawLabelDisplay];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDraw_ToolLabelDisplay.hxx".}
proc writeOwnParams*(this: IGESDrawToolLabelDisplay;
                    ent: Handle[IGESDrawLabelDisplay]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESDraw_ToolLabelDisplay.hxx".}
proc ownShared*(this: IGESDrawToolLabelDisplay; ent: Handle[IGESDrawLabelDisplay];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDraw_ToolLabelDisplay.hxx".}
proc dirChecker*(this: IGESDrawToolLabelDisplay; ent: Handle[IGESDrawLabelDisplay]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDraw_ToolLabelDisplay.hxx".}
proc ownCheck*(this: IGESDrawToolLabelDisplay; ent: Handle[IGESDrawLabelDisplay];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDraw_ToolLabelDisplay.hxx".}
proc ownCopy*(this: IGESDrawToolLabelDisplay;
             entfrom: Handle[IGESDrawLabelDisplay];
             entto: Handle[IGESDrawLabelDisplay]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDraw_ToolLabelDisplay.hxx".}
proc ownDump*(this: IGESDrawToolLabelDisplay; ent: Handle[IGESDrawLabelDisplay];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESDraw_ToolLabelDisplay.hxx".}
























