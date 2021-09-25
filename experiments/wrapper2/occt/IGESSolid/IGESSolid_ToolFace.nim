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
discard "forward decl of IGESSolid_Face"
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
  IGESSolidToolFace* {.importcpp: "IGESSolid_ToolFace",
                      header: "IGESSolid_ToolFace.hxx", bycopy.} = object ## ! Returns a ToolFace, ready to work


proc constructIGESSolidToolFace*(): IGESSolidToolFace {.constructor,
    importcpp: "IGESSolid_ToolFace(@)", header: "IGESSolid_ToolFace.hxx".}
proc readOwnParams*(this: IGESSolidToolFace; ent: Handle[IGESSolidFace];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESSolid_ToolFace.hxx".}
proc writeOwnParams*(this: IGESSolidToolFace; ent: Handle[IGESSolidFace];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESSolid_ToolFace.hxx".}
proc ownShared*(this: IGESSolidToolFace; ent: Handle[IGESSolidFace];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolFace.hxx".}
proc dirChecker*(this: IGESSolidToolFace; ent: Handle[IGESSolidFace]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESSolid_ToolFace.hxx".}
proc ownCheck*(this: IGESSolidToolFace; ent: Handle[IGESSolidFace];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESSolid_ToolFace.hxx".}
proc ownCopy*(this: IGESSolidToolFace; entfrom: Handle[IGESSolidFace];
             entto: Handle[IGESSolidFace]; tc: var InterfaceCopyTool) {.noSideEffect,
    importcpp: "OwnCopy", header: "IGESSolid_ToolFace.hxx".}
proc ownDump*(this: IGESSolidToolFace; ent: Handle[IGESSolidFace];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESSolid_ToolFace.hxx".}
