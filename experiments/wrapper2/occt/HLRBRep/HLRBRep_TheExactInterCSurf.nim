##  Created on: 1992-10-14
##  Created by: Christophe MARION
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of HLRBRep_SurfaceTool"
discard "forward decl of gp_Lin"
discard "forward decl of HLRBRep_LineTool"
discard "forward decl of HLRBRep_TheCSFunctionOfInterCSurf"
discard "forward decl of math_FunctionSetRoot"
discard "forward decl of gp_Pnt"
type
  HLRBRepTheExactInterCSurf* {.importcpp: "HLRBRep_TheExactInterCSurf",
                              header: "HLRBRep_TheExactInterCSurf.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## compute
                                                                                     ## the
                                                                                     ## solution
                                                                                     ## point
                                                                                     ## with
                                                                                     ## the
                                                                                     ## close
                                                                                     ## point
                                                                                     ##
                                                                                     ## !
                                                                                     ## MarginCoef
                                                                                     ## is
                                                                                     ## the
                                                                                     ## coefficient
                                                                                     ## for
                                                                                     ## extension
                                                                                     ## of
                                                                                     ## UV
                                                                                     ## bounds.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Ex.,
                                                                                     ## UFirst
                                                                                     ## -=
                                                                                     ## MarginCoef*(ULast-UFirst)


proc constructHLRBRepTheExactInterCSurf*(u: float; v: float; w: float;
                                        f: HLRBRepTheCSFunctionOfInterCSurf;
                                        tolTangency: float;
                                        marginCoef: float = 0.0): HLRBRepTheExactInterCSurf {.
    constructor, importcpp: "HLRBRep_TheExactInterCSurf(@)",
    header: "HLRBRep_TheExactInterCSurf.hxx".}
proc constructHLRBRepTheExactInterCSurf*(f: HLRBRepTheCSFunctionOfInterCSurf;
                                        tolTangency: float): HLRBRepTheExactInterCSurf {.
    constructor, importcpp: "HLRBRep_TheExactInterCSurf(@)",
    header: "HLRBRep_TheExactInterCSurf.hxx".}
proc perform*(this: var HLRBRepTheExactInterCSurf; u: float; v: float; w: float;
             rsnld: var MathFunctionSetRoot; u0: float; v0: float; u1: float; v1: float;
             w0: float; w1: float) {.importcpp: "Perform",
                                 header: "HLRBRep_TheExactInterCSurf.hxx".}
proc isDone*(this: HLRBRepTheExactInterCSurf): bool {.noSideEffect,
    importcpp: "IsDone", header: "HLRBRep_TheExactInterCSurf.hxx".}
proc isEmpty*(this: HLRBRepTheExactInterCSurf): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "HLRBRep_TheExactInterCSurf.hxx".}
proc point*(this: HLRBRepTheExactInterCSurf): Pnt {.noSideEffect, importcpp: "Point",
    header: "HLRBRep_TheExactInterCSurf.hxx".}
proc parameterOnCurve*(this: HLRBRepTheExactInterCSurf): float {.noSideEffect,
    importcpp: "ParameterOnCurve", header: "HLRBRep_TheExactInterCSurf.hxx".}
proc parameterOnSurface*(this: HLRBRepTheExactInterCSurf; u: var float; v: var float) {.
    noSideEffect, importcpp: "ParameterOnSurface",
    header: "HLRBRep_TheExactInterCSurf.hxx".}
proc function*(this: var HLRBRepTheExactInterCSurf): var HLRBRepTheCSFunctionOfInterCSurf {.
    importcpp: "Function", header: "HLRBRep_TheExactInterCSurf.hxx".}
