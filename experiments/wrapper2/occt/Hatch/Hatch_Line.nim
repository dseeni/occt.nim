##  Created on: 1992-08-18
##  Created by: Modelistation
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

discard "forward decl of Hatch_Hatcher"
discard "forward decl of gp_Lin2d"
type
  HatchLine* {.importcpp: "Hatch_Line", header: "Hatch_Line.hxx", bycopy.} = object


proc constructHatchLine*(): HatchLine {.constructor, importcpp: "Hatch_Line(@)",
                                     header: "Hatch_Line.hxx".}
proc constructHatchLine*(L: Lin2d; t: HatchLineForm): HatchLine {.constructor,
    importcpp: "Hatch_Line(@)", header: "Hatch_Line.hxx".}
proc addIntersection*(this: var HatchLine; par1: float; start: bool; index: int;
                     par2: float; theToler: float) {.importcpp: "AddIntersection",
    header: "Hatch_Line.hxx".}
