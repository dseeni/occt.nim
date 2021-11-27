##  Created on: 1993-12-07
##  Created by: Modelistation
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  BRepGPropEdgeTool* {.importcpp: "BRepGProp_EdgeTool",
                      header: "BRepGProp_EdgeTool.hxx", bycopy.} = object


proc `new`*(this: var BRepGPropEdgeTool; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_EdgeTool::operator new",
    header: "BRepGProp_EdgeTool.hxx".}
proc `delete`*(this: var BRepGPropEdgeTool; theAddress: pointer) {.
    importcpp: "BRepGProp_EdgeTool::operator delete",
    header: "BRepGProp_EdgeTool.hxx".}
proc `new[]`*(this: var BRepGPropEdgeTool; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_EdgeTool::operator new[]",
    header: "BRepGProp_EdgeTool.hxx".}
proc `delete[]`*(this: var BRepGPropEdgeTool; theAddress: pointer) {.
    importcpp: "BRepGProp_EdgeTool::operator delete[]",
    header: "BRepGProp_EdgeTool.hxx".}
proc `new`*(this: var BRepGPropEdgeTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepGProp_EdgeTool::operator new",
    header: "BRepGProp_EdgeTool.hxx".}
proc `delete`*(this: var BRepGPropEdgeTool; a2: pointer; a3: pointer) {.
    importcpp: "BRepGProp_EdgeTool::operator delete",
    header: "BRepGProp_EdgeTool.hxx".}
proc firstParameter*(c: BRepAdaptorCurve): StandardReal {.
    importcpp: "BRepGProp_EdgeTool::FirstParameter(@)",
    header: "BRepGProp_EdgeTool.hxx".}
proc lastParameter*(c: BRepAdaptorCurve): StandardReal {.
    importcpp: "BRepGProp_EdgeTool::LastParameter(@)",
    header: "BRepGProp_EdgeTool.hxx".}
proc integrationOrder*(c: BRepAdaptorCurve): int {.
    importcpp: "BRepGProp_EdgeTool::IntegrationOrder(@)",
    header: "BRepGProp_EdgeTool.hxx".}
proc value*(c: BRepAdaptorCurve; u: StandardReal): Pnt {.
    importcpp: "BRepGProp_EdgeTool::Value(@)", header: "BRepGProp_EdgeTool.hxx".}
proc d1*(c: BRepAdaptorCurve; u: StandardReal; p: var Pnt; v1: var Vec) {.
    importcpp: "BRepGProp_EdgeTool::D1(@)", header: "BRepGProp_EdgeTool.hxx".}
proc nbIntervals*(c: BRepAdaptorCurve; s: GeomAbsShape): int {.
    importcpp: "BRepGProp_EdgeTool::NbIntervals(@)",
    header: "BRepGProp_EdgeTool.hxx".}
proc intervals*(c: BRepAdaptorCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    importcpp: "BRepGProp_EdgeTool::Intervals(@)",
    header: "BRepGProp_EdgeTool.hxx".}