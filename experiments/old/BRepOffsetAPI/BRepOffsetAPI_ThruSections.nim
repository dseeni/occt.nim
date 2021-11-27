##  Created on: 1995-07-17
##  Created by: Jing-Cheng MEI
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_BSplineSurface"
type
  BRepOffsetAPI_ThruSections* {.importcpp: "BRepOffsetAPI_ThruSections",
                               header: "BRepOffsetAPI_ThruSections.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape
    ## !< List of input wires
    ## !< Working wires


proc `new`*(this: var BRepOffsetAPI_ThruSections; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_ThruSections::operator new",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc `delete`*(this: var BRepOffsetAPI_ThruSections; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_ThruSections::operator delete",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc `new[]`*(this: var BRepOffsetAPI_ThruSections; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_ThruSections::operator new[]",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc `delete[]`*(this: var BRepOffsetAPI_ThruSections; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_ThruSections::operator delete[]",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc `new`*(this: var BRepOffsetAPI_ThruSections; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepOffsetAPI_ThruSections::operator new",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc `delete`*(this: var BRepOffsetAPI_ThruSections; a2: pointer; a3: pointer) {.
    importcpp: "BRepOffsetAPI_ThruSections::operator delete",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc constructBRepOffsetAPI_ThruSections*(isSolid: StandardBoolean = false;
    ruled: StandardBoolean = false; pres3d: StandardReal = 1.0e-06): BRepOffsetAPI_ThruSections {.
    constructor, importcpp: "BRepOffsetAPI_ThruSections(@)",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc init*(this: var BRepOffsetAPI_ThruSections; isSolid: StandardBoolean = false;
          ruled: StandardBoolean = false; pres3d: StandardReal = 1.0e-06) {.
    importcpp: "Init", header: "BRepOffsetAPI_ThruSections.hxx".}
proc addWire*(this: var BRepOffsetAPI_ThruSections; wire: TopoDS_Wire) {.
    importcpp: "AddWire", header: "BRepOffsetAPI_ThruSections.hxx".}
proc addVertex*(this: var BRepOffsetAPI_ThruSections; aVertex: TopoDS_Vertex) {.
    importcpp: "AddVertex", header: "BRepOffsetAPI_ThruSections.hxx".}
proc checkCompatibility*(this: var BRepOffsetAPI_ThruSections;
                        check: StandardBoolean = true) {.
    importcpp: "CheckCompatibility", header: "BRepOffsetAPI_ThruSections.hxx".}
proc setSmoothing*(this: var BRepOffsetAPI_ThruSections;
                  useSmoothing: StandardBoolean) {.importcpp: "SetSmoothing",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc setParType*(this: var BRepOffsetAPI_ThruSections;
                parType: ApproxParametrizationType) {.importcpp: "SetParType",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc setContinuity*(this: var BRepOffsetAPI_ThruSections; c: GeomAbsShape) {.
    importcpp: "SetContinuity", header: "BRepOffsetAPI_ThruSections.hxx".}
proc setCriteriumWeight*(this: var BRepOffsetAPI_ThruSections; w1: StandardReal;
                        w2: StandardReal; w3: StandardReal) {.
    importcpp: "SetCriteriumWeight", header: "BRepOffsetAPI_ThruSections.hxx".}
proc setMaxDegree*(this: var BRepOffsetAPI_ThruSections; maxDeg: int) {.
    importcpp: "SetMaxDegree", header: "BRepOffsetAPI_ThruSections.hxx".}
proc parType*(this: BRepOffsetAPI_ThruSections): ApproxParametrizationType {.
    noSideEffect, importcpp: "ParType", header: "BRepOffsetAPI_ThruSections.hxx".}
proc continuity*(this: BRepOffsetAPI_ThruSections): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "BRepOffsetAPI_ThruSections.hxx".}
proc maxDegree*(this: BRepOffsetAPI_ThruSections): int {.noSideEffect,
    importcpp: "MaxDegree", header: "BRepOffsetAPI_ThruSections.hxx".}
proc useSmoothing*(this: BRepOffsetAPI_ThruSections): StandardBoolean {.
    noSideEffect, importcpp: "UseSmoothing",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc criteriumWeight*(this: BRepOffsetAPI_ThruSections; w1: var StandardReal;
                     w2: var StandardReal; w3: var StandardReal) {.noSideEffect,
    importcpp: "CriteriumWeight", header: "BRepOffsetAPI_ThruSections.hxx".}
proc build*(this: var BRepOffsetAPI_ThruSections) {.importcpp: "Build",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc firstShape*(this: BRepOffsetAPI_ThruSections): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "BRepOffsetAPI_ThruSections.hxx".}
proc lastShape*(this: BRepOffsetAPI_ThruSections): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "BRepOffsetAPI_ThruSections.hxx".}
proc generatedFace*(this: BRepOffsetAPI_ThruSections; edge: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "GeneratedFace",
    header: "BRepOffsetAPI_ThruSections.hxx".}
proc generated*(this: var BRepOffsetAPI_ThruSections; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_ThruSections.hxx".}
proc wires*(this: BRepOffsetAPI_ThruSections): TopToolsListOfShape {.noSideEffect,
    importcpp: "Wires", header: "BRepOffsetAPI_ThruSections.hxx".}