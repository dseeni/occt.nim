##  Created on: 1998-05-07
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
discard "forward decl of gp_Lin"
discard "forward decl of Plate_LinearScalarConstraint"
type
  PlateLineConstraint* {.importcpp: "Plate_LineConstraint",
                        header: "Plate_LineConstraint.hxx", bycopy.} = object


proc constructPlateLineConstraint*(point2d: Xy; lin: Lin; iu: int = 0; iv: int = 0): PlateLineConstraint {.
    constructor, importcpp: "Plate_LineConstraint(@)",
    header: "Plate_LineConstraint.hxx".}
proc lsc*(this: PlateLineConstraint): PlateLinearScalarConstraint {.noSideEffect,
    importcpp: "LSC", header: "Plate_LineConstraint.hxx".}
