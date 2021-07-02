##  Created on: 1998-04-17
##  Created by: Andre LIEUTIER
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

discard "forward decl of gp_XY"
discard "forward decl of Plate_D1"
discard "forward decl of Plate_D2"
discard "forward decl of NLPlate_HPG2Constraint"
discard "forward decl of NLPlate_HPG2Constraint"
type
  HandleNLPlateHPG2Constraint* = Handle[NLPlateHPG2Constraint]

## ! define a PinPoint (no G0)  G2 Constraint used to load a Non
## ! Linear Plate

type
  NLPlateHPG2Constraint* {.importcpp: "NLPlate_HPG2Constraint",
                          header: "NLPlate_HPG2Constraint.hxx", bycopy.} = object of NLPlateHPG1Constraint


proc constructNLPlateHPG2Constraint*(uv: GpXY; d1t: PlateD1; d2t: PlateD2): NLPlateHPG2Constraint {.
    constructor, importcpp: "NLPlate_HPG2Constraint(@)",
    header: "NLPlate_HPG2Constraint.hxx".}
proc activeOrder*(this: NLPlateHPG2Constraint): StandardInteger {.noSideEffect,
    importcpp: "ActiveOrder", header: "NLPlate_HPG2Constraint.hxx".}
proc g2Target*(this: NLPlateHPG2Constraint): PlateD2 {.noSideEffect,
    importcpp: "G2Target", header: "NLPlate_HPG2Constraint.hxx".}
type
  NLPlateHPG2ConstraintbaseType* = NLPlateHPG1Constraint

proc getTypeName*(): cstring {.importcpp: "NLPlate_HPG2Constraint::get_type_name(@)",
                            header: "NLPlate_HPG2Constraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "NLPlate_HPG2Constraint::get_type_descriptor(@)",
    header: "NLPlate_HPG2Constraint.hxx".}
proc dynamicType*(this: NLPlateHPG2Constraint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "NLPlate_HPG2Constraint.hxx".}

