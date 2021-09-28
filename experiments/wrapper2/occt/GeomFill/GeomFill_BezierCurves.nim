##  Created on: 1993-10-06
##  Created by: Bruno DUMORTIER
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

discard "forward decl of Geom_BezierSurface"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom_BezierCurve"
type
  GeomFillBezierCurves* {.importcpp: "GeomFill_BezierCurves",
                         header: "GeomFill_BezierCurves.hxx", bycopy.} = object


proc `new`*(this: var GeomFillBezierCurves; theSize: csize_t): pointer {.
    importcpp: "GeomFill_BezierCurves::operator new",
    header: "GeomFill_BezierCurves.hxx".}
proc `delete`*(this: var GeomFillBezierCurves; theAddress: pointer) {.
    importcpp: "GeomFill_BezierCurves::operator delete",
    header: "GeomFill_BezierCurves.hxx".}
proc `new[]`*(this: var GeomFillBezierCurves; theSize: csize_t): pointer {.
    importcpp: "GeomFill_BezierCurves::operator new[]",
    header: "GeomFill_BezierCurves.hxx".}
proc `delete[]`*(this: var GeomFillBezierCurves; theAddress: pointer) {.
    importcpp: "GeomFill_BezierCurves::operator delete[]",
    header: "GeomFill_BezierCurves.hxx".}
proc `new`*(this: var GeomFillBezierCurves; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomFill_BezierCurves::operator new",
    header: "GeomFill_BezierCurves.hxx".}
proc `delete`*(this: var GeomFillBezierCurves; a2: pointer; a3: pointer) {.
    importcpp: "GeomFill_BezierCurves::operator delete",
    header: "GeomFill_BezierCurves.hxx".}
proc constructGeomFillBezierCurves*(): GeomFillBezierCurves {.constructor,
    importcpp: "GeomFill_BezierCurves(@)", header: "GeomFill_BezierCurves.hxx".}
proc constructGeomFillBezierCurves*(c1: Handle[GeomBezierCurve];
                                   c2: Handle[GeomBezierCurve];
                                   c3: Handle[GeomBezierCurve];
                                   c4: Handle[GeomBezierCurve];
                                   `type`: GeomFillFillingStyle): GeomFillBezierCurves {.
    constructor, importcpp: "GeomFill_BezierCurves(@)",
    header: "GeomFill_BezierCurves.hxx".}
proc constructGeomFillBezierCurves*(c1: Handle[GeomBezierCurve];
                                   c2: Handle[GeomBezierCurve];
                                   c3: Handle[GeomBezierCurve];
                                   `type`: GeomFillFillingStyle): GeomFillBezierCurves {.
    constructor, importcpp: "GeomFill_BezierCurves(@)",
    header: "GeomFill_BezierCurves.hxx".}
proc constructGeomFillBezierCurves*(c1: Handle[GeomBezierCurve];
                                   c2: Handle[GeomBezierCurve];
                                   `type`: GeomFillFillingStyle): GeomFillBezierCurves {.
    constructor, importcpp: "GeomFill_BezierCurves(@)",
    header: "GeomFill_BezierCurves.hxx".}
proc init*(this: var GeomFillBezierCurves; c1: Handle[GeomBezierCurve];
          c2: Handle[GeomBezierCurve]; c3: Handle[GeomBezierCurve];
          c4: Handle[GeomBezierCurve]; `type`: GeomFillFillingStyle) {.
    importcpp: "Init", header: "GeomFill_BezierCurves.hxx".}
proc init*(this: var GeomFillBezierCurves; c1: Handle[GeomBezierCurve];
          c2: Handle[GeomBezierCurve]; c3: Handle[GeomBezierCurve];
          `type`: GeomFillFillingStyle) {.importcpp: "Init",
                                        header: "GeomFill_BezierCurves.hxx".}
proc init*(this: var GeomFillBezierCurves; c1: Handle[GeomBezierCurve];
          c2: Handle[GeomBezierCurve]; `type`: GeomFillFillingStyle) {.
    importcpp: "Init", header: "GeomFill_BezierCurves.hxx".}
proc surface*(this: GeomFillBezierCurves): Handle[GeomBezierSurface] {.noSideEffect,
    importcpp: "Surface", header: "GeomFill_BezierCurves.hxx".}