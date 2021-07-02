##  Created on: 1995-08-28
##  Created by: Laurent BOURESCHE
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

discard "forward decl of math_Matrix"
discard "forward decl of PLib_Base"
discard "forward decl of PLib_JacobiPolynomial"
discard "forward decl of PLib_HermitJacobi"
discard "forward decl of PLib_DoubleJacobiPolynomial"
type
  PLib* {.importcpp: "PLib", header: "PLib.hxx", bycopy.} = object ## ! Used as argument for a non rational functions


proc noWeights*(): ptr TColStdArray1OfReal {.importcpp: "PLib::NoWeights(@)",
    header: "PLib.hxx".}
proc noWeights2*(): ptr TColStdArray2OfReal {.importcpp: "PLib::NoWeights2(@)",
    header: "PLib.hxx".}
proc setPoles*(poles: TColgpArray1OfPnt; fp: var TColStdArray1OfReal) {.
    importcpp: "PLib::SetPoles(@)", header: "PLib.hxx".}
proc setPoles*(poles: TColgpArray1OfPnt; weights: TColStdArray1OfReal;
              fp: var TColStdArray1OfReal) {.importcpp: "PLib::SetPoles(@)",
    header: "PLib.hxx".}
proc getPoles*(fp: TColStdArray1OfReal; poles: var TColgpArray1OfPnt) {.
    importcpp: "PLib::GetPoles(@)", header: "PLib.hxx".}
proc getPoles*(fp: TColStdArray1OfReal; poles: var TColgpArray1OfPnt;
              weights: var TColStdArray1OfReal) {.importcpp: "PLib::GetPoles(@)",
    header: "PLib.hxx".}
proc setPoles*(poles: TColgpArray1OfPnt2d; fp: var TColStdArray1OfReal) {.
    importcpp: "PLib::SetPoles(@)", header: "PLib.hxx".}
proc setPoles*(poles: TColgpArray1OfPnt2d; weights: TColStdArray1OfReal;
              fp: var TColStdArray1OfReal) {.importcpp: "PLib::SetPoles(@)",
    header: "PLib.hxx".}
proc getPoles*(fp: TColStdArray1OfReal; poles: var TColgpArray1OfPnt2d) {.
    importcpp: "PLib::GetPoles(@)", header: "PLib.hxx".}
proc getPoles*(fp: TColStdArray1OfReal; poles: var TColgpArray1OfPnt2d;
              weights: var TColStdArray1OfReal) {.importcpp: "PLib::GetPoles(@)",
    header: "PLib.hxx".}
proc bin*(n: StandardInteger; p: StandardInteger): StandardReal {.
    importcpp: "PLib::Bin(@)", header: "PLib.hxx".}
proc rationalDerivative*(degree: StandardInteger; n: StandardInteger;
                        dimension: StandardInteger; ders: var StandardReal;
                        rDers: var StandardReal;
                        all: StandardBoolean = standardTrue) {.
    importcpp: "PLib::RationalDerivative(@)", header: "PLib.hxx".}
proc rationalDerivatives*(derivativesRequest: StandardInteger;
                         dimension: StandardInteger;
                         polesDerivatives: var StandardReal;
                         weightsDerivatives: var StandardReal;
                         rationalDerivates: var StandardReal) {.
    importcpp: "PLib::RationalDerivatives(@)", header: "PLib.hxx".}
proc evalPolynomial*(u: StandardReal; derivativeOrder: StandardInteger;
                    degree: StandardInteger; dimension: StandardInteger;
                    polynomialCoeff: var StandardReal; results: var StandardReal) {.
    importcpp: "PLib::EvalPolynomial(@)", header: "PLib.hxx".}
proc noDerivativeEvalPolynomial*(u: StandardReal; degree: StandardInteger;
                                dimension: StandardInteger;
                                degreeDimension: StandardInteger;
                                polynomialCoeff: var StandardReal;
                                results: var StandardReal) {.
    importcpp: "PLib::NoDerivativeEvalPolynomial(@)", header: "PLib.hxx".}
proc evalPoly2Var*(u: StandardReal; v: StandardReal;
                  uDerivativeOrder: StandardInteger;
                  vDerivativeOrder: StandardInteger; uDegree: StandardInteger;
                  vDegree: StandardInteger; dimension: StandardInteger;
                  polynomialCoeff: var StandardReal; results: var StandardReal) {.
    importcpp: "PLib::EvalPoly2Var(@)", header: "PLib.hxx".}
proc evalLagrange*(u: StandardReal; derivativeOrder: StandardInteger;
                  degree: StandardInteger; dimension: StandardInteger;
                  valueArray: var StandardReal; parameterArray: var StandardReal;
                  results: var StandardReal): StandardInteger {.
    importcpp: "PLib::EvalLagrange(@)", header: "PLib.hxx".}
proc evalCubicHermite*(u: StandardReal; derivativeOrder: StandardInteger;
                      dimension: StandardInteger; valueArray: var StandardReal;
                      derivativeArray: var StandardReal;
                      parameterArray: var StandardReal; results: var StandardReal): StandardInteger {.
    importcpp: "PLib::EvalCubicHermite(@)", header: "PLib.hxx".}
