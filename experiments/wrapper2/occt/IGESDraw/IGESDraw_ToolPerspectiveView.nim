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
discard "forward decl of IGESDraw_PerspectiveView"
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
  IGESDrawToolPerspectiveView* {.importcpp: "IGESDraw_ToolPerspectiveView",
                                header: "IGESDraw_ToolPerspectiveView.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## a
                                                                                         ## ToolPerspectiveView,
                                                                                         ## ready
                                                                                         ## to
                                                                                         ## work


proc constructIGESDrawToolPerspectiveView*(): IGESDrawToolPerspectiveView {.
    constructor, importcpp: "IGESDraw_ToolPerspectiveView(@)",
    header: "IGESDraw_ToolPerspectiveView.hxx".}
proc readOwnParams*(this: IGESDrawToolPerspectiveView;
                   ent: Handle[IGESDrawPerspectiveView];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDraw_ToolPerspectiveView.hxx".}
proc writeOwnParams*(this: IGESDrawToolPerspectiveView;
                    ent: Handle[IGESDrawPerspectiveView];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDraw_ToolPerspectiveView.hxx".}
proc ownShared*(this: IGESDrawToolPerspectiveView;
               ent: Handle[IGESDrawPerspectiveView];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDraw_ToolPerspectiveView.hxx".}
proc dirChecker*(this: IGESDrawToolPerspectiveView;
                ent: Handle[IGESDrawPerspectiveView]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDraw_ToolPerspectiveView.hxx".}
proc ownCheck*(this: IGESDrawToolPerspectiveView;
              ent: Handle[IGESDrawPerspectiveView]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESDraw_ToolPerspectiveView.hxx".}
proc ownCopy*(this: IGESDrawToolPerspectiveView;
             entfrom: Handle[IGESDrawPerspectiveView];
             entto: Handle[IGESDrawPerspectiveView]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDraw_ToolPerspectiveView.hxx".}
proc ownDump*(this: IGESDrawToolPerspectiveView;
             ent: Handle[IGESDrawPerspectiveView]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESDraw_ToolPerspectiveView.hxx".}

























