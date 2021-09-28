##  Created on: 1997-08-26
##  Created by: Stepan MISHIN
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

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_Surface"
discard "forward decl of Adaptor3d_HSurface"
type
  GeomConvertApproxSurface* {.importcpp: "GeomConvert_ApproxSurface",
                             header: "GeomConvert_ApproxSurface.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Converts
                                                                                   ## a
                                                                                   ## surface
                                                                                   ## to
                                                                                   ## B-spline


proc `new`*(this: var GeomConvertApproxSurface; theSize: csize_t): pointer {.
    importcpp: "GeomConvert_ApproxSurface::operator new",
    header: "GeomConvert_ApproxSurface.hxx".}
proc `delete`*(this: var GeomConvertApproxSurface; theAddress: pointer) {.
    importcpp: "GeomConvert_ApproxSurface::operator delete",
    header: "GeomConvert_ApproxSurface.hxx".}
proc `new[]`*(this: var GeomConvertApproxSurface; theSize: csize_t): pointer {.
    importcpp: "GeomConvert_ApproxSurface::operator new[]",
    header: "GeomConvert_ApproxSurface.hxx".}
proc `delete[]`*(this: var GeomConvertApproxSurface; theAddress: pointer) {.
    importcpp: "GeomConvert_ApproxSurface::operator delete[]",
    header: "GeomConvert_ApproxSurface.hxx".}
proc `new`*(this: var GeomConvertApproxSurface; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomConvert_ApproxSurface::operator new",
    header: "GeomConvert_ApproxSurface.hxx".}
proc `delete`*(this: var GeomConvertApproxSurface; a2: pointer; a3: pointer) {.
    importcpp: "GeomConvert_ApproxSurface::operator delete",
    header: "GeomConvert_ApproxSurface.hxx".}
proc constructGeomConvertApproxSurface*(surf: Handle[GeomSurface];
                                       tol3d: StandardReal;
                                       uContinuity: GeomAbsShape;
                                       vContinuity: GeomAbsShape; maxDegU: int;
                                       maxDegV: int; maxSegments: int;
                                       precisCode: int): GeomConvertApproxSurface {.
    constructor, importcpp: "GeomConvert_ApproxSurface(@)",
    header: "GeomConvert_ApproxSurface.hxx".}
proc constructGeomConvertApproxSurface*(surf: Handle[Adaptor3dHSurface];
                                       tol3d: StandardReal;
                                       uContinuity: GeomAbsShape;
                                       vContinuity: GeomAbsShape; maxDegU: int;
                                       maxDegV: int; maxSegments: int;
                                       precisCode: int): GeomConvertApproxSurface {.
    constructor, importcpp: "GeomConvert_ApproxSurface(@)",
    header: "GeomConvert_ApproxSurface.hxx".}
proc surface*(this: GeomConvertApproxSurface): Handle[GeomBSplineSurface] {.
    noSideEffect, importcpp: "Surface", header: "GeomConvert_ApproxSurface.hxx".}
proc isDone*(this: GeomConvertApproxSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomConvert_ApproxSurface.hxx".}
proc hasResult*(this: GeomConvertApproxSurface): StandardBoolean {.noSideEffect,
    importcpp: "HasResult", header: "GeomConvert_ApproxSurface.hxx".}
proc maxError*(this: GeomConvertApproxSurface): StandardReal {.noSideEffect,
    importcpp: "MaxError", header: "GeomConvert_ApproxSurface.hxx".}
proc dump*(this: GeomConvertApproxSurface; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "GeomConvert_ApproxSurface.hxx".}