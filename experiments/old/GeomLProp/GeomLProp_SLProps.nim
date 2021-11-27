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

discard "forward decl of Geom_Surface"
discard "forward decl of LProp_BadContinuity"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of LProp_NotDefined"
discard "forward decl of GeomLProp_SurfaceTool"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
type
  GeomLPropSLProps* {.importcpp: "GeomLProp_SLProps",
                     header: "GeomLProp_SLProps.hxx", bycopy.} = object


proc `new`*(this: var GeomLPropSLProps; theSize: csize_t): pointer {.
    importcpp: "GeomLProp_SLProps::operator new", header: "GeomLProp_SLProps.hxx".}
proc `delete`*(this: var GeomLPropSLProps; theAddress: pointer) {.
    importcpp: "GeomLProp_SLProps::operator delete",
    header: "GeomLProp_SLProps.hxx".}
proc `new[]`*(this: var GeomLPropSLProps; theSize: csize_t): pointer {.
    importcpp: "GeomLProp_SLProps::operator new[]",
    header: "GeomLProp_SLProps.hxx".}
proc `delete[]`*(this: var GeomLPropSLProps; theAddress: pointer) {.
    importcpp: "GeomLProp_SLProps::operator delete[]",
    header: "GeomLProp_SLProps.hxx".}
proc `new`*(this: var GeomLPropSLProps; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomLProp_SLProps::operator new", header: "GeomLProp_SLProps.hxx".}
proc `delete`*(this: var GeomLPropSLProps; a2: pointer; a3: pointer) {.
    importcpp: "GeomLProp_SLProps::operator delete",
    header: "GeomLProp_SLProps.hxx".}
proc constructGeomLPropSLProps*(s: Handle[GeomSurface]; u: StandardReal;
                               v: StandardReal; n: int; resolution: StandardReal): GeomLPropSLProps {.
    constructor, importcpp: "GeomLProp_SLProps(@)", header: "GeomLProp_SLProps.hxx".}
proc constructGeomLPropSLProps*(s: Handle[GeomSurface]; n: int;
                               resolution: StandardReal): GeomLPropSLProps {.
    constructor, importcpp: "GeomLProp_SLProps(@)", header: "GeomLProp_SLProps.hxx".}
proc constructGeomLPropSLProps*(n: int; resolution: StandardReal): GeomLPropSLProps {.
    constructor, importcpp: "GeomLProp_SLProps(@)", header: "GeomLProp_SLProps.hxx".}
proc setSurface*(this: var GeomLPropSLProps; s: Handle[GeomSurface]) {.
    importcpp: "SetSurface", header: "GeomLProp_SLProps.hxx".}
proc setParameters*(this: var GeomLPropSLProps; u: StandardReal; v: StandardReal) {.
    importcpp: "SetParameters", header: "GeomLProp_SLProps.hxx".}
proc value*(this: GeomLPropSLProps): Pnt {.noSideEffect, importcpp: "Value",
                                       header: "GeomLProp_SLProps.hxx".}
proc d1u*(this: var GeomLPropSLProps): Vec {.importcpp: "D1U",
                                        header: "GeomLProp_SLProps.hxx".}
proc d1v*(this: var GeomLPropSLProps): Vec {.importcpp: "D1V",
                                        header: "GeomLProp_SLProps.hxx".}
proc d2u*(this: var GeomLPropSLProps): Vec {.importcpp: "D2U",
                                        header: "GeomLProp_SLProps.hxx".}
proc d2v*(this: var GeomLPropSLProps): Vec {.importcpp: "D2V",
                                        header: "GeomLProp_SLProps.hxx".}
proc duv*(this: var GeomLPropSLProps): Vec {.importcpp: "DUV",
                                        header: "GeomLProp_SLProps.hxx".}
proc isTangentUDefined*(this: var GeomLPropSLProps): StandardBoolean {.
    importcpp: "IsTangentUDefined", header: "GeomLProp_SLProps.hxx".}
proc tangentU*(this: var GeomLPropSLProps; d: var Dir) {.importcpp: "TangentU",
    header: "GeomLProp_SLProps.hxx".}
proc isTangentVDefined*(this: var GeomLPropSLProps): StandardBoolean {.
    importcpp: "IsTangentVDefined", header: "GeomLProp_SLProps.hxx".}
proc tangentV*(this: var GeomLPropSLProps; d: var Dir) {.importcpp: "TangentV",
    header: "GeomLProp_SLProps.hxx".}
proc isNormalDefined*(this: var GeomLPropSLProps): StandardBoolean {.
    importcpp: "IsNormalDefined", header: "GeomLProp_SLProps.hxx".}
proc normal*(this: var GeomLPropSLProps): Dir {.importcpp: "Normal",
    header: "GeomLProp_SLProps.hxx".}
proc isCurvatureDefined*(this: var GeomLPropSLProps): StandardBoolean {.
    importcpp: "IsCurvatureDefined", header: "GeomLProp_SLProps.hxx".}
proc isUmbilic*(this: var GeomLPropSLProps): StandardBoolean {.
    importcpp: "IsUmbilic", header: "GeomLProp_SLProps.hxx".}
proc maxCurvature*(this: var GeomLPropSLProps): StandardReal {.
    importcpp: "MaxCurvature", header: "GeomLProp_SLProps.hxx".}
proc minCurvature*(this: var GeomLPropSLProps): StandardReal {.
    importcpp: "MinCurvature", header: "GeomLProp_SLProps.hxx".}
proc curvatureDirections*(this: var GeomLPropSLProps; maxD: var Dir; minD: var Dir) {.
    importcpp: "CurvatureDirections", header: "GeomLProp_SLProps.hxx".}
proc meanCurvature*(this: var GeomLPropSLProps): StandardReal {.
    importcpp: "MeanCurvature", header: "GeomLProp_SLProps.hxx".}
proc gaussianCurvature*(this: var GeomLPropSLProps): StandardReal {.
    importcpp: "GaussianCurvature", header: "GeomLProp_SLProps.hxx".}