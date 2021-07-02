##  Created on: 1992-09-30
##  Created by: Jacques GOUSSARD
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

discard "forward decl of IntSurf_Quadric"
discard "forward decl of gp_Vec"
type
  IntSurfQuadricTool* {.importcpp: "IntSurf_QuadricTool",
                       header: "IntSurf_QuadricTool.hxx", bycopy.} = object ## ! Returns the value of the function.


proc value*(quad: IntSurfQuadric; x: StandardReal; y: StandardReal; z: StandardReal): StandardReal {.
    importcpp: "IntSurf_QuadricTool::Value(@)", header: "IntSurf_QuadricTool.hxx".}
proc gradient*(quad: IntSurfQuadric; x: StandardReal; y: StandardReal; z: StandardReal;
              v: var GpVec) {.importcpp: "IntSurf_QuadricTool::Gradient(@)",
                           header: "IntSurf_QuadricTool.hxx".}
proc valueAndGradient*(quad: IntSurfQuadric; x: StandardReal; y: StandardReal;
                      z: StandardReal; val: var StandardReal; grad: var GpVec) {.
    importcpp: "IntSurf_QuadricTool::ValueAndGradient(@)",
    header: "IntSurf_QuadricTool.hxx".}
proc tolerance*(quad: IntSurfQuadric): StandardReal {.
    importcpp: "IntSurf_QuadricTool::Tolerance(@)",
    header: "IntSurf_QuadricTool.hxx".}

