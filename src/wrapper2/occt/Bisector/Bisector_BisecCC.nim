##  Created on: 1994-01-10
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Bisector_PolyBis"
discard "forward decl of Bisector_BisecCC"
discard "forward decl of Bisector_BisecCC"
type
  HandleBisectorBisecCC* = Handle[BisectorBisecCC]

## ! Construct the bisector between two curves.
## ! The curves can intersect only in their extremities.

type
  BisectorBisecCC* {.importcpp: "Bisector_BisecCC", header: "Bisector_BisecCC.hxx",
                    bycopy.} = object of BisectorCurve


proc constructBisectorBisecCC*(): BisectorBisecCC {.constructor,
    importcpp: "Bisector_BisecCC(@)", header: "Bisector_BisecCC.hxx".}
proc constructBisectorBisecCC*(cu1: Handle[Geom2dCurve]; cu2: Handle[Geom2dCurve];
                              side1: StandardReal; side2: StandardReal;
                              origin: GpPnt2d; distMax: StandardReal = 500): BisectorBisecCC {.
    constructor, importcpp: "Bisector_BisecCC(@)", header: "Bisector_BisecCC.hxx".}
proc perform*(this: var BisectorBisecCC; cu1: Handle[Geom2dCurve];
             cu2: Handle[Geom2dCurve]; side1: StandardReal; side2: StandardReal;
             origin: GpPnt2d; distMax: StandardReal = 500) {.importcpp: "Perform",
    header: "Bisector_BisecCC.hxx".}
proc isExtendAtStart*(this: BisectorBisecCC): StandardBoolean {.noSideEffect,
    importcpp: "IsExtendAtStart", header: "Bisector_BisecCC.hxx".}
proc isExtendAtEnd*(this: BisectorBisecCC): StandardBoolean {.noSideEffect,
    importcpp: "IsExtendAtEnd", header: "Bisector_BisecCC.hxx".}
proc reverse*(this: var BisectorBisecCC) {.importcpp: "Reverse",
                                       header: "Bisector_BisecCC.hxx".}
proc reversedParameter*(this: BisectorBisecCC; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter", header: "Bisector_BisecCC.hxx".}
proc isCN*(this: BisectorBisecCC; n: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IsCN", header: "Bisector_BisecCC.hxx".}
proc changeGuide*(this: BisectorBisecCC): Handle[BisectorBisecCC] {.noSideEffect,
    importcpp: "ChangeGuide", header: "Bisector_BisecCC.hxx".}
proc copy*(this: BisectorBisecCC): Handle[Geom2dGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Bisector_BisecCC.hxx".}
proc transform*(this: var BisectorBisecCC; t: GpTrsf2d) {.importcpp: "Transform",
    header: "Bisector_BisecCC.hxx".}
proc firstParameter*(this: BisectorBisecCC): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Bisector_BisecCC.hxx".}
proc lastParameter*(this: BisectorBisecCC): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Bisector_BisecCC.hxx".}
proc continuity*(this: BisectorBisecCC): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Bisector_BisecCC.hxx".}
proc nbIntervals*(this: BisectorBisecCC): StandardInteger {.noSideEffect,
    importcpp: "NbIntervals", header: "Bisector_BisecCC.hxx".}
proc intervalFirst*(this: BisectorBisecCC; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "IntervalFirst", header: "Bisector_BisecCC.hxx".}
proc intervalLast*(this: BisectorBisecCC; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "IntervalLast", header: "Bisector_BisecCC.hxx".}
proc intervalContinuity*(this: BisectorBisecCC): GeomAbsShape {.noSideEffect,
    importcpp: "IntervalContinuity", header: "Bisector_BisecCC.hxx".}
proc isClosed*(this: BisectorBisecCC): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Bisector_BisecCC.hxx".}
proc isPeriodic*(this: BisectorBisecCC): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Bisector_BisecCC.hxx".}
proc valueAndDist*(this: BisectorBisecCC; u: StandardReal; u1: var StandardReal;
                  u2: var StandardReal; distance: var StandardReal): GpPnt2d {.
    noSideEffect, importcpp: "ValueAndDist", header: "Bisector_BisecCC.hxx".}
proc valueByInt*(this: BisectorBisecCC; u: StandardReal; u1: var StandardReal;
                u2: var StandardReal; distance: var StandardReal): GpPnt2d {.
    noSideEffect, importcpp: "ValueByInt", header: "Bisector_BisecCC.hxx".}
proc d0*(this: BisectorBisecCC; u: StandardReal; p: var GpPnt2d) {.noSideEffect,
    importcpp: "D0", header: "Bisector_BisecCC.hxx".}
proc d1*(this: BisectorBisecCC; u: StandardReal; p: var GpPnt2d; v: var GpVec2d) {.
    noSideEffect, importcpp: "D1", header: "Bisector_BisecCC.hxx".}
proc d2*(this: BisectorBisecCC; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d) {.noSideEffect, importcpp: "D2",
                        header: "Bisector_BisecCC.hxx".}
proc d3*(this: BisectorBisecCC; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d; v3: var GpVec2d) {.noSideEffect, importcpp: "D3",
                                      header: "Bisector_BisecCC.hxx".}
proc dn*(this: BisectorBisecCC; u: StandardReal; n: StandardInteger): GpVec2d {.
    noSideEffect, importcpp: "DN", header: "Bisector_BisecCC.hxx".}
proc isEmpty*(this: BisectorBisecCC): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Bisector_BisecCC.hxx".}
proc linkBisCurve*(this: BisectorBisecCC; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "LinkBisCurve", header: "Bisector_BisecCC.hxx".}
proc linkCurveBis*(this: BisectorBisecCC; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "LinkCurveBis", header: "Bisector_BisecCC.hxx".}
proc parameter*(this: BisectorBisecCC; p: GpPnt2d): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "Bisector_BisecCC.hxx".}
proc curve*(this: BisectorBisecCC; indCurve: StandardInteger): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "Curve", header: "Bisector_BisecCC.hxx".}
proc polygon*(this: BisectorBisecCC): BisectorPolyBis {.noSideEffect,
    importcpp: "Polygon", header: "Bisector_BisecCC.hxx".}
proc dump*(this: BisectorBisecCC; deep: StandardInteger = 0;
          offset: StandardInteger = 0) {.noSideEffect, importcpp: "Dump",
                                     header: "Bisector_BisecCC.hxx".}
type
  BisectorBisecCCbaseType* = BisectorCurve

proc getTypeName*(): cstring {.importcpp: "Bisector_BisecCC::get_type_name(@)",
                            header: "Bisector_BisecCC.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Bisector_BisecCC::get_type_descriptor(@)",
    header: "Bisector_BisecCC.hxx".}
proc dynamicType*(this: BisectorBisecCC): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Bisector_BisecCC.hxx".}

