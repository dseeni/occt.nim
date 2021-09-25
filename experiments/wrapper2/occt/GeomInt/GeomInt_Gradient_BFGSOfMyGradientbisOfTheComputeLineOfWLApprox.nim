##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_MyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of math_MultipleVarFunctionWithGradient"
type
  GeomIntGradientBFGSOfMyGradientbisOfTheComputeLineOfWLApprox* {.importcpp: "GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox", header: "GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox.hxx",
      bycopy.} = object of MathBFGS


proc constructGeomIntGradientBFGSOfMyGradientbisOfTheComputeLineOfWLApprox*(
    f: var MathMultipleVarFunctionWithGradient; startingPoint: MathVector;
    tolerance3d: float; tolerance2d: float; eps: float; nbIterations: int = 200): GeomIntGradientBFGSOfMyGradientbisOfTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox(@)", header: "GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc isSolutionReached*(this: GeomIntGradientBFGSOfMyGradientbisOfTheComputeLineOfWLApprox;
                       f: var MathMultipleVarFunctionWithGradient): bool {.
    noSideEffect, importcpp: "IsSolutionReached", header: "GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
