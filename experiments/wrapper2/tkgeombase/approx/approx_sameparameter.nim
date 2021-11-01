##  Created on: 1995-06-02
##  Created by: Xavier BENVENISTE
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

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
type
  ApproxSameParameter* {.importcpp: "Approx_SameParameter",
                        header: "Approx_SameParameter.hxx", bycopy.} = object ## !
                                                                         ## Warning: the C3D and C2D must have the same
                                                                         ## parametric domain.
                                                                         ## !
                                                                         ## Internal data
                                                                         ## structure to unify access to the most
                                                                         ## actively used data.
                                                                         ## ! This
                                                                         ## structure is not
                                                                         ## intended to be class field since
                                                                         ## ! a lot of memory is used in
                                                                         ## intermediate
                                                                         ## computations.
    ##  Initialization is allowed only for integral types.


proc newApproxSameParameter*(c3d: Handle[GeomCurve]; c2d: Handle[Geom2dCurve];
                            s: Handle[GeomSurface]; tol: cfloat): ApproxSameParameter {.
    cdecl, constructor, importcpp: "Approx_SameParameter(@)", dynlib: tkgeombase.}
proc newApproxSameParameter*(c3d: Handle[Adaptor3dHCurve];
                            c2d: Handle[Geom2dCurve];
                            s: Handle[Adaptor3dHSurface]; tol: cfloat): ApproxSameParameter {.
    cdecl, constructor, importcpp: "Approx_SameParameter(@)", dynlib: tkgeombase.}
proc newApproxSameParameter*(c3d: Handle[Adaptor3dHCurve];
                            c2d: Handle[Adaptor2dHCurve2d];
                            s: Handle[Adaptor3dHSurface]; tol: cfloat): ApproxSameParameter {.
    cdecl, constructor, importcpp: "Approx_SameParameter(@)", dynlib: tkgeombase.}
proc isDone*(this: ApproxSameParameter): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkgeombase.}
proc tolReached*(this: ApproxSameParameter): cfloat {.noSideEffect, cdecl,
    importcpp: "TolReached", dynlib: tkgeombase.}
proc isSameParameter*(this: ApproxSameParameter): bool {.noSideEffect, cdecl,
    importcpp: "IsSameParameter", dynlib: tkgeombase.}
proc curve2d*(this: ApproxSameParameter): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "Curve2d", dynlib: tkgeombase.}