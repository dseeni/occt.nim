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

discard "forward decl of Geom_Transformation"
type
  HandleGeomTransformation* = Handle[GeomTransformation]

## ! Describes how to construct the following elementary transformations
## ! - translations,
## ! - rotations,
## ! - symmetries,
## ! - scales.
## ! The Transformation class can also be used to
## ! construct complex transformations by combining these
## ! elementary transformations.
## ! However, these transformations can never change
## ! the type of an object. For example, the projection
## ! transformation can change a circle into an ellipse, and
## ! therefore change the real type of the object. Such a
## ! transformation is forbidden in this environment and
## ! cannot be a Geom_Transformation.
## ! The transformation can be represented as follow :
## !
## ! V1   V2   V3    T
## ! | a11  a12  a13   a14 |   | x |      | x'|
## ! | a21  a22  a23   a24 |   | y |      | y'|
## ! | a31  a32  a33   a34 |   | z |   =  | z'|
## ! |  0    0    0     1  |   | 1 |      | 1 |
## !
## ! where {V1, V2, V3} defines the vectorial part of the
## ! transformation and T defines the translation part of
## ! the transformation.
## ! Note: Geom_Transformation transformations
## ! provide the same kind of "geometric" services as
## ! gp_Trsf ones but have more complex data structures.
## ! The geometric objects provided by the Geom
## ! package use gp_Trsf transformations in the syntaxes
## ! Transform and Transformed.
## ! Geom_Transformation transformations are used in
## ! a context where they can be shared by several
## ! objects contained inside a common data structure.

type
  GeomTransformation* {.importcpp: "Geom_Transformation",
                       header: "Geom_Transformation.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## an
                                                                                          ## identity
                                                                                          ## transformation.

  GeomTransformationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Geom_Transformation::get_type_name(@)",
                            header: "Geom_Transformation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_Transformation::get_type_descriptor(@)",
    header: "Geom_Transformation.hxx".}
proc dynamicType*(this: GeomTransformation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Transformation.hxx".}
proc constructGeomTransformation*(): GeomTransformation {.constructor,
    importcpp: "Geom_Transformation(@)", header: "Geom_Transformation.hxx".}
proc constructGeomTransformation*(t: Trsf): GeomTransformation {.constructor,
    importcpp: "Geom_Transformation(@)", header: "Geom_Transformation.hxx".}
proc setMirror*(this: var GeomTransformation; thePnt: Pnt) {.importcpp: "SetMirror",
    header: "Geom_Transformation.hxx".}
proc setMirror*(this: var GeomTransformation; theA1: Ax1) {.importcpp: "SetMirror",
    header: "Geom_Transformation.hxx".}
proc setMirror*(this: var GeomTransformation; theA2: Ax2) {.importcpp: "SetMirror",
    header: "Geom_Transformation.hxx".}
proc setRotation*(this: var GeomTransformation; theA1: Ax1; theAng: float) {.
    importcpp: "SetRotation", header: "Geom_Transformation.hxx".}
proc setScale*(this: var GeomTransformation; thePnt: Pnt; theScale: float) {.
    importcpp: "SetScale", header: "Geom_Transformation.hxx".}
proc setTransformation*(this: var GeomTransformation; theFromSystem1: Ax3;
                       theToSystem2: Ax3) {.importcpp: "SetTransformation",
    header: "Geom_Transformation.hxx".}
proc setTransformation*(this: var GeomTransformation; theToSystem: Ax3) {.
    importcpp: "SetTransformation", header: "Geom_Transformation.hxx".}
proc setTranslation*(this: var GeomTransformation; theVec: Vec) {.
    importcpp: "SetTranslation", header: "Geom_Transformation.hxx".}
proc setTranslation*(this: var GeomTransformation; p1: Pnt; p2: Pnt) {.
    importcpp: "SetTranslation", header: "Geom_Transformation.hxx".}
proc setTrsf*(this: var GeomTransformation; theTrsf: Trsf) {.importcpp: "SetTrsf",
    header: "Geom_Transformation.hxx".}
proc isNegative*(this: GeomTransformation): bool {.noSideEffect,
    importcpp: "IsNegative", header: "Geom_Transformation.hxx".}
proc form*(this: GeomTransformation): TrsfForm {.noSideEffect, importcpp: "Form",
    header: "Geom_Transformation.hxx".}
proc scaleFactor*(this: GeomTransformation): float {.noSideEffect,
    importcpp: "ScaleFactor", header: "Geom_Transformation.hxx".}
proc trsf*(this: GeomTransformation): Trsf {.noSideEffect, importcpp: "Trsf",
    header: "Geom_Transformation.hxx".}
proc value*(this: GeomTransformation; theRow: int; theCol: int): float {.noSideEffect,
    importcpp: "Value", header: "Geom_Transformation.hxx".}
proc invert*(this: var GeomTransformation) {.importcpp: "Invert",
    header: "Geom_Transformation.hxx".}
proc inverted*(this: GeomTransformation): Handle[GeomTransformation] {.noSideEffect,
    importcpp: "Inverted", header: "Geom_Transformation.hxx".}
proc multiplied*(this: GeomTransformation; other: Handle[GeomTransformation]): Handle[
    GeomTransformation] {.noSideEffect, importcpp: "Multiplied",
                         header: "Geom_Transformation.hxx".}
proc multiply*(this: var GeomTransformation; theOther: Handle[GeomTransformation]) {.
    importcpp: "Multiply", header: "Geom_Transformation.hxx".}
proc power*(this: var GeomTransformation; n: int) {.importcpp: "Power",
    header: "Geom_Transformation.hxx".}
proc powered*(this: GeomTransformation; n: int): Handle[GeomTransformation] {.
    noSideEffect, importcpp: "Powered", header: "Geom_Transformation.hxx".}
proc preMultiply*(this: var GeomTransformation; other: Handle[GeomTransformation]) {.
    importcpp: "PreMultiply", header: "Geom_Transformation.hxx".}
proc transforms*(this: GeomTransformation; theX: var float; theY: var float;
                theZ: var float) {.noSideEffect, importcpp: "Transforms",
                                header: "Geom_Transformation.hxx".}
proc copy*(this: GeomTransformation): Handle[GeomTransformation] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Transformation.hxx".}
proc dumpJson*(this: GeomTransformation; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom_Transformation.hxx".}
