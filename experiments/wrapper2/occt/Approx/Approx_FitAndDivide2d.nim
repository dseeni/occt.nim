##  Created on: 1993-01-26
##  Created by: Laurent PAINNOT
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

discard "forward decl of AppParCurves_MultiCurve"
type
  ApproxFitAndDivide2d* {.importcpp: "Approx_FitAndDivide2d",
                         header: "Approx_FitAndDivide2d.hxx", bycopy.} = object ## ! The
                                                                           ## MultiLine
                                                                           ## <Line> will be
                                                                           ## approximated until
                                                                           ## tolerances
                                                                           ## ! will be
                                                                           ## reached.
                                                                           ## ! The
                                                                           ## approximation will be done from
                                                                           ## degreemin to
                                                                           ## degreemax
                                                                           ## ! with a
                                                                           ## cutting if the
                                                                           ## corresponding
                                                                           ## boolean is True.
                                                                           ## ! is
                                                                           ## internally used by the
                                                                           ## algorithms.


proc constructApproxFitAndDivide2d*(line: AppContFunction; degreemin: int = 3;
                                   degreemax: int = 8; tolerance3d: float = 1.0e-5;
                                   tolerance2d: float = 1.0e-5;
                                   cutting: bool = false; firstC: AppParCurvesConstraint = appParCurvesTangencyPoint;
    lastC: AppParCurvesConstraint = appParCurvesTangencyPoint): ApproxFitAndDivide2d {.
    constructor, importcpp: "Approx_FitAndDivide2d(@)",
    header: "Approx_FitAndDivide2d.hxx".}
proc constructApproxFitAndDivide2d*(degreemin: int = 3; degreemax: int = 8;
                                   tolerance3d: float = 1.0e-05;
                                   tolerance2d: float = 1.0e-05;
                                   cutting: bool = false; firstC: AppParCurvesConstraint = appParCurvesTangencyPoint;
    lastC: AppParCurvesConstraint = appParCurvesTangencyPoint): ApproxFitAndDivide2d {.
    constructor, importcpp: "Approx_FitAndDivide2d(@)",
    header: "Approx_FitAndDivide2d.hxx".}
proc perform*(this: var ApproxFitAndDivide2d; line: AppContFunction) {.
    importcpp: "Perform", header: "Approx_FitAndDivide2d.hxx".}
proc setDegrees*(this: var ApproxFitAndDivide2d; degreemin: int; degreemax: int) {.
    importcpp: "SetDegrees", header: "Approx_FitAndDivide2d.hxx".}
proc setTolerances*(this: var ApproxFitAndDivide2d; tolerance3d: float;
                   tolerance2d: float) {.importcpp: "SetTolerances",
                                       header: "Approx_FitAndDivide2d.hxx".}
proc setConstraints*(this: var ApproxFitAndDivide2d; firstC: AppParCurvesConstraint;
                    lastC: AppParCurvesConstraint) {.importcpp: "SetConstraints",
    header: "Approx_FitAndDivide2d.hxx".}
proc setMaxSegments*(this: var ApproxFitAndDivide2d; theMaxSegments: int) {.
    importcpp: "SetMaxSegments", header: "Approx_FitAndDivide2d.hxx".}
proc setInvOrder*(this: var ApproxFitAndDivide2d; theInvOrder: bool) {.
    importcpp: "SetInvOrder", header: "Approx_FitAndDivide2d.hxx".}
proc setHangChecking*(this: var ApproxFitAndDivide2d; theHangChecking: bool) {.
    importcpp: "SetHangChecking", header: "Approx_FitAndDivide2d.hxx".}
proc isAllApproximated*(this: ApproxFitAndDivide2d): bool {.noSideEffect,
    importcpp: "IsAllApproximated", header: "Approx_FitAndDivide2d.hxx".}
proc isToleranceReached*(this: ApproxFitAndDivide2d): bool {.noSideEffect,
    importcpp: "IsToleranceReached", header: "Approx_FitAndDivide2d.hxx".}
proc error*(this: ApproxFitAndDivide2d; index: int; tol3d: var float; tol2d: var float) {.
    noSideEffect, importcpp: "Error", header: "Approx_FitAndDivide2d.hxx".}
proc nbMultiCurves*(this: ApproxFitAndDivide2d): int {.noSideEffect,
    importcpp: "NbMultiCurves", header: "Approx_FitAndDivide2d.hxx".}
proc value*(this: ApproxFitAndDivide2d; index: int = 1): AppParCurvesMultiCurve {.
    noSideEffect, importcpp: "Value", header: "Approx_FitAndDivide2d.hxx".}
proc parameters*(this: ApproxFitAndDivide2d; index: int; firstp: var float;
                lastp: var float) {.noSideEffect, importcpp: "Parameters",
                                 header: "Approx_FitAndDivide2d.hxx".}
