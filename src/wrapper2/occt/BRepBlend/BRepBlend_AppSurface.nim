##  Created on: 1996-11-25
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Approx_SweepFunction"
type
  BRepBlendAppSurface* {.importcpp: "BRepBlend_AppSurface",
                        header: "BRepBlend_AppSurface.hxx", bycopy.} = object of AppBlendApprox ##
                                                                                         ## !
                                                                                         ## Approximation
                                                                                         ## of
                                                                                         ## the
                                                                                         ## new
                                                                                         ## Surface
                                                                                         ## (and
                                                                                         ##
                                                                                         ## !
                                                                                         ## eventually
                                                                                         ## the
                                                                                         ## 2d
                                                                                         ## Curves
                                                                                         ## on
                                                                                         ## the
                                                                                         ## support
                                                                                         ##
                                                                                         ## !
                                                                                         ## surfaces).
                                                                                         ##
                                                                                         ## !
                                                                                         ## Normaly
                                                                                         ## the
                                                                                         ## 2d
                                                                                         ## curve
                                                                                         ## are
                                                                                         ##
                                                                                         ## !
                                                                                         ## approximated
                                                                                         ## with
                                                                                         ## an
                                                                                         ## tolerance
                                                                                         ## given
                                                                                         ## by
                                                                                         ## the
                                                                                         ##
                                                                                         ## !
                                                                                         ## resolution
                                                                                         ## on
                                                                                         ## support
                                                                                         ## surfaces,
                                                                                         ## but
                                                                                         ## if
                                                                                         ## this
                                                                                         ##
                                                                                         ## !
                                                                                         ## tolerance
                                                                                         ## is
                                                                                         ## too
                                                                                         ## large
                                                                                         ## Tol2d
                                                                                         ## is
                                                                                         ## used.


proc constructBRepBlendAppSurface*(funct: Handle[ApproxSweepFunction];
                                  first: StandardReal; last: StandardReal;
                                  tol3d: StandardReal; tol2d: StandardReal;
                                  tolAngular: StandardReal;
                                  continuity: GeomAbsShape = geomAbsC0;
                                  degmax: StandardInteger = 11;
                                  segmax: StandardInteger = 50): BRepBlendAppSurface {.
    constructor, importcpp: "BRepBlend_AppSurface(@)",
    header: "BRepBlend_AppSurface.hxx".}
proc isDone*(this: BRepBlendAppSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBlend_AppSurface.hxx".}
proc surfShape*(this: BRepBlendAppSurface; uDegree: var StandardInteger;
               vDegree: var StandardInteger; nbUPoles: var StandardInteger;
               nbVPoles: var StandardInteger; nbUKnots: var StandardInteger;
               nbVKnots: var StandardInteger) {.noSideEffect,
    importcpp: "SurfShape", header: "BRepBlend_AppSurface.hxx".}
proc surface*(this: BRepBlendAppSurface; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "Surface", header: "BRepBlend_AppSurface.hxx".}
proc uDegree*(this: BRepBlendAppSurface): StandardInteger {.noSideEffect,
    importcpp: "UDegree", header: "BRepBlend_AppSurface.hxx".}
proc vDegree*(this: BRepBlendAppSurface): StandardInteger {.noSideEffect,
    importcpp: "VDegree", header: "BRepBlend_AppSurface.hxx".}
proc surfPoles*(this: BRepBlendAppSurface): TColgpArray2OfPnt {.noSideEffect,
    importcpp: "SurfPoles", header: "BRepBlend_AppSurface.hxx".}
proc surfWeights*(this: BRepBlendAppSurface): TColStdArray2OfReal {.noSideEffect,
    importcpp: "SurfWeights", header: "BRepBlend_AppSurface.hxx".}
proc surfUKnots*(this: BRepBlendAppSurface): TColStdArray1OfReal {.noSideEffect,
    importcpp: "SurfUKnots", header: "BRepBlend_AppSurface.hxx".}
proc surfVKnots*(this: BRepBlendAppSurface): TColStdArray1OfReal {.noSideEffect,
    importcpp: "SurfVKnots", header: "BRepBlend_AppSurface.hxx".}
proc surfUMults*(this: BRepBlendAppSurface): TColStdArray1OfInteger {.noSideEffect,
    importcpp: "SurfUMults", header: "BRepBlend_AppSurface.hxx".}
proc surfVMults*(this: BRepBlendAppSurface): TColStdArray1OfInteger {.noSideEffect,
    importcpp: "SurfVMults", header: "BRepBlend_AppSurface.hxx".}
proc maxErrorOnSurf*(this: BRepBlendAppSurface): StandardReal {.noSideEffect,
    importcpp: "MaxErrorOnSurf", header: "BRepBlend_AppSurface.hxx".}
proc nbCurves2d*(this: BRepBlendAppSurface): StandardInteger {.noSideEffect,
    importcpp: "NbCurves2d", header: "BRepBlend_AppSurface.hxx".}
proc curves2dShape*(this: BRepBlendAppSurface; degree: var StandardInteger;
                   nbPoles: var StandardInteger; nbKnots: var StandardInteger) {.
    noSideEffect, importcpp: "Curves2dShape", header: "BRepBlend_AppSurface.hxx".}
proc curve2d*(this: BRepBlendAppSurface; index: StandardInteger;
             tPoles: var TColgpArray1OfPnt2d; tKnots: var TColStdArray1OfReal;
             tMults: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "Curve2d", header: "BRepBlend_AppSurface.hxx".}
proc curves2dDegree*(this: BRepBlendAppSurface): StandardInteger {.noSideEffect,
    importcpp: "Curves2dDegree", header: "BRepBlend_AppSurface.hxx".}
proc curve2dPoles*(this: BRepBlendAppSurface; index: StandardInteger): TColgpArray1OfPnt2d {.
    noSideEffect, importcpp: "Curve2dPoles", header: "BRepBlend_AppSurface.hxx".}
proc curves2dKnots*(this: BRepBlendAppSurface): TColStdArray1OfReal {.noSideEffect,
    importcpp: "Curves2dKnots", header: "BRepBlend_AppSurface.hxx".}
proc curves2dMults*(this: BRepBlendAppSurface): TColStdArray1OfInteger {.
    noSideEffect, importcpp: "Curves2dMults", header: "BRepBlend_AppSurface.hxx".}
proc tolReached*(this: BRepBlendAppSurface; tol3d: var StandardReal;
                tol2d: var StandardReal) {.noSideEffect, importcpp: "TolReached",
                                        header: "BRepBlend_AppSurface.hxx".}
proc max2dError*(this: BRepBlendAppSurface; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Max2dError", header: "BRepBlend_AppSurface.hxx".}
proc tolCurveOnSurf*(this: BRepBlendAppSurface; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "TolCurveOnSurf", header: "BRepBlend_AppSurface.hxx".}
proc dump*(this: BRepBlendAppSurface; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "BRepBlend_AppSurface.hxx".}

