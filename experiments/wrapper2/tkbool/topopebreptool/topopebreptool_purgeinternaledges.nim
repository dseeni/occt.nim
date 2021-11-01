##  Created on: 1998-11-19
##  Created by: Jean-Michel BOULCOURT
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NullObject"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepToolPurgeInternalEdges* {.importcpp: "TopOpeBRepTool_PurgeInternalEdges", header: "TopOpeBRepTool_PurgeInternalEdges.hxx",
                                     bycopy.} = object ## ! Initialize   members and  begin  exploration   of  shape
                                                    ## ! depending of the value of PerformNow
                                                    ## ! Do the main job. Explore all the  edges of myShape and
                                                    ## ! build a map with  faces as a key  and list of internal
                                                    ## ! edges(without connected faces) as value.


proc newTopOpeBRepToolPurgeInternalEdges*(theShape: TopoDS_Shape;
    performNow: bool = true): TopOpeBRepToolPurgeInternalEdges {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_PurgeInternalEdges(@)", dynlib: tkbool.}
proc faces*(this: var TopOpeBRepToolPurgeInternalEdges;
           theMapFacLstEdg: var TopToolsDataMapOfShapeListOfShape) {.cdecl,
    importcpp: "Faces", dynlib: tkbool.}
proc shape*(this: var TopOpeBRepToolPurgeInternalEdges): var TopoDS_Shape {.cdecl,
    importcpp: "Shape", dynlib: tkbool.}
proc nbEdges*(this: TopOpeBRepToolPurgeInternalEdges): cint {.noSideEffect, cdecl,
    importcpp: "NbEdges", dynlib: tkbool.}
proc isDone*(this: TopOpeBRepToolPurgeInternalEdges): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkbool.}
proc perform*(this: var TopOpeBRepToolPurgeInternalEdges) {.cdecl,
    importcpp: "Perform", dynlib: tkbool.}