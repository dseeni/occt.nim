##  Created on: 1992-11-27
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopExp/TopExp_Explorer,
  ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  BRepGProp_Domain* {.importcpp: "BRepGProp_Domain",
                     header: "BRepGProp_Domain.hxx", bycopy.} = object ## ! Empty constructor.


proc constructBRepGProp_Domain*(): BRepGProp_Domain {.constructor,
    importcpp: "BRepGProp_Domain(@)", header: "BRepGProp_Domain.hxx".}
proc constructBRepGProp_Domain*(F: TopoDS_Face): BRepGProp_Domain {.constructor,
    importcpp: "BRepGProp_Domain(@)", header: "BRepGProp_Domain.hxx".}
proc Init*(this: var BRepGProp_Domain; F: TopoDS_Face) {.importcpp: "Init",
    header: "BRepGProp_Domain.hxx".}
proc More*(this: var BRepGProp_Domain): Standard_Boolean {.importcpp: "More",
    header: "BRepGProp_Domain.hxx".}
proc Init*(this: var BRepGProp_Domain) {.importcpp: "Init",
                                     header: "BRepGProp_Domain.hxx".}
proc Value*(this: var BRepGProp_Domain): TopoDS_Edge {.importcpp: "Value",
    header: "BRepGProp_Domain.hxx".}
proc Next*(this: var BRepGProp_Domain) {.importcpp: "Next",
                                     header: "BRepGProp_Domain.hxx".}