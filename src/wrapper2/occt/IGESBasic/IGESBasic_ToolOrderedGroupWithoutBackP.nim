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
discard "forward decl of IGESBasic_OrderedGroupWithoutBackP"
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
  IGESBasic_ToolOrderedGroupWithoutBackP* {.
      importcpp: "IGESBasic_ToolOrderedGroupWithoutBackP",
      header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx", bycopy.} = object ## ! Returns a
                                                                         ## ToolOrderedGroupWithoutBackP, ready to work


proc constructIGESBasic_ToolOrderedGroupWithoutBackP*(): IGESBasic_ToolOrderedGroupWithoutBackP {.
    constructor, importcpp: "IGESBasic_ToolOrderedGroupWithoutBackP(@)",
    header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc ReadOwnParams*(this: IGESBasic_ToolOrderedGroupWithoutBackP;
                   ent: handle[IGESBasic_OrderedGroupWithoutBackP];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams",
    header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc WriteOwnParams*(this: IGESBasic_ToolOrderedGroupWithoutBackP;
                    ent: handle[IGESBasic_OrderedGroupWithoutBackP];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams",
    header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc OwnShared*(this: IGESBasic_ToolOrderedGroupWithoutBackP;
               ent: handle[IGESBasic_OrderedGroupWithoutBackP];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc OwnCorrect*(this: IGESBasic_ToolOrderedGroupWithoutBackP;
                ent: handle[IGESBasic_OrderedGroupWithoutBackP]): Standard_Boolean {.
    noSideEffect, importcpp: "OwnCorrect",
    header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc DirChecker*(this: IGESBasic_ToolOrderedGroupWithoutBackP;
                ent: handle[IGESBasic_OrderedGroupWithoutBackP]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc OwnCheck*(this: IGESBasic_ToolOrderedGroupWithoutBackP;
              ent: handle[IGESBasic_OrderedGroupWithoutBackP];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc OwnCopy*(this: IGESBasic_ToolOrderedGroupWithoutBackP;
             entfrom: handle[IGESBasic_OrderedGroupWithoutBackP];
             entto: handle[IGESBasic_OrderedGroupWithoutBackP];
             TC: var Interface_CopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc OwnDump*(this: IGESBasic_ToolOrderedGroupWithoutBackP;
             ent: handle[IGESBasic_OrderedGroupWithoutBackP];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump", header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}