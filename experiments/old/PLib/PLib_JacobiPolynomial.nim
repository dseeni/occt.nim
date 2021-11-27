##  Created on: 1996-10-08
##  Created by: Jeannine PANTIATICI
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of PLib_JacobiPolynomial"
discard "forward decl of PLib_JacobiPolynomial"
type
  HandleC1C1* = Handle[PLibJacobiPolynomial]

## ! This class provides method  to work with Jacobi  Polynomials
## ! relativly to   an order of constraint
## ! q  = myWorkDegree-2*(myNivConstr+1)
## ! Jk(t)  for k=0,q compose  the   Jacobi Polynomial  base relativly  to  the weigth W(t)
## ! iorder is the integer  value for the constraints:
## ! iorder = 0 <=> ConstraintOrder  = GeomAbs_C0
## ! iorder = 1 <=>  ConstraintOrder = GeomAbs_C1
## ! iorder = 2 <=> ConstraintOrder = GeomAbs_C2
## ! P(t) = R(t) + W(t) * Q(t) Where W(t) = (1-t**2)**(2*iordre+2)
## ! the coefficients JacCoeff represents P(t) JacCoeff are stored as follow:
## !
## ! c0(1)      c0(2) ....       c0(Dimension)
## ! c1(1)      c1(2) ....       c1(Dimension)
## !
## ! cDegree(1) cDegree(2) ....  cDegree(Dimension)
## !
## ! The coefficients
## ! c0(1)                  c0(2) ....            c0(Dimension)
## ! c2*ordre+1(1)                ...          c2*ordre+1(dimension)
## !
## ! represents the  part  of the polynomial in  the
## ! canonical base: R(t)
## ! R(t) = c0 + c1   t + ...+ c2*iordre+1 t**2*iordre+1
## ! The following coefficients represents the part of the
## ! polynomial in the Jacobi base ie Q(t)
## ! Q(t) = c2*iordre+2  J0(t) + ...+ cDegree JDegree-2*iordre-2

type
  PLibJacobiPolynomial* {.importcpp: "PLib_JacobiPolynomial",
                         header: "PLib_JacobiPolynomial.hxx", bycopy.} = object of PLibBase ##
                                                                                     ## !
                                                                                     ## Initialize
                                                                                     ## the
                                                                                     ## polynomial
                                                                                     ## class
                                                                                     ##
                                                                                     ## !
                                                                                     ## Degree
                                                                                     ## has
                                                                                     ## to
                                                                                     ## be
                                                                                     ## <=
                                                                                     ## 30
                                                                                     ##
                                                                                     ## !
                                                                                     ## ConstraintOrder
                                                                                     ## has
                                                                                     ## to
                                                                                     ## be
                                                                                     ## GeomAbs_C0
                                                                                     ##
                                                                                     ## !
                                                                                     ## GeomAbs_C1
                                                                                     ##
                                                                                     ## !
                                                                                     ## GeomAbs_C2
                                                                                     ##
                                                                                     ## !
                                                                                     ## Compute
                                                                                     ## the
                                                                                     ## values
                                                                                     ## and
                                                                                     ## the
                                                                                     ## derivatives
                                                                                     ## values
                                                                                     ## of
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## basis
                                                                                     ## functions
                                                                                     ## in
                                                                                     ## u


proc constructPLibJacobiPolynomial*(workDegree: cint; constraintOrder: GeomAbsShape): PLibJacobiPolynomial {.
    constructor, importcpp: "PLib_JacobiPolynomial(@)",
    header: "PLib_JacobiPolynomial.hxx".}
proc points*(this: PLibJacobiPolynomial; nbGaussPoints: cint;
            tabPoints: var TColStdArray1OfReal) {.noSideEffect, importcpp: "Points",
    header: "PLib_JacobiPolynomial.hxx".}
proc weights*(this: PLibJacobiPolynomial; nbGaussPoints: cint;
             tabWeights: var TColStdArray2OfReal) {.noSideEffect,
    importcpp: "Weights", header: "PLib_JacobiPolynomial.hxx".}
proc maxValue*(this: PLibJacobiPolynomial; tabMax: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "MaxValue", header: "PLib_JacobiPolynomial.hxx".}
proc maxError*(this: PLibJacobiPolynomial; dimension: cint; jacCoeff: var cfloat;
              newDegree: cint): cfloat {.noSideEffect, importcpp: "MaxError",
                                      header: "PLib_JacobiPolynomial.hxx".}
proc reduceDegree*(this: PLibJacobiPolynomial; dimension: cint; maxDegree: cint;
                  tol: cfloat; jacCoeff: var cfloat; newDegree: var cint;
                  maxError: var cfloat) {.noSideEffect, importcpp: "ReduceDegree",
                                       header: "PLib_JacobiPolynomial.hxx".}
proc averageError*(this: PLibJacobiPolynomial; dimension: cint; jacCoeff: var cfloat;
                  newDegree: cint): cfloat {.noSideEffect,
    importcpp: "AverageError", header: "PLib_JacobiPolynomial.hxx".}
proc toCoefficients*(this: PLibJacobiPolynomial; dimension: cint; degree: cint;
                    jacCoeff: TColStdArray1OfReal;
                    coefficients: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "ToCoefficients", header: "PLib_JacobiPolynomial.hxx".}
proc d0*(this: var PLibJacobiPolynomial; u: cfloat;
        basisValue: var TColStdArray1OfReal) {.importcpp: "D0",
    header: "PLib_JacobiPolynomial.hxx".}
proc d1*(this: var PLibJacobiPolynomial; u: cfloat;
        basisValue: var TColStdArray1OfReal; basisD1: var TColStdArray1OfReal) {.
    importcpp: "D1", header: "PLib_JacobiPolynomial.hxx".}
proc d2*(this: var PLibJacobiPolynomial; u: cfloat;
        basisValue: var TColStdArray1OfReal; basisD1: var TColStdArray1OfReal;
        basisD2: var TColStdArray1OfReal) {.importcpp: "D2",
    header: "PLib_JacobiPolynomial.hxx".}
proc d3*(this: var PLibJacobiPolynomial; u: cfloat;
        basisValue: var TColStdArray1OfReal; basisD1: var TColStdArray1OfReal;
        basisD2: var TColStdArray1OfReal; basisD3: var TColStdArray1OfReal) {.
    importcpp: "D3", header: "PLib_JacobiPolynomial.hxx".}
proc workDegree*(this: PLibJacobiPolynomial): cint {.noSideEffect,
    importcpp: "WorkDegree", header: "PLib_JacobiPolynomial.hxx".}
proc nivConstr*(this: PLibJacobiPolynomial): cint {.noSideEffect,
    importcpp: "NivConstr", header: "PLib_JacobiPolynomial.hxx".}
type
  PLibJacobiPolynomialbaseType* = PLibBase

proc getTypeName*(): cstring {.importcpp: "PLib_JacobiPolynomial::get_type_name(@)",
                            header: "PLib_JacobiPolynomial.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PLib_JacobiPolynomial::get_type_descriptor(@)",
    header: "PLib_JacobiPolynomial.hxx".}
proc dynamicType*(this: PLibJacobiPolynomial): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PLib_JacobiPolynomial.hxx".}
























