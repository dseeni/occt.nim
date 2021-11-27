##  Created on: 1994-04-05
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Bisector_Curve"
type
  BisectorFunctionInter* {.importcpp: "Bisector_FunctionInter",
                          header: "Bisector_FunctionInter.hxx", bycopy.} = object of MathFunctionWithDerivative


proc constructBisectorFunctionInter*(): BisectorFunctionInter {.constructor,
    importcpp: "Bisector_FunctionInter(@)", header: "Bisector_FunctionInter.hxx".}
proc constructBisectorFunctionInter*(c: Handle[Geom2dCurve];
                                    bis1: Handle[BisectorCurve];
                                    bis2: Handle[BisectorCurve]): BisectorFunctionInter {.
    constructor, importcpp: "Bisector_FunctionInter(@)",
    header: "Bisector_FunctionInter.hxx".}
proc perform*(this: var BisectorFunctionInter; c: Handle[Geom2dCurve];
             bis1: Handle[BisectorCurve]; bis2: Handle[BisectorCurve]) {.
    importcpp: "Perform", header: "Bisector_FunctionInter.hxx".}
proc value*(this: var BisectorFunctionInter; x: cfloat; f: var cfloat): bool {.
    importcpp: "Value", header: "Bisector_FunctionInter.hxx".}
proc derivative*(this: var BisectorFunctionInter; x: cfloat; d: var cfloat): bool {.
    importcpp: "Derivative", header: "Bisector_FunctionInter.hxx".}
proc values*(this: var BisectorFunctionInter; x: cfloat; f: var cfloat; d: var cfloat): bool {.
    importcpp: "Values", header: "Bisector_FunctionInter.hxx".}
























