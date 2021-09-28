##  Created on: 2000-10-20
##  Created by: Julia DOROVSKIKH
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of Geom_Plane"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of PrsDim_MidPointRelation"
type
  HandleC1C1* = Handle[PrsDimMidPointRelation]

## ! presentation of equal distance to point myMidPoint

type
  PrsDimMidPointRelation* {.importcpp: "PrsDim_MidPointRelation",
                           header: "PrsDim_MidPointRelation.hxx", bycopy.} = object of PrsDimRelation

  PrsDimMidPointRelationbaseType* = PrsDimRelation

proc getTypeName*(): cstring {.importcpp: "PrsDim_MidPointRelation::get_type_name(@)",
                            header: "PrsDim_MidPointRelation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsDim_MidPointRelation::get_type_descriptor(@)",
    header: "PrsDim_MidPointRelation.hxx".}
proc dynamicType*(this: PrsDimMidPointRelation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_MidPointRelation.hxx".}
proc constructPrsDimMidPointRelation*(aSymmTool: TopoDS_Shape;
                                     firstShape: TopoDS_Shape;
                                     secondShape: TopoDS_Shape;
                                     aPlane: Handle[GeomPlane]): PrsDimMidPointRelation {.
    constructor, importcpp: "PrsDim_MidPointRelation(@)",
    header: "PrsDim_MidPointRelation.hxx".}
proc isMovable*(this: PrsDimMidPointRelation): bool {.noSideEffect,
    importcpp: "IsMovable", header: "PrsDim_MidPointRelation.hxx".}
proc setTool*(this: var PrsDimMidPointRelation; aMidPointTool: TopoDS_Shape) {.
    importcpp: "SetTool", header: "PrsDim_MidPointRelation.hxx".}
proc getTool*(this: PrsDimMidPointRelation): TopoDS_Shape {.noSideEffect,
    importcpp: "GetTool", header: "PrsDim_MidPointRelation.hxx".}

























