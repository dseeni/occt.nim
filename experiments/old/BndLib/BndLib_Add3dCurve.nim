##  Created on: 1993-07-08
##  Created by: Isabelle GRIGNON
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


discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
type
  BndLibAdd3dCurve* {.importcpp: "BndLib_Add3dCurve",
                     header: "BndLib_Add3dCurve.hxx", bycopy.} = object ## ! Adds to the bounding box B the curve C
                                                                   ## ! B is then enlarged by the tolerance value Tol.
                                                                   ## ! Note: depending on the type of curve, one of the following
                                                                   ## !
                                                                   ## representations of the curve C is used to include it in the bounding box B:
                                                                   ## ! -   an exact
                                                                   ## representation if C is built from a line, a circle   or a conic curve,
                                                                   ## ! -   the poles of the curve if C is built from a Bezier curve or   a BSpline curve,
                                                                   ## ! if not, the points of an approximation of the curve C.
                                                                   ## ! Warning
                                                                   ## ! C is an adapted curve, that is, an object which is an interface between:
                                                                   ## ! -   the services provided by a 3D curve from the package   Geom
                                                                   ## ! -   and those required of the curve by the computation algorithm.
                                                                   ## ! The adapted curve is created in the following way:
                                                                   ## !
                                                                   ## Handle(Geom_Curve) mycurve = ... ;
                                                                   ## !
                                                                   ## GeomAdaptor_Curve C(mycurve);
                                                                   ## ! The bounding box B is then enlarged by adding it:
                                                                   ## ! Bnd_Box B;
                                                                   ## ! // ...
                                                                   ## ! Standard_Real Tol = ... ;
                                                                   ## !
                                                                   ## Add3dCurve::Add ( C, Tol, B );
                                                                   ## ! Exceptions
                                                                   ## !
                                                                   ## Standard_Failure if the curve is built from:
                                                                   ## ! -   a Geom_Line, or
                                                                   ## ! -   a
                                                                   ## Geom_Parabola, or
                                                                   ## ! -   a
                                                                   ## Geom_Hyperbola,
                                                                   ## ! and P1 and P2 are either two negative infinite real
                                                                   ## ! numbers, or two positive infinite real numbers.


proc add*(c: Adaptor3dCurve; tol: cfloat; b: var BndBox) {.
    importcpp: "BndLib_Add3dCurve::Add(@)", header: "BndLib_Add3dCurve.hxx".}
proc add*(c: Adaptor3dCurve; u1: cfloat; u2: cfloat; tol: cfloat; b: var BndBox) {.
    importcpp: "BndLib_Add3dCurve::Add(@)", header: "BndLib_Add3dCurve.hxx".}
proc addOptimal*(c: Adaptor3dCurve; tol: cfloat; b: var BndBox) {.
    importcpp: "BndLib_Add3dCurve::AddOptimal(@)", header: "BndLib_Add3dCurve.hxx".}
proc addOptimal*(c: Adaptor3dCurve; u1: cfloat; u2: cfloat; tol: cfloat; b: var BndBox) {.
    importcpp: "BndLib_Add3dCurve::AddOptimal(@)", header: "BndLib_Add3dCurve.hxx".}
proc addGenCurv*(c: Adaptor3dCurve; uMin: cfloat; uMax: cfloat; tol: cfloat;
                b: var BndBox) {.importcpp: "BndLib_Add3dCurve::AddGenCurv(@)",
                              header: "BndLib_Add3dCurve.hxx".}
























