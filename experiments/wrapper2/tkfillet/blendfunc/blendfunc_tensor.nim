##  Created on: 1996-12-05
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of math_Matrix"
type
  BlendFuncTensor* {.importcpp: "BlendFunc_Tensor", header: "BlendFunc_Tensor.hxx",
                    bycopy.} = object


proc newBlendFuncTensor*(nbRow: cint; nbCol: cint; nbMat: cint): BlendFuncTensor {.
    cdecl, constructor, importcpp: "BlendFunc_Tensor(@)", dynlib: tkfillet.}
proc init*(this: var BlendFuncTensor; initialValue: cfloat) {.cdecl, importcpp: "Init",
    dynlib: tkfillet.}
proc value*(this: BlendFuncTensor; row: cint; col: cint; mat: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkfillet.}
proc `()`*(this: BlendFuncTensor; row: cint; col: cint; mat: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "#(@)", dynlib: tkfillet.}
proc changeValue*(this: var BlendFuncTensor; row: cint; col: cint; mat: cint): var cfloat {.
    cdecl, importcpp: "ChangeValue", dynlib: tkfillet.}
proc `()`*(this: var BlendFuncTensor; row: cint; col: cint; mat: cint): var cfloat {.cdecl,
    importcpp: "#(@)", dynlib: tkfillet.}
proc multiply*(this: BlendFuncTensor; right: MathVector; product: var MathMatrix) {.
    noSideEffect, cdecl, importcpp: "Multiply", dynlib: tkfillet.}