##  Created on: 1990-12-17
##  Created by: Remi Lequette
##  Copyright (c) 1990-1999 Matra Datavision
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

discard "forward decl of TopoDS_TShape"
discard "forward decl of TopoDS_TCompound"
type
  HandleTopoDS_TCompound* = Handle[TopoDS_TCompound]

## ! A TCompound is an all-purpose set of Shapes.

type
  TopoDS_TCompound* {.importcpp: "TopoDS_TCompound",
                     header: "TopoDS_TCompound.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                 ## !
                                                                                 ## Creates
                                                                                 ## an
                                                                                 ## empty
                                                                                 ## TCompound.


proc newTopoDS_TCompound*(): TopoDS_TCompound {.cdecl, constructor,
    importcpp: "TopoDS_TCompound(@)", dynlib: tkernel.}
proc shapeType*(this: TopoDS_TCompound): TopAbsShapeEnum {.noSideEffect, cdecl,
    importcpp: "ShapeType", dynlib: tkernel.}
proc emptyCopy*(this: TopoDS_TCompound): Handle[TopoDS_TShape] {.noSideEffect, cdecl,
    importcpp: "EmptyCopy", dynlib: tkernel.}