proc hermiteCoefficients*(firstParameter: StandardReal;
                         lastParameter: StandardReal; firstOrder: StandardInteger;
                         lastOrder: StandardInteger; matrixCoefs: var MathMatrix): StandardBoolean {.
    importcpp: "PLib::HermiteCoefficients(@)", header: "PLib.hxx".}
proc coefficientsPoles*(coefs: TColgpArray1OfPnt; wCoefs: ptr TColStdArray1OfReal;
                       poles: var TColgpArray1OfPnt;
                       wPoles: ptr TColStdArray1OfReal) {.
    importcpp: "PLib::CoefficientsPoles(@)", header: "PLib.hxx".}
proc coefficientsPoles*(coefs: TColgpArray1OfPnt2d;
                       wCoefs: ptr TColStdArray1OfReal;
                       poles: var TColgpArray1OfPnt2d;
                       wPoles: ptr TColStdArray1OfReal) {.
    importcpp: "PLib::CoefficientsPoles(@)", header: "PLib.hxx".}
proc coefficientsPoles*(coefs: TColStdArray1OfReal;
                       wCoefs: ptr TColStdArray1OfReal;
                       poles: var TColStdArray1OfReal;
                       wPoles: ptr TColStdArray1OfReal) {.
    importcpp: "PLib::CoefficientsPoles(@)", header: "PLib.hxx".}
proc coefficientsPoles*(dim: StandardInteger; coefs: TColStdArray1OfReal;
                       wCoefs: ptr TColStdArray1OfReal;
                       poles: var TColStdArray1OfReal;
                       wPoles: ptr TColStdArray1OfReal) {.
    importcpp: "PLib::CoefficientsPoles(@)", header: "PLib.hxx".}
proc trimming*(u1: StandardReal; u2: StandardReal; coeffs: var TColgpArray1OfPnt;
              wCoeffs: ptr TColStdArray1OfReal) {.importcpp: "PLib::Trimming(@)",
    header: "PLib.hxx".}
proc trimming*(u1: StandardReal; u2: StandardReal; coeffs: var TColgpArray1OfPnt2d;
              wCoeffs: ptr TColStdArray1OfReal) {.importcpp: "PLib::Trimming(@)",
    header: "PLib.hxx".}
proc trimming*(u1: StandardReal; u2: StandardReal; coeffs: var TColStdArray1OfReal;
              wCoeffs: ptr TColStdArray1OfReal) {.importcpp: "PLib::Trimming(@)",
    header: "PLib.hxx".}
proc trimming*(u1: StandardReal; u2: StandardReal; dim: StandardInteger;
              coeffs: var TColStdArray1OfReal; wCoeffs: ptr TColStdArray1OfReal) {.
    importcpp: "PLib::Trimming(@)", header: "PLib.hxx".}
proc coefficientsPoles*(coefs: TColgpArray2OfPnt; wCoefs: ptr TColStdArray2OfReal;
                       poles: var TColgpArray2OfPnt;
                       wPoles: ptr TColStdArray2OfReal) {.
    importcpp: "PLib::CoefficientsPoles(@)", header: "PLib.hxx".}
proc uTrimming*(u1: StandardReal; u2: StandardReal; coeffs: var TColgpArray2OfPnt;
               wCoeffs: ptr TColStdArray2OfReal) {.importcpp: "PLib::UTrimming(@)",
    header: "PLib.hxx".}
proc vTrimming*(v1: StandardReal; v2: StandardReal; coeffs: var TColgpArray2OfPnt;
               wCoeffs: ptr TColStdArray2OfReal) {.importcpp: "PLib::VTrimming(@)",
    header: "PLib.hxx".}
proc hermiteInterpolate*(dimension: StandardInteger; firstParameter: StandardReal;
                        lastParameter: StandardReal; firstOrder: StandardInteger;
                        lastOrder: StandardInteger;
                        firstConstr: TColStdArray2OfReal;
                        lastConstr: TColStdArray2OfReal;
                        coefficients: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "PLib::HermiteInterpolate(@)", header: "PLib.hxx".}
proc jacobiParameters*(constraintOrder: GeomAbsShape; maxDegree: StandardInteger;
                      code: StandardInteger; nbGaussPoints: var StandardInteger;
                      workDegree: var StandardInteger) {.
    importcpp: "PLib::JacobiParameters(@)", header: "PLib.hxx".}
proc nivConstr*(constraintOrder: GeomAbsShape): StandardInteger {.
    importcpp: "PLib::NivConstr(@)", header: "PLib.hxx".}
proc constraintOrder*(nivConstr: StandardInteger): GeomAbsShape {.
    importcpp: "PLib::ConstraintOrder(@)", header: "PLib.hxx".}
proc evalLength*(degree: StandardInteger; dimension: StandardInteger;
                polynomialCoeff: var StandardReal; u1: StandardReal;
                u2: StandardReal; length: var StandardReal) {.
    importcpp: "PLib::EvalLength(@)", header: "PLib.hxx".}
proc evalLength*(degree: StandardInteger; dimension: StandardInteger;
                polynomialCoeff: var StandardReal; u1: StandardReal;
                u2: StandardReal; tol: StandardReal; length: var StandardReal;
                error: var StandardReal) {.importcpp: "PLib::EvalLength(@)",
                                        header: "PLib.hxx".}

