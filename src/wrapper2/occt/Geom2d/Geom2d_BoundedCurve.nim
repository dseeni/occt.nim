##  Created on: 1993-03-24
##  Created by: JCV
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

import
  ../Standard/Standard, ../Standard/Standard_Type, Geom2d_Curve

discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2d_BoundedCurve"
discard "forward decl of Geom2d_BoundedCurve"
type
  Handle_Geom2d_BoundedCurve* = handle[Geom2d_BoundedCurve]

## ! The abstract class BoundedCurve describes the
## ! common behavior of bounded curves in 2D space. A
## ! bounded curve is limited by two finite values of the
## ! parameter, termed respectively "first parameter" and
## ! "last parameter". The "first parameter" gives the "start
## ! point" of the bounded curve, and the "last parameter"
## ! gives the "end point" of the bounded curve.
## ! The length of a bounded curve is finite.
## ! The Geom2d package provides three concrete
## ! classes of bounded curves:
## ! - two frequently used mathematical formulations of complex curves:
## ! - Geom2d_BezierCurve,
## ! - Geom2d_BSplineCurve, and
## ! - Geom2d_TrimmedCurve to trim a curve, i.e. to
## ! only take part of the curve limited by two values of
## ! the parameter of the basis curve.

type
  Geom2d_BoundedCurve* {.importcpp: "Geom2d_BoundedCurve",
                        header: "Geom2d_BoundedCurve.hxx", bycopy.} = object of Geom2d_Curve ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## the
                                                                                      ## end
                                                                                      ## point
                                                                                      ## of
                                                                                      ## the
                                                                                      ## curve.
                                                                                      ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## end
                                                                                      ## point
                                                                                      ## is
                                                                                      ## the
                                                                                      ## value
                                                                                      ## of
                                                                                      ## the
                                                                                      ## curve
                                                                                      ## for
                                                                                      ## the
                                                                                      ##
                                                                                      ## !
                                                                                      ## "LastParameter"
                                                                                      ## of
                                                                                      ## the
                                                                                      ## curve.


proc EndPoint*(this: Geom2d_BoundedCurve): gp_Pnt2d {.noSideEffect,
    importcpp: "EndPoint", header: "Geom2d_BoundedCurve.hxx".}
proc StartPoint*(this: Geom2d_BoundedCurve): gp_Pnt2d {.noSideEffect,
    importcpp: "StartPoint", header: "Geom2d_BoundedCurve.hxx".}
proc DumpJson*(this: Geom2d_BoundedCurve; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_BoundedCurve.hxx".}
type
  Geom2d_BoundedCurvebase_type* = Geom2d_Curve

proc get_type_name*(): cstring {.importcpp: "Geom2d_BoundedCurve::get_type_name(@)",
                              header: "Geom2d_BoundedCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_BoundedCurve::get_type_descriptor(@)",
    header: "Geom2d_BoundedCurve.hxx".}
proc DynamicType*(this: Geom2d_BoundedCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_BoundedCurve.hxx".}