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
discard "forward decl of IGESGeom_CompositeCurve"
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
  IGESGeomToolCompositeCurve* {.importcpp: "IGESGeom_ToolCompositeCurve",
                               header: "IGESGeom_ToolCompositeCurve.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## a
                                                                                       ## ToolCompositeCurve,
                                                                                       ## ready
                                                                                       ## to
                                                                                       ## work


proc constructIGESGeomToolCompositeCurve*(): IGESGeomToolCompositeCurve {.
    constructor, importcpp: "IGESGeom_ToolCompositeCurve(@)",
    header: "IGESGeom_ToolCompositeCurve.hxx".}
proc readOwnParams*(this: IGESGeomToolCompositeCurve;
                   ent: Handle[IGESGeomCompositeCurve];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGeom_ToolCompositeCurve.hxx".}
proc writeOwnParams*(this: IGESGeomToolCompositeCurve;
                    ent: Handle[IGESGeomCompositeCurve];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGeom_ToolCompositeCurve.hxx".}
proc ownShared*(this: IGESGeomToolCompositeCurve;
               ent: Handle[IGESGeomCompositeCurve];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolCompositeCurve.hxx".}
proc dirChecker*(this: IGESGeomToolCompositeCurve;
                ent: Handle[IGESGeomCompositeCurve]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESGeom_ToolCompositeCurve.hxx".}
proc ownCheck*(this: IGESGeomToolCompositeCurve;
              ent: Handle[IGESGeomCompositeCurve]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESGeom_ToolCompositeCurve.hxx".}
proc ownCopy*(this: IGESGeomToolCompositeCurve;
             entfrom: Handle[IGESGeomCompositeCurve];
             entto: Handle[IGESGeomCompositeCurve]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolCompositeCurve.hxx".}
proc ownDump*(this: IGESGeomToolCompositeCurve;
             ent: Handle[IGESGeomCompositeCurve]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESGeom_ToolCompositeCurve.hxx".}
























