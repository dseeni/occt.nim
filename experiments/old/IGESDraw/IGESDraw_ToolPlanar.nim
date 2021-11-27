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
discard "forward decl of IGESDraw_Planar"
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
  IGESDrawToolPlanar* {.importcpp: "IGESDraw_ToolPlanar",
                       header: "IGESDraw_ToolPlanar.hxx", bycopy.} = object ## ! Returns a
                                                                       ## ToolPlanar, ready to work


proc constructIGESDrawToolPlanar*(): IGESDrawToolPlanar {.constructor,
    importcpp: "IGESDraw_ToolPlanar(@)", header: "IGESDraw_ToolPlanar.hxx".}
proc readOwnParams*(this: IGESDrawToolPlanar; ent: Handle[IGESDrawPlanar];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESDraw_ToolPlanar.hxx".}
proc writeOwnParams*(this: IGESDrawToolPlanar; ent: Handle[IGESDrawPlanar];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDraw_ToolPlanar.hxx".}
proc ownShared*(this: IGESDrawToolPlanar; ent: Handle[IGESDrawPlanar];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDraw_ToolPlanar.hxx".}
proc ownCorrect*(this: IGESDrawToolPlanar; ent: Handle[IGESDrawPlanar]): bool {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESDraw_ToolPlanar.hxx".}
proc dirChecker*(this: IGESDrawToolPlanar; ent: Handle[IGESDrawPlanar]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDraw_ToolPlanar.hxx".}
proc ownCheck*(this: IGESDrawToolPlanar; ent: Handle[IGESDrawPlanar];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDraw_ToolPlanar.hxx".}
proc ownCopy*(this: IGESDrawToolPlanar; entfrom: Handle[IGESDrawPlanar];
             entto: Handle[IGESDrawPlanar]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDraw_ToolPlanar.hxx".}
proc ownDump*(this: IGESDrawToolPlanar; ent: Handle[IGESDrawPlanar];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESDraw_ToolPlanar.hxx".}
























