##  Created on: 1998-09-03
##  Created by: Julia GERASIMOVA
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of BRepFill_Filling"
discard "forward decl of TopoDS_Face"
type
  BRepFillFaceAndOrder* {.importcpp: "BRepFill_FaceAndOrder",
                         header: "BRepFill_FaceAndOrder.hxx", bycopy.} = object


proc `new`*(this: var BRepFillFaceAndOrder; theSize: csize_t): pointer {.
    importcpp: "BRepFill_FaceAndOrder::operator new",
    header: "BRepFill_FaceAndOrder.hxx".}
proc `delete`*(this: var BRepFillFaceAndOrder; theAddress: pointer) {.
    importcpp: "BRepFill_FaceAndOrder::operator delete",
    header: "BRepFill_FaceAndOrder.hxx".}
proc `new[]`*(this: var BRepFillFaceAndOrder; theSize: csize_t): pointer {.
    importcpp: "BRepFill_FaceAndOrder::operator new[]",
    header: "BRepFill_FaceAndOrder.hxx".}
proc `delete[]`*(this: var BRepFillFaceAndOrder; theAddress: pointer) {.
    importcpp: "BRepFill_FaceAndOrder::operator delete[]",
    header: "BRepFill_FaceAndOrder.hxx".}
proc `new`*(this: var BRepFillFaceAndOrder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFill_FaceAndOrder::operator new",
    header: "BRepFill_FaceAndOrder.hxx".}
proc `delete`*(this: var BRepFillFaceAndOrder; a2: pointer; a3: pointer) {.
    importcpp: "BRepFill_FaceAndOrder::operator delete",
    header: "BRepFill_FaceAndOrder.hxx".}
proc constructBRepFillFaceAndOrder*(): BRepFillFaceAndOrder {.constructor,
    importcpp: "BRepFill_FaceAndOrder(@)", header: "BRepFill_FaceAndOrder.hxx".}
proc constructBRepFillFaceAndOrder*(aFace: TopoDS_Face; anOrder: GeomAbsShape): BRepFillFaceAndOrder {.
    constructor, importcpp: "BRepFill_FaceAndOrder(@)",
    header: "BRepFill_FaceAndOrder.hxx".}