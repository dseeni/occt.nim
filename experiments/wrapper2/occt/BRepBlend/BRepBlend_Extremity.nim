##  Created on: 1994-01-25
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of IntSurf_Transition"
discard "forward decl of BRepBlend_PointOnRst"
type
  BRepBlendExtremity* {.importcpp: "BRepBlend_Extremity",
                       header: "BRepBlend_Extremity.hxx", bycopy.} = object


proc constructBRepBlendExtremity*(): BRepBlendExtremity {.constructor,
    importcpp: "BRepBlend_Extremity(@)", header: "BRepBlend_Extremity.hxx".}
proc constructBRepBlendExtremity*(p: Pnt; u: float; v: float; param: float; tol: float): BRepBlendExtremity {.
    constructor, importcpp: "BRepBlend_Extremity(@)",
    header: "BRepBlend_Extremity.hxx".}
proc constructBRepBlendExtremity*(p: Pnt; u: float; v: float; param: float; tol: float;
                                 vtx: Handle[Adaptor3dHVertex]): BRepBlendExtremity {.
    constructor, importcpp: "BRepBlend_Extremity(@)",
    header: "BRepBlend_Extremity.hxx".}
proc constructBRepBlendExtremity*(p: Pnt; w: float; param: float; tol: float): BRepBlendExtremity {.
    constructor, importcpp: "BRepBlend_Extremity(@)",
    header: "BRepBlend_Extremity.hxx".}
proc setValue*(this: var BRepBlendExtremity; p: Pnt; u: float; v: float; param: float;
              tol: float) {.importcpp: "SetValue", header: "BRepBlend_Extremity.hxx".}
proc setValue*(this: var BRepBlendExtremity; p: Pnt; u: float; v: float; param: float;
              tol: float; vtx: Handle[Adaptor3dHVertex]) {.importcpp: "SetValue",
    header: "BRepBlend_Extremity.hxx".}
proc setValue*(this: var BRepBlendExtremity; p: Pnt; w: float; param: float; tol: float) {.
    importcpp: "SetValue", header: "BRepBlend_Extremity.hxx".}
proc value*(this: BRepBlendExtremity): Pnt {.noSideEffect, importcpp: "Value",
    header: "BRepBlend_Extremity.hxx".}
proc setTangent*(this: var BRepBlendExtremity; tangent: Vec) {.
    importcpp: "SetTangent", header: "BRepBlend_Extremity.hxx".}
proc hasTangent*(this: BRepBlendExtremity): bool {.noSideEffect,
    importcpp: "HasTangent", header: "BRepBlend_Extremity.hxx".}
proc tangent*(this: BRepBlendExtremity): Vec {.noSideEffect, importcpp: "Tangent",
    header: "BRepBlend_Extremity.hxx".}
proc tolerance*(this: BRepBlendExtremity): float {.noSideEffect,
    importcpp: "Tolerance", header: "BRepBlend_Extremity.hxx".}
proc setVertex*(this: var BRepBlendExtremity; v: Handle[Adaptor3dHVertex]) {.
    importcpp: "SetVertex", header: "BRepBlend_Extremity.hxx".}
proc addArc*(this: var BRepBlendExtremity; a: Handle[Adaptor2dHCurve2d]; param: float;
            tLine: IntSurfTransition; tArc: IntSurfTransition) {.
    importcpp: "AddArc", header: "BRepBlend_Extremity.hxx".}
proc parameters*(this: BRepBlendExtremity; u: var float; v: var float) {.noSideEffect,
    importcpp: "Parameters", header: "BRepBlend_Extremity.hxx".}
proc isVertex*(this: BRepBlendExtremity): bool {.noSideEffect, importcpp: "IsVertex",
    header: "BRepBlend_Extremity.hxx".}
proc vertex*(this: BRepBlendExtremity): Handle[Adaptor3dHVertex] {.noSideEffect,
    importcpp: "Vertex", header: "BRepBlend_Extremity.hxx".}
proc nbPointOnRst*(this: BRepBlendExtremity): int {.noSideEffect,
    importcpp: "NbPointOnRst", header: "BRepBlend_Extremity.hxx".}
proc pointOnRst*(this: BRepBlendExtremity; index: int): BRepBlendPointOnRst {.
    noSideEffect, importcpp: "PointOnRst", header: "BRepBlend_Extremity.hxx".}
proc parameter*(this: BRepBlendExtremity): float {.noSideEffect,
    importcpp: "Parameter", header: "BRepBlend_Extremity.hxx".}
proc parameterOnGuide*(this: BRepBlendExtremity): float {.noSideEffect,
    importcpp: "ParameterOnGuide", header: "BRepBlend_Extremity.hxx".}
