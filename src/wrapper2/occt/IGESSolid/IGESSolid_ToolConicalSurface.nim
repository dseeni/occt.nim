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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of Standard_DomainError"
discard "forward decl of IGESSolid_ConicalSurface"
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
  IGESSolid_ToolConicalSurface* {.importcpp: "IGESSolid_ToolConicalSurface",
                                 header: "IGESSolid_ToolConicalSurface.hxx",
                                 bycopy.} = object ## ! Returns a ToolConicalSurface, ready to work


proc constructIGESSolid_ToolConicalSurface*(): IGESSolid_ToolConicalSurface {.
    constructor, importcpp: "IGESSolid_ToolConicalSurface(@)",
    header: "IGESSolid_ToolConicalSurface.hxx".}
proc ReadOwnParams*(this: IGESSolid_ToolConicalSurface;
                   ent: handle[IGESSolid_ConicalSurface];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESSolid_ToolConicalSurface.hxx".}
proc WriteOwnParams*(this: IGESSolid_ToolConicalSurface;
                    ent: handle[IGESSolid_ConicalSurface];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESSolid_ToolConicalSurface.hxx".}
proc OwnShared*(this: IGESSolid_ToolConicalSurface;
               ent: handle[IGESSolid_ConicalSurface];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolConicalSurface.hxx".}
proc DirChecker*(this: IGESSolid_ToolConicalSurface;
                ent: handle[IGESSolid_ConicalSurface]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESSolid_ToolConicalSurface.hxx".}
proc OwnCheck*(this: IGESSolid_ToolConicalSurface;
              ent: handle[IGESSolid_ConicalSurface]; shares: Interface_ShareTool;
              ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESSolid_ToolConicalSurface.hxx".}
proc OwnCopy*(this: IGESSolid_ToolConicalSurface;
             entfrom: handle[IGESSolid_ConicalSurface];
             entto: handle[IGESSolid_ConicalSurface]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESSolid_ToolConicalSurface.hxx".}
proc OwnDump*(this: IGESSolid_ToolConicalSurface;
             ent: handle[IGESSolid_ConicalSurface]; dumper: IGESData_IGESDumper;
             S: var Standard_OStream; own: Standard_Integer) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESSolid_ToolConicalSurface.hxx".}