##  Created on: 1995-06-06
##  Created by: Jean Yves LEBEY
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of BRepApprox_SurfaceTool"
discard "forward decl of IntSurf_Quadric"
discard "forward decl of IntSurf_QuadricTool"
discard "forward decl of BRepApprox_ApproxLine"
discard "forward decl of BRepApprox_ThePrmPrmSvSurfacesOfApprox"
discard "forward decl of BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox"
discard "forward decl of BRepApprox_TheImpPrmSvSurfacesOfApprox"
discard "forward decl of BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox"
discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of BRepApprox_TheComputeLineOfApprox"
discard "forward decl of BRepApprox_MyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_MyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_TheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_MyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of AppParCurves_MultiBSpCurve"
type
  BRepApproxApprox* {.importcpp: "BRepApprox_Approx",
                     header: "BRepApprox_Approx.hxx", bycopy.} = object


proc constructBRepApproxApprox*(): BRepApproxApprox {.constructor,
    importcpp: "BRepApprox_Approx(@)", header: "BRepApprox_Approx.hxx".}
proc perform*(this: var BRepApproxApprox; surf1: BRepAdaptorSurface;
             surf2: BRepAdaptorSurface; aLine: Handle[BRepApproxApproxLine];
             approxXYZ: bool = true; approxU1V1: bool = true; approxU2V2: bool = true;
             indicemin: cint = 0; indicemax: cint = 0) {.importcpp: "Perform",
    header: "BRepApprox_Approx.hxx".}
proc perform*(this: var BRepApproxApprox; aLine: Handle[BRepApproxApproxLine];
             approxXYZ: bool = true; approxU1V1: bool = true; approxU2V2: bool = true;
             indicemin: cint = 0; indicemax: cint = 0) {.importcpp: "Perform",
    header: "BRepApprox_Approx.hxx".}
proc setParameters*(this: var BRepApproxApprox; tol3d: cfloat; tol2d: cfloat;
                   degMin: cint; degMax: cint; nbIterMax: cint; nbPntMax: cint = 30;
                   approxWithTangency: bool = true; parametrization: ApproxParametrizationType = approxChordLength) {.
    importcpp: "SetParameters", header: "BRepApprox_Approx.hxx".}
proc perform*(this: var BRepApproxApprox) {.importcpp: "Perform",
                                        header: "BRepApprox_Approx.hxx".}
proc tolReached3d*(this: BRepApproxApprox): cfloat {.noSideEffect,
    importcpp: "TolReached3d", header: "BRepApprox_Approx.hxx".}
proc tolReached2d*(this: BRepApproxApprox): cfloat {.noSideEffect,
    importcpp: "TolReached2d", header: "BRepApprox_Approx.hxx".}
proc isDone*(this: BRepApproxApprox): bool {.noSideEffect, importcpp: "IsDone",
    header: "BRepApprox_Approx.hxx".}
proc nbMultiCurves*(this: BRepApproxApprox): cint {.noSideEffect,
    importcpp: "NbMultiCurves", header: "BRepApprox_Approx.hxx".}
proc value*(this: BRepApproxApprox; index: cint): AppParCurvesMultiBSpCurve {.
    noSideEffect, importcpp: "Value", header: "BRepApprox_Approx.hxx".}

























