##  Created on: 1992-10-14
##  Created by: Christophe MARION
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

discard "forward decl of LProp_BadContinuity"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of LProp_NotDefined"
discard "forward decl of HLRBRep_SLPropsATool"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
type
  HLRBRepSLProps* {.importcpp: "HLRBRep_SLProps", header: "HLRBRep_SLProps.hxx",
                   bycopy.} = object ## ! Initializes the local properties of the surface <S>
                                  ## ! for the parameter values (<U>, <V>).
                                  ## ! The current point and the derivatives are
                                  ## ! computed at the same time, which allows an
                                  ## ! optimization of the computation time.
                                  ## ! <N> indicates the maximum number of derivations to
                                  ## ! be done (0, 1, or 2). For example, to compute
                                  ## ! only the tangent, N should be equal to 1.
                                  ## ! <Resolution> is the linear tolerance (it is used to test
                                  ## ! if a vector is null).


proc constructHLRBRepSLProps*(s: StandardAddress; u: StandardReal; v: StandardReal;
                             n: StandardInteger; resolution: StandardReal): HLRBRepSLProps {.
    constructor, importcpp: "HLRBRep_SLProps(@)", header: "HLRBRep_SLProps.hxx".}
proc constructHLRBRepSLProps*(s: StandardAddress; n: StandardInteger;
                             resolution: StandardReal): HLRBRepSLProps {.
    constructor, importcpp: "HLRBRep_SLProps(@)", header: "HLRBRep_SLProps.hxx".}
proc constructHLRBRepSLProps*(n: StandardInteger; resolution: StandardReal): HLRBRepSLProps {.
    constructor, importcpp: "HLRBRep_SLProps(@)", header: "HLRBRep_SLProps.hxx".}
proc setSurface*(this: var HLRBRepSLProps; s: StandardAddress) {.
    importcpp: "SetSurface", header: "HLRBRep_SLProps.hxx".}
proc setParameters*(this: var HLRBRepSLProps; u: StandardReal; v: StandardReal) {.
    importcpp: "SetParameters", header: "HLRBRep_SLProps.hxx".}
proc value*(this: HLRBRepSLProps): GpPnt {.noSideEffect, importcpp: "Value",
                                       header: "HLRBRep_SLProps.hxx".}
proc d1u*(this: var HLRBRepSLProps): GpVec {.importcpp: "D1U",
                                        header: "HLRBRep_SLProps.hxx".}
proc d1v*(this: var HLRBRepSLProps): GpVec {.importcpp: "D1V",
                                        header: "HLRBRep_SLProps.hxx".}
proc d2u*(this: var HLRBRepSLProps): GpVec {.importcpp: "D2U",
                                        header: "HLRBRep_SLProps.hxx".}
proc d2v*(this: var HLRBRepSLProps): GpVec {.importcpp: "D2V",
                                        header: "HLRBRep_SLProps.hxx".}
proc duv*(this: var HLRBRepSLProps): GpVec {.importcpp: "DUV",
                                        header: "HLRBRep_SLProps.hxx".}
proc isTangentUDefined*(this: var HLRBRepSLProps): StandardBoolean {.
    importcpp: "IsTangentUDefined", header: "HLRBRep_SLProps.hxx".}
proc tangentU*(this: var HLRBRepSLProps; d: var GpDir) {.importcpp: "TangentU",
    header: "HLRBRep_SLProps.hxx".}
proc isTangentVDefined*(this: var HLRBRepSLProps): StandardBoolean {.
    importcpp: "IsTangentVDefined", header: "HLRBRep_SLProps.hxx".}
proc tangentV*(this: var HLRBRepSLProps; d: var GpDir) {.importcpp: "TangentV",
    header: "HLRBRep_SLProps.hxx".}
proc isNormalDefined*(this: var HLRBRepSLProps): StandardBoolean {.
    importcpp: "IsNormalDefined", header: "HLRBRep_SLProps.hxx".}
proc normal*(this: var HLRBRepSLProps): GpDir {.importcpp: "Normal",
    header: "HLRBRep_SLProps.hxx".}
proc isCurvatureDefined*(this: var HLRBRepSLProps): StandardBoolean {.
    importcpp: "IsCurvatureDefined", header: "HLRBRep_SLProps.hxx".}
proc isUmbilic*(this: var HLRBRepSLProps): StandardBoolean {.importcpp: "IsUmbilic",
    header: "HLRBRep_SLProps.hxx".}
proc maxCurvature*(this: var HLRBRepSLProps): StandardReal {.
    importcpp: "MaxCurvature", header: "HLRBRep_SLProps.hxx".}
proc minCurvature*(this: var HLRBRepSLProps): StandardReal {.
    importcpp: "MinCurvature", header: "HLRBRep_SLProps.hxx".}
proc curvatureDirections*(this: var HLRBRepSLProps; maxD: var GpDir; minD: var GpDir) {.
    importcpp: "CurvatureDirections", header: "HLRBRep_SLProps.hxx".}
proc meanCurvature*(this: var HLRBRepSLProps): StandardReal {.
    importcpp: "MeanCurvature", header: "HLRBRep_SLProps.hxx".}
proc gaussianCurvature*(this: var HLRBRepSLProps): StandardReal {.
    importcpp: "GaussianCurvature", header: "HLRBRep_SLProps.hxx".}

