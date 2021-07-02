##  Created on: 1991-12-02
##  Created by: Laurent PAINNOT
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppDef_MyLineTool"
discard "forward decl of AppDef_TheGradient"
discard "forward decl of AppDef_ParLeastSquareOfTheGradient"
discard "forward decl of AppDef_ResConstraintOfTheGradient"
discard "forward decl of AppDef_ParFunctionOfTheGradient"
discard "forward decl of math_MultipleVarFunctionWithGradient"
type
  AppDefGradientBFGSOfTheGradient* {.importcpp: "AppDef_Gradient_BFGSOfTheGradient", header: "AppDef_Gradient_BFGSOfTheGradient.hxx",
                                    bycopy.} = object of MathBFGS


proc constructAppDefGradientBFGSOfTheGradient*(
    f: var MathMultipleVarFunctionWithGradient; startingPoint: MathVector;
    tolerance3d: StandardReal; tolerance2d: StandardReal; eps: StandardReal;
    nbIterations: StandardInteger = 200): AppDefGradientBFGSOfTheGradient {.
    constructor, importcpp: "AppDef_Gradient_BFGSOfTheGradient(@)",
    header: "AppDef_Gradient_BFGSOfTheGradient.hxx".}
proc isSolutionReached*(this: AppDefGradientBFGSOfTheGradient;
                       f: var MathMultipleVarFunctionWithGradient): StandardBoolean {.
    noSideEffect, importcpp: "IsSolutionReached",
    header: "AppDef_Gradient_BFGSOfTheGradient.hxx".}

