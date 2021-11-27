##  Created on: 1993-03-10
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

discard "forward decl of Geom_Curve"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_UndefinedValue"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_OffsetCurve"
discard "forward decl of Geom_OffsetCurve"

type
  GeomOffsetCurve* {.importcpp: "Geom_OffsetCurve", header: "Geom_OffsetCurve.hxx",
                    bycopy.} = object of GeomCurve ## ! C is the basis curve, Offset is the distance between <me> and
                                              ## ! the basis curve at any point. V defines the fixed reference
                                              ## ! direction (offset direction). If P is a point on the basis
                                              ## ! curve and T the first derivative with non zero length
                                              ## ! at this point, the corresponding point on the offset curve is
                                              ## ! in the direction of the vector-product N = V ^ T   where
                                              ## ! N is a unitary vector.
                                              ## ! If isNotCheckC0 = TRUE checking if basis curve has C0-continuity
                                              ## ! is not made.
                                              ## ! Warnings :
                                              ## ! In this package the entities are not shared. The OffsetCurve is
                                              ## ! built with a copy of the curve C. So when C is modified the
                                              ## ! OffsetCurve is not modified
                                              ## !
                                              ## ! Raised if the basis curve C is not at least C1.
                                              ## ! Warnings :
                                              ## ! No check is done to know if ||V^T|| != 0.0 at any point.


type
  HandleGeomOffsetCurve* = Handle[GeomOffsetCurve]

## ! This class implements the basis services for an offset curve
## ! in 3D space. The Offset curve in this package can be a self
## ! intersecting curve even if the basis curve does not
## ! self-intersect. The self intersecting portions are not deleted
## ! at the construction time.
## ! An offset curve is a curve at constant distance (Offset) from
## ! a basis curve in a reference direction V. The offset curve
## ! takes its parametrization from the basis curve.
## ! The Offset curve is in the direction of the normal N
## ! defined with the cross product  T^V, where the vector T
## ! is given by the first derivative on the basis curve with
## ! non zero length.
## ! The distance offset may be positive or negative to indicate the
## ! preferred side of the curve :
## ! . distance offset >0 => the curve is in the direction of N
## ! . distance offset <0 => the curve is in the direction of - N
## !
## ! On the Offset curve :
## ! Value (U) = BasisCurve.Value(U) + (Offset * (T ^ V)) / ||T ^ V||
## !
## ! At any point the Offset direction V must not be parallel to the
## ! vector T and the vector T must not have null length else the
## ! offset curve is not defined. So the offset curve has not the
## ! same continuity as the basis curve.
## !
## ! Warnings :
## !
## ! In this package we suppose that the continuity of the offset
## ! curve is one degree less than the continuity of the basis
## ! curve and we don't check that at any point ||T^V|| != 0.0
## !
## ! So to evaluate the curve it is better to check that the offset
## ! curve is well defined at any point because an exception could
## ! be raised. The check is not done in this package at the creation
## ! of the offset curve because the control needs the use of an
## ! algorithm which cannot be implemented in this package.
## !
## ! The OffsetCurve is closed if the first point and the last point
## ! are the same (The distance between these two points is lower or
## ! equal to the Resolution sea package gp) . The OffsetCurve can be
## ! closed even if the basis curve is not closed.

type
  GeomOffsetCurvebaseType* = GeomCurve

proc constructGeomOffsetCurve*(c: Handle[GeomCurve]; offset: StandardReal; v: Dir;
                              isNotCheckC0: StandardBoolean = false): GeomOffsetCurve {.
    constructor, importcpp: "Geom_OffsetCurve(@)", header: "Geom_OffsetCurve.hxx".}
proc reverse*(this: var GeomOffsetCurve) {.importcpp: "Reverse",
                                       header: "Geom_OffsetCurve.hxx".}
proc reversedParameter*(this: GeomOffsetCurve; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_OffsetCurve.hxx".}
proc setBasisCurve*(this: var GeomOffsetCurve; c: Handle[GeomCurve];
                   isNotCheckC0: StandardBoolean = false) {.
    importcpp: "SetBasisCurve", header: "Geom_OffsetCurve.hxx".}
proc setDirection*(this: var GeomOffsetCurve; v: Dir) {.importcpp: "SetDirection",
    header: "Geom_OffsetCurve.hxx".}
proc setOffsetValue*(this: var GeomOffsetCurve; d: StandardReal) {.
    importcpp: "SetOffsetValue", header: "Geom_OffsetCurve.hxx".}
proc basisCurve*(this: GeomOffsetCurve): Handle[GeomCurve] {.noSideEffect,
    importcpp: "BasisCurve", header: "Geom_OffsetCurve.hxx".}
#[ proc continuity*(this: GeomOffsetCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_OffsetCurve.hxx".} ]#
proc direction*(this: GeomOffsetCurve): Dir {.noSideEffect, importcpp: "Direction",
    header: "Geom_OffsetCurve.hxx".}
proc d0*(this: GeomOffsetCurve; u: StandardReal; p: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_OffsetCurve.hxx".}
proc d1*(this: GeomOffsetCurve; u: StandardReal; p: var Pnt; v1: var Vec) {.noSideEffect,
    importcpp: "D1", header: "Geom_OffsetCurve.hxx".}
proc d2*(this: GeomOffsetCurve; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_OffsetCurve.hxx".}
proc d3*(this: GeomOffsetCurve; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec;
        v3: var Vec) {.noSideEffect, importcpp: "D3", header: "Geom_OffsetCurve.hxx".}
proc dn*(this: GeomOffsetCurve; u: StandardReal; n: int): Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_OffsetCurve.hxx".}
proc firstParameter*(this: GeomOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_OffsetCurve.hxx".}
proc lastParameter*(this: GeomOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_OffsetCurve.hxx".}
proc offset*(this: GeomOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "Offset", header: "Geom_OffsetCurve.hxx".}
proc isClosed*(this: GeomOffsetCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_OffsetCurve.hxx".}
proc isCN*(this: GeomOffsetCurve; n: int): StandardBoolean {.noSideEffect,
    importcpp: "IsCN", header: "Geom_OffsetCurve.hxx".}
proc isPeriodic*(this: GeomOffsetCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_OffsetCurve.hxx".}
proc period*(this: GeomOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "Period", header: "Geom_OffsetCurve.hxx".}
proc transform*(this: var GeomOffsetCurve; t: Trsf) {.importcpp: "Transform",
    header: "Geom_OffsetCurve.hxx".}
proc transformedParameter*(this: GeomOffsetCurve; u: StandardReal; t: Trsf): StandardReal {.
    noSideEffect, importcpp: "TransformedParameter", header: "Geom_OffsetCurve.hxx".}
proc parametricTransformation*(this: GeomOffsetCurve; t: Trsf): StandardReal {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_OffsetCurve.hxx".}
proc copy*(this: GeomOffsetCurve): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_OffsetCurve.hxx".}
#[ proc getBasisCurveContinuity*(this: GeomOffsetCurve): GeomAbsShape {.noSideEffect,
    importcpp: "GetBasisCurveContinuity", header: "Geom_OffsetCurve.hxx".} ]#
proc dumpJson*(this: GeomOffsetCurve; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom_OffsetCurve.hxx".}


#[ proc getTypeName*(): cstring {.importcpp: "Geom_OffsetCurve::get_type_name(@)",
                            header: "Geom_OffsetCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_OffsetCurve::get_type_descriptor(@)",
    header: "Geom_OffsetCurve.hxx".}
proc dynamicType*(this: GeomOffsetCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_OffsetCurve.hxx".} ]#