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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Standard_DomainError"
discard "forward decl of IGESDimen_WitnessLine"
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
  IGESDimen_ToolWitnessLine* {.importcpp: "IGESDimen_ToolWitnessLine",
                              header: "IGESDimen_ToolWitnessLine.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## a
                                                                                    ## ToolWitnessLine,
                                                                                    ## ready
                                                                                    ## to
                                                                                    ## work


proc constructIGESDimen_ToolWitnessLine*(): IGESDimen_ToolWitnessLine {.
    constructor, importcpp: "IGESDimen_ToolWitnessLine(@)",
    header: "IGESDimen_ToolWitnessLine.hxx".}
proc ReadOwnParams*(this: IGESDimen_ToolWitnessLine;
                   ent: handle[IGESDimen_WitnessLine];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESDimen_ToolWitnessLine.hxx".}
proc WriteOwnParams*(this: IGESDimen_ToolWitnessLine;
                    ent: handle[IGESDimen_WitnessLine];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDimen_ToolWitnessLine.hxx".}
proc OwnShared*(this: IGESDimen_ToolWitnessLine;
               ent: handle[IGESDimen_WitnessLine];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolWitnessLine.hxx".}
proc OwnCorrect*(this: IGESDimen_ToolWitnessLine;
                ent: handle[IGESDimen_WitnessLine]): Standard_Boolean {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESDimen_ToolWitnessLine.hxx".}
proc DirChecker*(this: IGESDimen_ToolWitnessLine;
                ent: handle[IGESDimen_WitnessLine]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDimen_ToolWitnessLine.hxx".}
proc OwnCheck*(this: IGESDimen_ToolWitnessLine; ent: handle[IGESDimen_WitnessLine];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDimen_ToolWitnessLine.hxx".}
proc OwnCopy*(this: IGESDimen_ToolWitnessLine;
             entfrom: handle[IGESDimen_WitnessLine];
             entto: handle[IGESDimen_WitnessLine]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolWitnessLine.hxx".}
proc OwnDump*(this: IGESDimen_ToolWitnessLine; ent: handle[IGESDimen_WitnessLine];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump",
                                    header: "IGESDimen_ToolWitnessLine.hxx".}