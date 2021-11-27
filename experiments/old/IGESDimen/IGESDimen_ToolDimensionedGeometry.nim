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
discard "forward decl of IGESDimen_DimensionedGeometry"
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
  IGESDimenToolDimensionedGeometry* {.importcpp: "IGESDimen_ToolDimensionedGeometry", header: "IGESDimen_ToolDimensionedGeometry.hxx",
                                     bycopy.} = object ## ! Returns a ToolDimensionedGeometry, ready to work


proc constructIGESDimenToolDimensionedGeometry*(): IGESDimenToolDimensionedGeometry {.
    constructor, importcpp: "IGESDimen_ToolDimensionedGeometry(@)",
    header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc readOwnParams*(this: IGESDimenToolDimensionedGeometry;
                   ent: Handle[IGESDimenDimensionedGeometry];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc writeOwnParams*(this: IGESDimenToolDimensionedGeometry;
                    ent: Handle[IGESDimenDimensionedGeometry];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc ownShared*(this: IGESDimenToolDimensionedGeometry;
               ent: Handle[IGESDimenDimensionedGeometry];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc ownCorrect*(this: IGESDimenToolDimensionedGeometry;
                ent: Handle[IGESDimenDimensionedGeometry]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc dirChecker*(this: IGESDimenToolDimensionedGeometry;
                ent: Handle[IGESDimenDimensionedGeometry]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc ownCheck*(this: IGESDimenToolDimensionedGeometry;
              ent: Handle[IGESDimenDimensionedGeometry];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc ownCopy*(this: IGESDimenToolDimensionedGeometry;
             entfrom: Handle[IGESDimenDimensionedGeometry];
             entto: Handle[IGESDimenDimensionedGeometry];
             tc: var InterfaceCopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc ownDump*(this: IGESDimenToolDimensionedGeometry;
             ent: Handle[IGESDimenDimensionedGeometry];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump",
    header: "IGESDimen_ToolDimensionedGeometry.hxx".}
























