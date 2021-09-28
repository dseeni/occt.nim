##  Created on: 1992-10-13
##  Created by: Laurent BUCHARD
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

discard "forward decl of IntCurve_PConic"
discard "forward decl of gp_Pnt2d"
type
  IntCurveProjectOnPConicTool* {.importcpp: "IntCurve_ProjectOnPConicTool",
                                header: "IntCurve_ProjectOnPConicTool.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## the
                                                                                         ## parameter
                                                                                         ## V
                                                                                         ## of
                                                                                         ## the
                                                                                         ## point
                                                                                         ## on
                                                                                         ## the
                                                                                         ##
                                                                                         ## !
                                                                                         ## parametric
                                                                                         ## curve
                                                                                         ## corresponding
                                                                                         ## to
                                                                                         ## the
                                                                                         ## Point
                                                                                         ## Pnt.
                                                                                         ## The
                                                                                         ##
                                                                                         ## !
                                                                                         ## Correspondance
                                                                                         ## between
                                                                                         ## Pnt
                                                                                         ## and
                                                                                         ## the
                                                                                         ## point
                                                                                         ## P(V)
                                                                                         ## on
                                                                                         ## the
                                                                                         ##
                                                                                         ## !
                                                                                         ## parametric
                                                                                         ## curve
                                                                                         ## must
                                                                                         ## be
                                                                                         ## coherent
                                                                                         ## with
                                                                                         ## the
                                                                                         ## way
                                                                                         ## of
                                                                                         ##
                                                                                         ## !
                                                                                         ## determination
                                                                                         ## of
                                                                                         ## the
                                                                                         ## signed
                                                                                         ## distance
                                                                                         ## between
                                                                                         ## a
                                                                                         ## point
                                                                                         ## and
                                                                                         ##
                                                                                         ## !
                                                                                         ## the
                                                                                         ## implicit
                                                                                         ## curve.
                                                                                         ## Tol
                                                                                         ## is
                                                                                         ## the
                                                                                         ## tolerance
                                                                                         ## on
                                                                                         ## the
                                                                                         ## distance
                                                                                         ##
                                                                                         ## !
                                                                                         ## between
                                                                                         ## a
                                                                                         ## point
                                                                                         ## and
                                                                                         ## the
                                                                                         ## parametrised
                                                                                         ## curve.
                                                                                         ## In
                                                                                         ## that
                                                                                         ## case,
                                                                                         ##
                                                                                         ## !
                                                                                         ## no
                                                                                         ## bounds
                                                                                         ## are
                                                                                         ## given.
                                                                                         ## The
                                                                                         ## research
                                                                                         ## of
                                                                                         ## the
                                                                                         ## rigth
                                                                                         ## parameter
                                                                                         ##
                                                                                         ## !
                                                                                         ## has
                                                                                         ## to
                                                                                         ## be
                                                                                         ## made
                                                                                         ## on
                                                                                         ## the
                                                                                         ## natural
                                                                                         ## parametric
                                                                                         ## domain
                                                                                         ## of
                                                                                         ## the
                                                                                         ##
                                                                                         ## !
                                                                                         ## curve.


proc findParameter*(c: IntCurvePConic; pnt: Pnt2d; tol: cfloat): cfloat {.
    importcpp: "IntCurve_ProjectOnPConicTool::FindParameter(@)",
    header: "IntCurve_ProjectOnPConicTool.hxx".}
proc findParameter*(c: IntCurvePConic; pnt: Pnt2d; lowParameter: cfloat;
                   highParameter: cfloat; tol: cfloat): cfloat {.
    importcpp: "IntCurve_ProjectOnPConicTool::FindParameter(@)",
    header: "IntCurve_ProjectOnPConicTool.hxx".}

























