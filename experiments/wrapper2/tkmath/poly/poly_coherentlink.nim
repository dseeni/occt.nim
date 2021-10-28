##  Created on: 2007-12-25
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

discard "forward decl of Poly_CoherentTriangle"
discard "forward decl of Poly_CoherentTriangulation"
type
  PolyCoherentLink* {.importcpp: "Poly_CoherentLink",
                     header: "Poly_CoherentLink.hxx", bycopy.} = object ##  ---------- PUBLIC METHODS ----------
                                                                   ## *
                                                                   ##  Empty constructor.
                                                                   ##
                                                                   ##  ---------- PROTECTED METHODS ----------
                                                                   ##  ---------- PRIVATE FIELDS ----------


proc newPolyCoherentLink*(): PolyCoherentLink {.cdecl, constructor,
    importcpp: "Poly_CoherentLink(@)", dynlib: tkmath.}
proc newPolyCoherentLink*(iNode0: cint; iNode1: cint): PolyCoherentLink {.cdecl,
    constructor, importcpp: "Poly_CoherentLink(@)", dynlib: tkmath.}
proc newPolyCoherentLink*(theTri: PolyCoherentTriangle; iSide: cint): PolyCoherentLink {.
    cdecl, constructor, importcpp: "Poly_CoherentLink(@)", dynlib: tkmath.}
proc node*(this: PolyCoherentLink; ind: cint): cint {.noSideEffect, cdecl,
    importcpp: "Node", dynlib: tkmath.}
proc oppositeNode*(this: PolyCoherentLink; ind: cint): cint {.noSideEffect, cdecl,
    importcpp: "OppositeNode", dynlib: tkmath.}
proc getAttribute*(this: PolyCoherentLink): pointer {.noSideEffect, cdecl,
    importcpp: "GetAttribute", dynlib: tkmath.}
proc setAttribute*(this: var PolyCoherentLink; theAtt: pointer) {.cdecl,
    importcpp: "SetAttribute", dynlib: tkmath.}
proc isEmpty*(this: PolyCoherentLink): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkmath.}
proc nullify*(this: var PolyCoherentLink) {.cdecl, importcpp: "Nullify", dynlib: tkmath.}