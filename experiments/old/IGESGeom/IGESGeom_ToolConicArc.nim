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
discard "forward decl of IGESGeom_ConicArc"
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
  IGESGeomToolConicArc* {.importcpp: "IGESGeom_ToolConicArc",
                         header: "IGESGeom_ToolConicArc.hxx", bycopy.} = object ## !
                                                                           ## Returns a
                                                                           ## ToolConicArc, ready to work


proc constructIGESGeomToolConicArc*(): IGESGeomToolConicArc {.constructor,
    importcpp: "IGESGeom_ToolConicArc(@)", header: "IGESGeom_ToolConicArc.hxx".}
proc readOwnParams*(this: IGESGeomToolConicArc; ent: Handle[IGESGeomConicArc];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESGeom_ToolConicArc.hxx".}
proc writeOwnParams*(this: IGESGeomToolConicArc; ent: Handle[IGESGeomConicArc];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGeom_ToolConicArc.hxx".}
proc ownShared*(this: IGESGeomToolConicArc; ent: Handle[IGESGeomConicArc];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolConicArc.hxx".}
proc ownCorrect*(this: IGESGeomToolConicArc; ent: Handle[IGESGeomConicArc]): bool {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESGeom_ToolConicArc.hxx".}
proc dirChecker*(this: IGESGeomToolConicArc; ent: Handle[IGESGeomConicArc]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGeom_ToolConicArc.hxx".}
proc ownCheck*(this: IGESGeomToolConicArc; ent: Handle[IGESGeomConicArc];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGeom_ToolConicArc.hxx".}
proc ownCopy*(this: IGESGeomToolConicArc; entfrom: Handle[IGESGeomConicArc];
             entto: Handle[IGESGeomConicArc]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolConicArc.hxx".}
proc ownDump*(this: IGESGeomToolConicArc; ent: Handle[IGESGeomConicArc];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESGeom_ToolConicArc.hxx".}
























