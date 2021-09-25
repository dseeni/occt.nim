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
discard "forward decl of IGESGeom_SplineCurve"
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
  IGESGeomToolSplineCurve* {.importcpp: "IGESGeom_ToolSplineCurve",
                            header: "IGESGeom_ToolSplineCurve.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## a
                                                                                 ## ToolSplineCurve,
                                                                                 ## ready
                                                                                 ## to
                                                                                 ## work


proc constructIGESGeomToolSplineCurve*(): IGESGeomToolSplineCurve {.constructor,
    importcpp: "IGESGeom_ToolSplineCurve(@)",
    header: "IGESGeom_ToolSplineCurve.hxx".}
proc readOwnParams*(this: IGESGeomToolSplineCurve;
                   ent: Handle[IGESGeomSplineCurve];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGeom_ToolSplineCurve.hxx".}
proc writeOwnParams*(this: IGESGeomToolSplineCurve;
                    ent: Handle[IGESGeomSplineCurve]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESGeom_ToolSplineCurve.hxx".}
proc ownShared*(this: IGESGeomToolSplineCurve; ent: Handle[IGESGeomSplineCurve];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolSplineCurve.hxx".}
proc dirChecker*(this: IGESGeomToolSplineCurve; ent: Handle[IGESGeomSplineCurve]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGeom_ToolSplineCurve.hxx".}
proc ownCheck*(this: IGESGeomToolSplineCurve; ent: Handle[IGESGeomSplineCurve];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGeom_ToolSplineCurve.hxx".}
proc ownCopy*(this: IGESGeomToolSplineCurve; entfrom: Handle[IGESGeomSplineCurve];
             entto: Handle[IGESGeomSplineCurve]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolSplineCurve.hxx".}
proc ownDump*(this: IGESGeomToolSplineCurve; ent: Handle[IGESGeomSplineCurve];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESGeom_ToolSplineCurve.hxx".}
