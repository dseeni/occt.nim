##  Created on: 1991-04-11
##  Created by: Michel CHAUVAT
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of gp_Pnt"
type
  BRepGPropCinert* {.importcpp: "BRepGProp_Cinert", header: "BRepGProp_Cinert.hxx",
                    bycopy.} = object of GPropGProps


proc `new`*(this: var BRepGPropCinert; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_Cinert::operator new", header: "BRepGProp_Cinert.hxx".}
proc `delete`*(this: var BRepGPropCinert; theAddress: pointer) {.
    importcpp: "BRepGProp_Cinert::operator delete", header: "BRepGProp_Cinert.hxx".}
proc `new[]`*(this: var BRepGPropCinert; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_Cinert::operator new[]", header: "BRepGProp_Cinert.hxx".}
proc `delete[]`*(this: var BRepGPropCinert; theAddress: pointer) {.
    importcpp: "BRepGProp_Cinert::operator delete[]",
    header: "BRepGProp_Cinert.hxx".}
proc `new`*(this: var BRepGPropCinert; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepGProp_Cinert::operator new", header: "BRepGProp_Cinert.hxx".}
proc `delete`*(this: var BRepGPropCinert; a2: pointer; a3: pointer) {.
    importcpp: "BRepGProp_Cinert::operator delete", header: "BRepGProp_Cinert.hxx".}
proc constructBRepGPropCinert*(): BRepGPropCinert {.constructor,
    importcpp: "BRepGProp_Cinert(@)", header: "BRepGProp_Cinert.hxx".}
proc constructBRepGPropCinert*(c: BRepAdaptorCurve; cLocation: Pnt): BRepGPropCinert {.
    constructor, importcpp: "BRepGProp_Cinert(@)", header: "BRepGProp_Cinert.hxx".}
proc setLocation*(this: var BRepGPropCinert; cLocation: Pnt) {.
    importcpp: "SetLocation", header: "BRepGProp_Cinert.hxx".}
proc perform*(this: var BRepGPropCinert; c: BRepAdaptorCurve) {.importcpp: "Perform",
    header: "BRepGProp_Cinert.hxx".}