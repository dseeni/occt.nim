##  Created on: 1992-03-26
##  Created by: Herve LEGRAND
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of LProp_BadContinuity"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of LProp_NotDefined"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of GeomLProp_CurveTool"
type
  GeomLPropCLProps* {.importcpp: "GeomLProp_CLProps",
                     header: "GeomLProp_CLProps.hxx", bycopy.} = object ## ! Initializes the local properties of the curve <C>
                                                                   ## ! The current point and the derivatives are
                                                                   ## ! computed at the same time, which allows an
                                                                   ## ! optimization of the computation time.
                                                                   ## ! <N> indicates the maximum number of derivations to
                                                                   ## ! be done (0, 1, 2 or 3). For example, to compute
                                                                   ## ! only the tangent, N should be equal to 1.
                                                                   ## ! <Resolution> is the linear tolerance (it is used to test
                                                                   ## ! if a vector is null).


proc constructGeomLPropCLProps*(c: Handle[GeomCurve]; n: StandardInteger;
                               resolution: StandardReal): GeomLPropCLProps {.
    constructor, importcpp: "GeomLProp_CLProps(@)", header: "GeomLProp_CLProps.hxx".}
proc constructGeomLPropCLProps*(c: Handle[GeomCurve]; u: StandardReal;
                               n: StandardInteger; resolution: StandardReal): GeomLPropCLProps {.
    constructor, importcpp: "GeomLProp_CLProps(@)", header: "GeomLProp_CLProps.hxx".}
proc constructGeomLPropCLProps*(n: StandardInteger; resolution: StandardReal): GeomLPropCLProps {.
    constructor, importcpp: "GeomLProp_CLProps(@)", header: "GeomLProp_CLProps.hxx".}
proc setParameter*(this: var GeomLPropCLProps; u: StandardReal) {.
    importcpp: "SetParameter", header: "GeomLProp_CLProps.hxx".}
proc setCurve*(this: var GeomLPropCLProps; c: Handle[GeomCurve]) {.
    importcpp: "SetCurve", header: "GeomLProp_CLProps.hxx".}
proc value*(this: GeomLPropCLProps): GpPnt {.noSideEffect, importcpp: "Value",
    header: "GeomLProp_CLProps.hxx".}
proc d1*(this: var GeomLPropCLProps): GpVec {.importcpp: "D1",
    header: "GeomLProp_CLProps.hxx".}
proc d2*(this: var GeomLPropCLProps): GpVec {.importcpp: "D2",
    header: "GeomLProp_CLProps.hxx".}
proc d3*(this: var GeomLPropCLProps): GpVec {.importcpp: "D3",
    header: "GeomLProp_CLProps.hxx".}
proc isTangentDefined*(this: var GeomLPropCLProps): StandardBoolean {.
    importcpp: "IsTangentDefined", header: "GeomLProp_CLProps.hxx".}
proc tangent*(this: var GeomLPropCLProps; d: var GpDir) {.importcpp: "Tangent",
    header: "GeomLProp_CLProps.hxx".}
proc curvature*(this: var GeomLPropCLProps): StandardReal {.importcpp: "Curvature",
    header: "GeomLProp_CLProps.hxx".}
proc normal*(this: var GeomLPropCLProps; n: var GpDir) {.importcpp: "Normal",
    header: "GeomLProp_CLProps.hxx".}
proc centreOfCurvature*(this: var GeomLPropCLProps; p: var GpPnt) {.
    importcpp: "CentreOfCurvature", header: "GeomLProp_CLProps.hxx".}

