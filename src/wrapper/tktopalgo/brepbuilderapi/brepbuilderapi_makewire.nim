import brepbuilderapi_types

##  Created on: 1993-07-08
##  Created by: Remi LEQUETTE
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Vertex"


proc wire*(): BRepBuilderAPI_MakeWire {.cdecl, constructor,
    importcpp: "BRepBuilderAPI_MakeWire(@)", header: "BRepBuilderAPI_MakeWire.hxx".}
proc wire*(e: TopoDS_Edge): BRepBuilderAPI_MakeWire {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeWire(@)", header: "BRepBuilderAPI_MakeWire.hxx".}
proc wire*(e1: TopoDS_Edge; e2: TopoDS_Edge): BRepBuilderAPI_MakeWire {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeWire(@)", header: "BRepBuilderAPI_MakeWire.hxx".}
proc wire*(e1: TopoDS_Edge; e2: TopoDS_Edge; e3: TopoDS_Edge): BRepBuilderAPI_MakeWire {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeWire(@)", header: "BRepBuilderAPI_MakeWire.hxx".}
proc wire*(e1: TopoDS_Edge; e2: TopoDS_Edge; e3: TopoDS_Edge;
                                e4: TopoDS_Edge): BRepBuilderAPI_MakeWire {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeWire(@)", header: "BRepBuilderAPI_MakeWire.hxx".}
proc wire*(w: TopoDS_Wire): BRepBuilderAPI_MakeWire {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeWire(@)", header: "BRepBuilderAPI_MakeWire.hxx".}
proc wire*(w: TopoDS_Wire; e: TopoDS_Edge): BRepBuilderAPI_MakeWire {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeWire(@)", header: "BRepBuilderAPI_MakeWire.hxx".}
proc add*(this: var BRepBuilderAPI_MakeWire; e: TopoDS_Edge) {.cdecl, importcpp: "Add",
    header: "BRepBuilderAPI_MakeWire.hxx".}
proc add*(this: var BRepBuilderAPI_MakeWire; w: TopoDS_Wire) {.cdecl, importcpp: "Add",
    header: "BRepBuilderAPI_MakeWire.hxx".}
proc add*(this: var BRepBuilderAPI_MakeWire; L: TopToolsListOfShape) {.cdecl,
    importcpp: "Add", header: "BRepBuilderAPI_MakeWire.hxx".}
proc isDone*(this: BRepBuilderAPI_MakeWire): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeWire.hxx".}
proc error*(this: BRepBuilderAPI_MakeWire): BRepBuilderAPI_WireError {.noSideEffect,
    cdecl, importcpp: "Error", header: "BRepBuilderAPI_MakeWire.hxx".}
proc wire*(this: var BRepBuilderAPI_MakeWire): TopoDS_Wire {.cdecl, importcpp: "Wire",
    header: "BRepBuilderAPI_MakeWire.hxx".}
converter `topoDS_Wire`*(this: var BRepBuilderAPI_MakeWire): TopoDS_Wire {.cdecl,
    importcpp: "BRepBuilderAPI_MakeWire::operator TopoDS_Wire", header: "BRepBuilderAPI_MakeWire.hxx".}
proc edge*(this: BRepBuilderAPI_MakeWire): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edge", header: "BRepBuilderAPI_MakeWire.hxx".}
proc vertex*(this: BRepBuilderAPI_MakeWire): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex", header: "BRepBuilderAPI_MakeWire.hxx".}
