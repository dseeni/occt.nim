##  Created on: 1992-05-06
##  Created by: Jacques GOUSSARD
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
type
  IntSurfPntOn2S* {.importcpp: "IntSurf_PntOn2S", header: "IntSurf_PntOn2S.hxx",
                   bycopy.} = object ## ! Empty constructor.


proc constructIntSurfPntOn2S*(): IntSurfPntOn2S {.constructor,
    importcpp: "IntSurf_PntOn2S(@)", header: "IntSurf_PntOn2S.hxx".}
proc setValue*(this: var IntSurfPntOn2S; pt: Pnt) {.importcpp: "SetValue",
    header: "IntSurf_PntOn2S.hxx".}
proc setValue*(this: var IntSurfPntOn2S; pt: Pnt; onFirst: bool; u: float; v: float) {.
    importcpp: "SetValue", header: "IntSurf_PntOn2S.hxx".}
proc setValue*(this: var IntSurfPntOn2S; pt: Pnt; u1: float; v1: float; u2: float; v2: float) {.
    importcpp: "SetValue", header: "IntSurf_PntOn2S.hxx".}
proc setValue*(this: var IntSurfPntOn2S; onFirst: bool; u: float; v: float) {.
    importcpp: "SetValue", header: "IntSurf_PntOn2S.hxx".}
proc setValue*(this: var IntSurfPntOn2S; u1: float; v1: float; u2: float; v2: float) {.
    importcpp: "SetValue", header: "IntSurf_PntOn2S.hxx".}
proc value*(this: IntSurfPntOn2S): Pnt {.noSideEffect, importcpp: "Value",
                                     header: "IntSurf_PntOn2S.hxx".}
proc valueOnSurface*(this: IntSurfPntOn2S; onFirst: bool): Pnt2d {.noSideEffect,
    importcpp: "ValueOnSurface", header: "IntSurf_PntOn2S.hxx".}
proc parametersOnS1*(this: IntSurfPntOn2S; u1: var float; v1: var float) {.noSideEffect,
    importcpp: "ParametersOnS1", header: "IntSurf_PntOn2S.hxx".}
proc parametersOnS2*(this: IntSurfPntOn2S; u2: var float; v2: var float) {.noSideEffect,
    importcpp: "ParametersOnS2", header: "IntSurf_PntOn2S.hxx".}
proc parametersOnSurface*(this: IntSurfPntOn2S; onFirst: bool; u: var float;
                         v: var float) {.noSideEffect,
                                      importcpp: "ParametersOnSurface",
                                      header: "IntSurf_PntOn2S.hxx".}
proc parameters*(this: IntSurfPntOn2S; u1: var float; v1: var float; u2: var float;
                v2: var float) {.noSideEffect, importcpp: "Parameters",
                              header: "IntSurf_PntOn2S.hxx".}
proc isSame*(this: IntSurfPntOn2S; theOtherPoint: IntSurfPntOn2S;
            theTol3D: float = 0.0; theTol2D: float = -1.0): bool {.noSideEffect,
    importcpp: "IsSame", header: "IntSurf_PntOn2S.hxx".}
