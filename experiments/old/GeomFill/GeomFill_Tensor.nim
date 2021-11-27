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
  GeomFillTensor* {.importcpp: "GeomFill_Tensor", header: "GeomFill_Tensor.hxx",
                   bycopy.} = object


proc `new`*(this: var GeomFillTensor; theSize: csize_t): pointer {.
    importcpp: "GeomFill_Tensor::operator new", header: "GeomFill_Tensor.hxx".}
proc `delete`*(this: var GeomFillTensor; theAddress: pointer) {.
    importcpp: "GeomFill_Tensor::operator delete", header: "GeomFill_Tensor.hxx".}
proc `new[]`*(this: var GeomFillTensor; theSize: csize_t): pointer {.
    importcpp: "GeomFill_Tensor::operator new[]", header: "GeomFill_Tensor.hxx".}
proc `delete[]`*(this: var GeomFillTensor; theAddress: pointer) {.
    importcpp: "GeomFill_Tensor::operator delete[]", header: "GeomFill_Tensor.hxx".}
proc `new`*(this: var GeomFillTensor; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomFill_Tensor::operator new", header: "GeomFill_Tensor.hxx".}
proc `delete`*(this: var GeomFillTensor; a2: pointer; a3: pointer) {.
    importcpp: "GeomFill_Tensor::operator delete", header: "GeomFill_Tensor.hxx".}
proc constructGeomFillTensor*(nbRow: int; nbCol: int; nbMat: int): GeomFillTensor {.
    constructor, importcpp: "GeomFill_Tensor(@)", header: "GeomFill_Tensor.hxx".}
proc init*(this: var GeomFillTensor; initialValue: StandardReal) {.importcpp: "Init",
    header: "GeomFill_Tensor.hxx".}
proc value*(this: GeomFillTensor; row: int; col: int; mat: int): StandardReal {.
    noSideEffect, importcpp: "Value", header: "GeomFill_Tensor.hxx".}
proc `()`*(this: GeomFillTensor; row: int; col: int; mat: int): StandardReal {.
    noSideEffect, importcpp: "#(@)", header: "GeomFill_Tensor.hxx".}
proc changeValue*(this: var GeomFillTensor; row: int; col: int; mat: int): var StandardReal {.
    importcpp: "ChangeValue", header: "GeomFill_Tensor.hxx".}
proc `()`*(this: var GeomFillTensor; row: int; col: int; mat: int): var StandardReal {.
    importcpp: "#(@)", header: "GeomFill_Tensor.hxx".}
proc multiply*(this: GeomFillTensor; right: MathVector; product: var MathMatrix) {.
    noSideEffect, importcpp: "Multiply", header: "GeomFill_Tensor.hxx".}