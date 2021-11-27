##  Created on: 2012-12-06
##  Created by: Sergey KHROMOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
type
  ExtremaPOnSurfParams* {.importcpp: "Extrema_POnSurfParams",
                         header: "Extrema_POnSurfParams.hxx", bycopy.} = object of ExtremaPOnSurf ##
                                                                                           ## !
                                                                                           ## empty
                                                                                           ## constructor


proc newExtremaPOnSurfParams*(): ExtremaPOnSurfParams {.cdecl, constructor,
    importcpp: "Extrema_POnSurfParams(@)", header: "Extrema_POnSurfParams.hxx".}
proc newExtremaPOnSurfParams*(theU: cfloat; theV: cfloat; thePnt: Pnt): ExtremaPOnSurfParams {.
    cdecl, constructor, importcpp: "Extrema_POnSurfParams(@)", header: "Extrema_POnSurfParams.hxx".}
proc setSqrDistance*(this: var ExtremaPOnSurfParams; theSqrDistance: cfloat) {.cdecl,
    importcpp: "SetSqrDistance", header: "Extrema_POnSurfParams.hxx".}
proc getSqrDistance*(this: ExtremaPOnSurfParams): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSqrDistance", header: "Extrema_POnSurfParams.hxx".}
proc setElementType*(this: var ExtremaPOnSurfParams;
                    theElementType: ExtremaElementType) {.cdecl,
    importcpp: "SetElementType", header: "Extrema_POnSurfParams.hxx".}
proc getElementType*(this: ExtremaPOnSurfParams): ExtremaElementType {.noSideEffect,
    cdecl, importcpp: "GetElementType", header: "Extrema_POnSurfParams.hxx".}
proc setIndices*(this: var ExtremaPOnSurfParams; theIndexU: cint; theIndexV: cint) {.
    cdecl, importcpp: "SetIndices", header: "Extrema_POnSurfParams.hxx".}
proc getIndices*(this: ExtremaPOnSurfParams; theIndexU: var cint; theIndexV: var cint) {.
    noSideEffect, cdecl, importcpp: "GetIndices", header: "Extrema_POnSurfParams.hxx".}