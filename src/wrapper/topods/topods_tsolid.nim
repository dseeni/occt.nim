import ../../tkg3d/topabs/topabs_types
import topods_types
import ../../tkernel/standard/standard_types





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





proc newTopoDS_TSolid*(): TopoDS_TSolid {.cdecl, constructor,
                                       importcpp: "TopoDS_TSolid(@)",
                                       header: "TopoDS_TSolid.hxx".}
proc shapeType*(this: TopoDS_TSolid): TopAbsShapeEnum {.noSideEffect, cdecl,
    importcpp: "ShapeType", header: "TopoDS_TSolid.hxx".}
proc emptyCopy*(this: TopoDS_TSolid): Handle[TopoDS_TShape] {.noSideEffect, cdecl,
    importcpp: "EmptyCopy", header: "TopoDS_TSolid.hxx".}

