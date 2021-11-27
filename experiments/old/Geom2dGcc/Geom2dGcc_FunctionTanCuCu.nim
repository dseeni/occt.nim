##  Created on: 1992-02-20
##  Created by: Remy GILET
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of math_Matrix"
type
  Geom2dGccFunctionTanCuCu* {.importcpp: "Geom2dGcc_FunctionTanCuCu",
                             header: "Geom2dGcc_FunctionTanCuCu.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc `new`*(this: var Geom2dGccFunctionTanCuCu; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_FunctionTanCuCu::operator new",
    header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc `delete`*(this: var Geom2dGccFunctionTanCuCu; theAddress: pointer) {.
    importcpp: "Geom2dGcc_FunctionTanCuCu::operator delete",
    header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc `new[]`*(this: var Geom2dGccFunctionTanCuCu; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_FunctionTanCuCu::operator new[]",
    header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc `delete[]`*(this: var Geom2dGccFunctionTanCuCu; theAddress: pointer) {.
    importcpp: "Geom2dGcc_FunctionTanCuCu::operator delete[]",
    header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc `new`*(this: var Geom2dGccFunctionTanCuCu; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dGcc_FunctionTanCuCu::operator new",
    header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc `delete`*(this: var Geom2dGccFunctionTanCuCu; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dGcc_FunctionTanCuCu::operator delete",
    header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc constructGeom2dGccFunctionTanCuCu*(curv1: Geom2dAdaptorCurve;
                                       curv2: Geom2dAdaptorCurve): Geom2dGccFunctionTanCuCu {.
    constructor, importcpp: "Geom2dGcc_FunctionTanCuCu(@)",
    header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc constructGeom2dGccFunctionTanCuCu*(circ1: Circ2d; curv2: Geom2dAdaptorCurve): Geom2dGccFunctionTanCuCu {.
    constructor, importcpp: "Geom2dGcc_FunctionTanCuCu(@)",
    header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc initDerivative*(this: var Geom2dGccFunctionTanCuCu; x: MathVector;
                    point1: var Pnt2d; point2: var Pnt2d; tan1: var Vec2d;
                    tan2: var Vec2d; d21: var Vec2d; d22: var Vec2d) {.
    importcpp: "InitDerivative", header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc nbVariables*(this: Geom2dGccFunctionTanCuCu): int {.noSideEffect,
    importcpp: "NbVariables", header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc nbEquations*(this: Geom2dGccFunctionTanCuCu): int {.noSideEffect,
    importcpp: "NbEquations", header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc value*(this: var Geom2dGccFunctionTanCuCu; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc derivatives*(this: var Geom2dGccFunctionTanCuCu; x: MathVector;
                 deriv: var MathMatrix): StandardBoolean {.importcpp: "Derivatives",
    header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc values*(this: var Geom2dGccFunctionTanCuCu; x: MathVector; f: var MathVector;
            deriv: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "Geom2dGcc_FunctionTanCuCu.hxx".}