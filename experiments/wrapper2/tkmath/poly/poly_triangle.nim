##  Created on: 1995-03-06
##  Created by: Laurent PAINNOT
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

## ! Describes a component triangle of a triangulation (Poly_Triangulation object).
## ! A Triangle is defined by a triplet of nodes.
## ! Each node is an index in the table of nodes specific to an existing
## ! triangulation of a shape, and represents a point on the surface.

type
  PolyTriangle* {.importcpp: "Poly_Triangle", header: "Poly_Triangle.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## a
                                                                                     ## triangle
                                                                                     ## and
                                                                                     ## sets
                                                                                     ## all
                                                                                     ## indices
                                                                                     ## to
                                                                                     ## zero.


proc newPolyTriangle*(): PolyTriangle {.cdecl, constructor,
                                     importcpp: "Poly_Triangle(@)", dynlib: tkmath.}
proc newPolyTriangle*(theN1: cint; theN2: cint; theN3: cint): PolyTriangle {.cdecl,
    constructor, importcpp: "Poly_Triangle(@)", dynlib: tkmath.}
proc set*(this: var PolyTriangle; theN1: cint; theN2: cint; theN3: cint) {.cdecl,
    importcpp: "Set", dynlib: tkmath.}
proc set*(this: var PolyTriangle; theIndex: cint; theNode: cint) {.cdecl,
    importcpp: "Set", dynlib: tkmath.}
proc get*(this: PolyTriangle; theN1: var cint; theN2: var cint; theN3: var cint) {.
    noSideEffect, cdecl, importcpp: "Get", dynlib: tkmath.}
proc value*(this: PolyTriangle; theIndex: cint): cint {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc `()`*(this: PolyTriangle; index: cint): cint {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkmath.}
proc changeValue*(this: var PolyTriangle; theIndex: cint): var cint {.cdecl,
    importcpp: "ChangeValue", dynlib: tkmath.}
proc `()`*(this: var PolyTriangle; index: cint): var cint {.cdecl, importcpp: "#(@)",
    dynlib: tkmath.}