##  Created on: 1999-03-09
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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

## ! Contains commands to activate package ShapeAnalysis
## ! List of DRAW commands and corresponding functionalities:
## ! tolerance - ShapeAnalysis_ShapeTolerance
## ! projcurve - ShapeAnalysis_Curve
## ! projface  - ShapeAnalysis_Surface

type
  SWDRAW_ShapeAnalysis* {.importcpp: "SWDRAW_ShapeAnalysis",
                         header: "SWDRAW_ShapeAnalysis.hxx", bycopy.} = object ## ! Loads
                                                                          ## commands
                                                                          ## defined in
                                                                          ## ShapeAnalysis


proc initCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "SWDRAW_ShapeAnalysis::InitCommands(@)",
    header: "SWDRAW_ShapeAnalysis.hxx".}

