##  Copyright (c) 2018 OPEN CASCADE SAS
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

## ! Simple structure containing parameters describing parameterization
## ! of a B-spline curve or a surface in one direction (U or V),
## ! and data of the current span for its caching

type
  BSplCLibCacheParams* {.importcpp: "BSplCLib_CacheParams",
                        header: "BSplCLib_CacheParams.hxx", bycopy.} = object ##  copying is prohibited
    degree* {.importc: "Degree".}: int ## /< degree of Bezier/B-spline
    isPeriodic* {.importc: "IsPeriodic".}: bool ## /< true of the B-spline is periodic
    firstParameter* {.importc: "FirstParameter".}: float ## /< first valid parameter
    lastParameter* {.importc: "LastParameter".}: float ## /< last valid parameter
    spanIndexMin* {.importc: "SpanIndexMin".}: int ## /< minimal index of span
    spanIndexMax* {.importc: "SpanIndexMax".}: int ## /< maximal index of span
    spanStart* {.importc: "SpanStart".}: float ## /< parameter for the frst point of the span
    spanLength* {.importc: "SpanLength".}: float ## /< length of the span
    spanIndex* {.importc: "SpanIndex".}: int ## /< index of the span
                                         ## ! Constructor, prepares data structures for caching.
                                         ## ! \param theDegree     degree of the B-spline (or Bezier)
                                         ## ! \param thePeriodic   identify whether the B-spline is periodic
                                         ## ! \param theFlatKnots  knots of Bezier / B-spline parameterization


proc constructBSplCLibCacheParams*(theDegree: int; thePeriodic: bool;
                                  theFlatKnots: TColStdArray1OfReal): BSplCLibCacheParams {.
    constructor, importcpp: "BSplCLib_CacheParams(@)",
    header: "BSplCLib_CacheParams.hxx".}
proc periodicNormalization*(this: BSplCLibCacheParams; theParameter: float): float {.
    noSideEffect, importcpp: "PeriodicNormalization",
    header: "BSplCLib_CacheParams.hxx".}
proc isCacheValid*(this: BSplCLibCacheParams; theParameter: float): bool {.
    noSideEffect, importcpp: "IsCacheValid", header: "BSplCLib_CacheParams.hxx".}
proc locateParameter*(this: var BSplCLibCacheParams; theParameter: var float;
                     theFlatKnots: TColStdArray1OfReal) {.
    importcpp: "LocateParameter", header: "BSplCLib_CacheParams.hxx".}
