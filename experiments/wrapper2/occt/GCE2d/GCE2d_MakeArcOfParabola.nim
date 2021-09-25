##  Created on: 1992-09-28
##  Created by: Remi GILET
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Pnt2d"
type
  GCE2dMakeArcOfParabola* {.importcpp: "GCE2d_MakeArcOfParabola",
                           header: "GCE2d_MakeArcOfParabola.hxx", bycopy.} = object of GCE2dRoot ##
                                                                                          ## !
                                                                                          ## Make
                                                                                          ## an
                                                                                          ## arc
                                                                                          ## of
                                                                                          ## Parabola
                                                                                          ## (TrimmedCurve
                                                                                          ## from
                                                                                          ## Geom2d)
                                                                                          ## from
                                                                                          ##
                                                                                          ## !
                                                                                          ## a
                                                                                          ## Parabola
                                                                                          ## between
                                                                                          ## two
                                                                                          ## parameters
                                                                                          ## Alpha1
                                                                                          ## and
                                                                                          ## Alpha2.


proc constructGCE2dMakeArcOfParabola*(parab: Parab2d; alpha1: float; alpha2: float;
                                     sense: bool = true): GCE2dMakeArcOfParabola {.
    constructor, importcpp: "GCE2d_MakeArcOfParabola(@)",
    header: "GCE2d_MakeArcOfParabola.hxx".}
proc constructGCE2dMakeArcOfParabola*(parab: Parab2d; p: Pnt2d; alpha: float;
                                     sense: bool = true): GCE2dMakeArcOfParabola {.
    constructor, importcpp: "GCE2d_MakeArcOfParabola(@)",
    header: "GCE2d_MakeArcOfParabola.hxx".}
proc constructGCE2dMakeArcOfParabola*(parab: Parab2d; p1: Pnt2d; p2: Pnt2d;
                                     sense: bool = true): GCE2dMakeArcOfParabola {.
    constructor, importcpp: "GCE2d_MakeArcOfParabola(@)",
    header: "GCE2d_MakeArcOfParabola.hxx".}
proc value*(this: GCE2dMakeArcOfParabola): Handle[Geom2dTrimmedCurve] {.
    noSideEffect, importcpp: "Value", header: "GCE2d_MakeArcOfParabola.hxx".}
converter `constopencascade`*(this: GCE2dMakeArcOfParabola): Handle[
    Geom2dTrimmedCurve] {.noSideEffect, importcpp: "GCE2d_MakeArcOfParabola::operator constopencascade",
                         header: "GCE2d_MakeArcOfParabola.hxx".}
