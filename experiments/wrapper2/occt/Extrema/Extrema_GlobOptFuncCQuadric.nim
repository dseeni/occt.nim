##  Copyright (c) 2020 OPEN CASCADE SAS
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
##  commercial license or contractual agreement

## ! This class implements function which calculate square Eucluidean distance
## ! between point on surface and nearest point on Conic.

type
  ExtremaGlobOptFuncCQuadric* {.importcpp: "Extrema_GlobOptFuncCQuadric",
                               header: "Extrema_GlobOptFuncCQuadric.hxx", bycopy.} = object of MathMultipleVarFunction ##
                                                                                                                ## !
                                                                                                                ## Curve
                                                                                                                ## and
                                                                                                                ## surface
                                                                                                                ## should
                                                                                                                ## exist
                                                                                                                ## during
                                                                                                                ## all
                                                                                                                ## the
                                                                                                                ## lifetime
                                                                                                                ## of
                                                                                                                ## Extrema_GlobOptFuncCQuadric.
    ##  Boundaries


proc constructExtremaGlobOptFuncCQuadric*(c: ptr Adaptor3dCurve): ExtremaGlobOptFuncCQuadric {.
    constructor, importcpp: "Extrema_GlobOptFuncCQuadric(@)",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc constructExtremaGlobOptFuncCQuadric*(c: ptr Adaptor3dCurve; theTf: float;
    theTl: float): ExtremaGlobOptFuncCQuadric {.constructor,
    importcpp: "Extrema_GlobOptFuncCQuadric(@)",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc constructExtremaGlobOptFuncCQuadric*(c: ptr Adaptor3dCurve;
    s: ptr Adaptor3dSurface): ExtremaGlobOptFuncCQuadric {.constructor,
    importcpp: "Extrema_GlobOptFuncCQuadric(@)",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc loadQuad*(this: var ExtremaGlobOptFuncCQuadric; s: ptr Adaptor3dSurface;
              theUf: float; theUl: float; theVf: float; theVl: float) {.
    importcpp: "LoadQuad", header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc nbVariables*(this: ExtremaGlobOptFuncCQuadric): int {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc value*(this: var ExtremaGlobOptFuncCQuadric; theX: MathVector; theF: var float): bool {.
    importcpp: "Value", header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc quadricParameters*(this: ExtremaGlobOptFuncCQuadric; theCT: MathVector;
                       theUV: var MathVector) {.noSideEffect,
    importcpp: "QuadricParameters", header: "Extrema_GlobOptFuncCQuadric.hxx".}
