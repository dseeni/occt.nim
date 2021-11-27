##  Created on: 1997-09-11
##  Created by: Roman BORISOV
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Adaptor2d_HCurve2d"
type
  Geom2dConvertApproxCurve* {.importcpp: "Geom2dConvert_ApproxCurve",
                             header: "Geom2dConvert_ApproxCurve.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Converts
                                                                                   ## a
                                                                                   ## curve
                                                                                   ## to
                                                                                   ## B-spline


proc `new`*(this: var Geom2dConvertApproxCurve; theSize: csize_t): pointer {.
    importcpp: "Geom2dConvert_ApproxCurve::operator new",
    header: "Geom2dConvert_ApproxCurve.hxx".}
proc `delete`*(this: var Geom2dConvertApproxCurve; theAddress: pointer) {.
    importcpp: "Geom2dConvert_ApproxCurve::operator delete",
    header: "Geom2dConvert_ApproxCurve.hxx".}
proc `new[]`*(this: var Geom2dConvertApproxCurve; theSize: csize_t): pointer {.
    importcpp: "Geom2dConvert_ApproxCurve::operator new[]",
    header: "Geom2dConvert_ApproxCurve.hxx".}
proc `delete[]`*(this: var Geom2dConvertApproxCurve; theAddress: pointer) {.
    importcpp: "Geom2dConvert_ApproxCurve::operator delete[]",
    header: "Geom2dConvert_ApproxCurve.hxx".}
proc `new`*(this: var Geom2dConvertApproxCurve; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dConvert_ApproxCurve::operator new",
    header: "Geom2dConvert_ApproxCurve.hxx".}
proc `delete`*(this: var Geom2dConvertApproxCurve; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dConvert_ApproxCurve::operator delete",
    header: "Geom2dConvert_ApproxCurve.hxx".}
proc constructGeom2dConvertApproxCurve*(curve: Handle[Geom2dCurve];
                                       tol2d: StandardReal; order: GeomAbsShape;
                                       maxSegments: int; maxDegree: int): Geom2dConvertApproxCurve {.
    constructor, importcpp: "Geom2dConvert_ApproxCurve(@)",
    header: "Geom2dConvert_ApproxCurve.hxx".}
proc constructGeom2dConvertApproxCurve*(curve: Handle[Adaptor2dHCurve2d];
                                       tol2d: StandardReal; order: GeomAbsShape;
                                       maxSegments: int; maxDegree: int): Geom2dConvertApproxCurve {.
    constructor, importcpp: "Geom2dConvert_ApproxCurve(@)",
    header: "Geom2dConvert_ApproxCurve.hxx".}
proc curve*(this: Geom2dConvertApproxCurve): Handle[Geom2dBSplineCurve] {.
    noSideEffect, importcpp: "Curve", header: "Geom2dConvert_ApproxCurve.hxx".}
proc isDone*(this: Geom2dConvertApproxCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dConvert_ApproxCurve.hxx".}
proc hasResult*(this: Geom2dConvertApproxCurve): StandardBoolean {.noSideEffect,
    importcpp: "HasResult", header: "Geom2dConvert_ApproxCurve.hxx".}
proc maxError*(this: Geom2dConvertApproxCurve): StandardReal {.noSideEffect,
    importcpp: "MaxError", header: "Geom2dConvert_ApproxCurve.hxx".}
proc dump*(this: Geom2dConvertApproxCurve; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "Geom2dConvert_ApproxCurve.hxx".}