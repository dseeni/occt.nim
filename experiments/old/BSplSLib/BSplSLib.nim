##  Created on: 1991-08-26
##  Created by: JCV
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  BSplSLib* {.importcpp: "BSplSLib", header: "BSplSLib.hxx", bycopy.} = object ## ! this is a one
                                                                       ## dimensional function
                                                                       ## ! typedef  void
                                                                       ## (*EvaluatorFunction)  (
                                                                       ## !
                                                                       ## Standard_Integer     //
                                                                       ## Derivative Request
                                                                       ## !
                                                                       ## Standard_Real    *   //
                                                                       ## StartEnd[2][2]
                                                                       ## ! //  [0] = U
                                                                       ## ! //  [1] = V
                                                                       ## ! //        [0] = start
                                                                       ## ! //        [1] = end
                                                                       ## !
                                                                       ## Standard_Real        //
                                                                       ## UParameter
                                                                       ## !
                                                                       ## Standard_Real        //
                                                                       ## VParamerer
                                                                       ## !
                                                                       ## Standard_Real    &   // Result
                                                                       ## !
                                                                       ## Standard_Integer &) ;// Error Code
                                                                       ## ! serves to multiply a given vectorial BSpline by a function
                                                                       ## ! Computes  the
                                                                       ## derivatives   of  a    ratio  of
                                                                       ## !
                                                                       ## two-variables functions  x(u,v) / w(u,v) at orders
                                                                       ## ! <N,M>,    x(u,v)    is   a  vector in    dimension
                                                                       ## ! <3>.
                                                                       ## !
                                                                       ## ! <Ders> is  an array
                                                                       ## containing the values  of the
                                                                       ## ! input
                                                                       ## derivatives from 0  to
                                                                       ## Min(<N>,<UDeg>), 0 to
                                                                       ## !
                                                                       ## Min(<M>,<VDeg>).    For orders    higher      than
                                                                       ## !
                                                                       ## <UDeg,VDeg>  the  input
                                                                       ## derivatives are assumed to
                                                                       ## ! be 0.
                                                                       ## !
                                                                       ## ! The <Ders> is a 2d array and the  dimension of the
                                                                       ## ! lines is always
                                                                       ## (<VDeg>+1) * (<3>+1), even
                                                                       ## ! if   <N> is smaller  than  <Udeg> (the
                                                                       ## derivatives
                                                                       ## ! higher than <N> are not used).
                                                                       ## !
                                                                       ## ! Content of <Ders> :
                                                                       ## !
                                                                       ## ! x(i,j)[k] means :  the composant  k of x derivated
                                                                       ## ! (i) times in u and (j) times in v.
                                                                       ## !
                                                                       ## ! ... First line ...
                                                                       ## !
                                                                       ## !
                                                                       ## x[1],x[2],...,x[3],w
                                                                       ## !
                                                                       ## x(0,1)[1],...,x(0,1)[3],w(1,0)
                                                                       ## ! ...
                                                                       ## !
                                                                       ## x(0,VDeg)[1],...,x(0,VDeg)[3],w(0,VDeg)
                                                                       ## !
                                                                       ## ! ... Then second line ...
                                                                       ## !
                                                                       ## !
                                                                       ## x(1,0)[1],...,x(1,0)[3],w(1,0)
                                                                       ## !
                                                                       ## x(1,1)[1],...,x(1,1)[3],w(1,1)
                                                                       ## ! ...
                                                                       ## !
                                                                       ## x(1,VDeg)[1],...,x(1,VDeg)[3],w(1,VDeg)
                                                                       ## !
                                                                       ## ! ...
                                                                       ## !
                                                                       ## ! ... Last line ...
                                                                       ## !
                                                                       ## !
                                                                       ## x(UDeg,0)[1],...,x(UDeg,0)[3],w(UDeg,0)
                                                                       ## !
                                                                       ## x(UDeg,1)[1],...,x(UDeg,1)[3],w(UDeg,1)
                                                                       ## ! ...
                                                                       ## !
                                                                       ## x(Udeg,VDeg)[1],...,x(UDeg,VDeg)[3],w(Udeg,VDeg)
                                                                       ## !
                                                                       ## ! If <All>  is false, only  the
                                                                       ## derivative  at order
                                                                       ## ! <N,M> is computed.  <RDers> is an  array of length
                                                                       ## ! 3 which will contain the result :
                                                                       ## !
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <N> <M> times
                                                                       ## !
                                                                       ## ! If   <All>    is  true  multiples
                                                                       ## derivatives are
                                                                       ## ! computed. All the
                                                                       ## derivatives (i,j) with 0 <= i+j
                                                                       ## ! <= Max(N,M) are  computed.  <RDers> is an array of
                                                                       ## ! length 3 *  (<N>+1)  * (<M>+1) which  will
                                                                       ## ! contains :
                                                                       ## !
                                                                       ## ! x(1)/w , x(2)/w ,  ...
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <0,1> times
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <0,2> times
                                                                       ## ! ...
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <0,N> times
                                                                       ## !
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <1,0> times
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <1,1> times
                                                                       ## ! ...
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <1,N> times
                                                                       ## !
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <N,0> times
                                                                       ## ! ....
                                                                       ## ! Warning: <RDers> must be
                                                                       ## dimensionned properly.


proc rationalDerivative*(uDeg: cint; vDeg: cint; n: cint; m: cint; ders: var cfloat;
                        rDers: var cfloat; all: bool = true) {.
    importcpp: "BSplSLib::RationalDerivative(@)", header: "BSplSLib.hxx".}
proc d0*(u: cfloat; v: cfloat; uIndex: cint; vIndex: cint; poles: TColgpArray2OfPnt;
        weights: ptr TColStdArray2OfReal; uKnots: TColStdArray1OfReal;
        vKnots: TColStdArray1OfReal; uMults: ptr TColStdArray1OfInteger;
        vMults: ptr TColStdArray1OfInteger; uDegree: cint; vDegree: cint; uRat: bool;
        vRat: bool; uPer: bool; vPer: bool; p: var Pnt) {.importcpp: "BSplSLib::D0(@)",
    header: "BSplSLib.hxx".}
proc d1*(u: cfloat; v: cfloat; uIndex: cint; vIndex: cint; poles: TColgpArray2OfPnt;
        weights: ptr TColStdArray2OfReal; uKnots: TColStdArray1OfReal;
        vKnots: TColStdArray1OfReal; uMults: ptr TColStdArray1OfInteger;
        vMults: ptr TColStdArray1OfInteger; degree: cint; vDegree: cint; uRat: bool;
        vRat: bool; uPer: bool; vPer: bool; p: var Pnt; vu: var Vec; vv: var Vec) {.
    importcpp: "BSplSLib::D1(@)", header: "BSplSLib.hxx".}
proc d2*(u: cfloat; v: cfloat; uIndex: cint; vIndex: cint; poles: TColgpArray2OfPnt;
        weights: ptr TColStdArray2OfReal; uKnots: TColStdArray1OfReal;
        vKnots: TColStdArray1OfReal; uMults: ptr TColStdArray1OfInteger;
        vMults: ptr TColStdArray1OfInteger; uDegree: cint; vDegree: cint; uRat: bool;
        vRat: bool; uPer: bool; vPer: bool; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec) {.importcpp: "BSplSLib::D2(@)",
                                header: "BSplSLib.hxx".}
proc d3*(u: cfloat; v: cfloat; uIndex: cint; vIndex: cint; poles: TColgpArray2OfPnt;
        weights: ptr TColStdArray2OfReal; uKnots: TColStdArray1OfReal;
        vKnots: TColStdArray1OfReal; uMults: ptr TColStdArray1OfInteger;
        vMults: ptr TColStdArray1OfInteger; uDegree: cint; vDegree: cint; uRat: bool;
        vRat: bool; uPer: bool; vPer: bool; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec; vuuu: var Vec; vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "BSplSLib::D3(@)", header: "BSplSLib.hxx".}
proc dn*(u: cfloat; v: cfloat; nu: cint; nv: cint; uIndex: cint; vIndex: cint;
        poles: TColgpArray2OfPnt; weights: ptr TColStdArray2OfReal;
        uKnots: TColStdArray1OfReal; vKnots: TColStdArray1OfReal;
        uMults: ptr TColStdArray1OfInteger; vMults: ptr TColStdArray1OfInteger;
        uDegree: cint; vDegree: cint; uRat: bool; vRat: bool; uPer: bool; vPer: bool;
        vn: var Vec) {.importcpp: "BSplSLib::DN(@)", header: "BSplSLib.hxx".}
proc iso*(param: cfloat; isU: bool; poles: TColgpArray2OfPnt;
         weights: ptr TColStdArray2OfReal; knots: TColStdArray1OfReal;
         mults: ptr TColStdArray1OfInteger; degree: cint; periodic: bool;
         cPoles: var TColgpArray1OfPnt; cWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplSLib::Iso(@)", header: "BSplSLib.hxx".}
proc reverse*(poles: var TColgpArray2OfPnt; last: cint; uDirection: bool) {.
    importcpp: "BSplSLib::Reverse(@)", header: "BSplSLib.hxx".}
proc homogeneousD0*(u: cfloat; v: cfloat; uIndex: cint; vIndex: cint;
                   poles: TColgpArray2OfPnt; weights: ptr TColStdArray2OfReal;
                   uKnots: TColStdArray1OfReal; vKnots: TColStdArray1OfReal;
                   uMults: ptr TColStdArray1OfInteger;
                   vMults: ptr TColStdArray1OfInteger; uDegree: cint; vDegree: cint;
                   uRat: bool; vRat: bool; uPer: bool; vPer: bool; w: var cfloat;
                   p: var Pnt) {.importcpp: "BSplSLib::HomogeneousD0(@)",
                              header: "BSplSLib.hxx".}
proc homogeneousD1*(u: cfloat; v: cfloat; uIndex: cint; vIndex: cint;
                   poles: TColgpArray2OfPnt; weights: ptr TColStdArray2OfReal;
                   uKnots: TColStdArray1OfReal; vKnots: TColStdArray1OfReal;
                   uMults: ptr TColStdArray1OfInteger;
                   vMults: ptr TColStdArray1OfInteger; uDegree: cint; vDegree: cint;
                   uRat: bool; vRat: bool; uPer: bool; vPer: bool; n: var Pnt; nu: var Vec;
                   nv: var Vec; d: var cfloat; du: var cfloat; dv: var cfloat) {.
    importcpp: "BSplSLib::HomogeneousD1(@)", header: "BSplSLib.hxx".}
proc reverse*(weights: var TColStdArray2OfReal; last: cint; uDirection: bool) {.
    importcpp: "BSplSLib::Reverse(@)", header: "BSplSLib.hxx".}
proc isRational*(weights: TColStdArray2OfReal; i1: cint; i2: cint; j1: cint; j2: cint;
                epsilon: cfloat = 0.0): bool {.importcpp: "BSplSLib::IsRational(@)",
    header: "BSplSLib.hxx".}
proc setPoles*(poles: TColgpArray2OfPnt; fp: var TColStdArray1OfReal; uDirection: bool) {.
    importcpp: "BSplSLib::SetPoles(@)", header: "BSplSLib.hxx".}
proc setPoles*(poles: TColgpArray2OfPnt; weights: TColStdArray2OfReal;
              fp: var TColStdArray1OfReal; uDirection: bool) {.
    importcpp: "BSplSLib::SetPoles(@)", header: "BSplSLib.hxx".}
proc getPoles*(fp: TColStdArray1OfReal; poles: var TColgpArray2OfPnt; uDirection: bool) {.
    importcpp: "BSplSLib::GetPoles(@)", header: "BSplSLib.hxx".}
proc getPoles*(fp: TColStdArray1OfReal; poles: var TColgpArray2OfPnt;
              weights: var TColStdArray2OfReal; uDirection: bool) {.
    importcpp: "BSplSLib::GetPoles(@)", header: "BSplSLib.hxx".}
proc movePoint*(u: cfloat; v: cfloat; displ: Vec; uIndex1: cint; uIndex2: cint;
               vIndex1: cint; vIndex2: cint; uDegree: cint; vDegree: cint;
               rational: bool; poles: TColgpArray2OfPnt;
               weights: TColStdArray2OfReal; uFlatKnots: TColStdArray1OfReal;
               vFlatKnots: TColStdArray1OfReal; uFirstIndex: var cint;
               uLastIndex: var cint; vFirstIndex: var cint; vLastIndex: var cint;
               newPoles: var TColgpArray2OfPnt) {.
    importcpp: "BSplSLib::MovePoint(@)", header: "BSplSLib.hxx".}
proc insertKnots*(uDirection: bool; degree: cint; periodic: bool;
                 poles: TColgpArray2OfPnt; weights: ptr TColStdArray2OfReal;
                 knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                 addKnots: TColStdArray1OfReal;
                 addMults: ptr TColStdArray1OfInteger;
                 newPoles: var TColgpArray2OfPnt;
                 newWeights: ptr TColStdArray2OfReal;
                 newKnots: var TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger; epsilon: cfloat;
                 add: bool = true) {.importcpp: "BSplSLib::InsertKnots(@)",
                                 header: "BSplSLib.hxx".}
proc removeKnot*(uDirection: bool; index: cint; mult: cint; degree: cint; periodic: bool;
                poles: TColgpArray2OfPnt; weights: ptr TColStdArray2OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColgpArray2OfPnt;
                newWeights: ptr TColStdArray2OfReal;
                newKnots: var TColStdArray1OfReal;
                newMults: var TColStdArray1OfInteger; tolerance: cfloat): bool {.
    importcpp: "BSplSLib::RemoveKnot(@)", header: "BSplSLib.hxx".}
proc increaseDegree*(uDirection: bool; degree: cint; newDegree: cint; periodic: bool;
                    poles: TColgpArray2OfPnt; weights: ptr TColStdArray2OfReal;
                    knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                    newPoles: var TColgpArray2OfPnt;
                    newWeights: ptr TColStdArray2OfReal;
                    newKnots: var TColStdArray1OfReal;
                    newMults: var TColStdArray1OfInteger) {.
    importcpp: "BSplSLib::IncreaseDegree(@)", header: "BSplSLib.hxx".}
proc unperiodize*(uDirection: bool; degree: cint; mults: TColStdArray1OfInteger;
                 knots: TColStdArray1OfReal; poles: TColgpArray2OfPnt;
                 weights: ptr TColStdArray2OfReal;
                 newMults: var TColStdArray1OfInteger;
                 newKnots: var TColStdArray1OfReal;
                 newPoles: var TColgpArray2OfPnt;
                 newWeights: ptr TColStdArray2OfReal) {.
    importcpp: "BSplSLib::Unperiodize(@)", header: "BSplSLib.hxx".}
proc noWeights*(): ptr TColStdArray2OfReal {.importcpp: "BSplSLib::NoWeights(@)",
    header: "BSplSLib.hxx".}
proc buildCache*(u: cfloat; v: cfloat; uSpanDomain: cfloat; vSpanDomain: cfloat;
                uPeriodicFlag: bool; vPeriodicFlag: bool; uDegree: cint;
                vDegree: cint; uIndex: cint; vIndex: cint;
                uFlatKnots: TColStdArray1OfReal; vFlatKnots: TColStdArray1OfReal;
                poles: TColgpArray2OfPnt; weights: ptr TColStdArray2OfReal;
                cachePoles: var TColgpArray2OfPnt;
                cacheWeights: ptr TColStdArray2OfReal) {.
    importcpp: "BSplSLib::BuildCache(@)", header: "BSplSLib.hxx".}
proc buildCache*(theU: cfloat; theV: cfloat; theUSpanDomain: cfloat;
                theVSpanDomain: cfloat; theUPeriodic: bool; theVPeriodic: bool;
                theUDegree: cint; theVDegree: cint; theUIndex: cint; theVIndex: cint;
                theUFlatKnots: TColStdArray1OfReal;
                theVFlatKnots: TColStdArray1OfReal; thePoles: TColgpArray2OfPnt;
                theWeights: ptr TColStdArray2OfReal;
                theCacheArray: var TColStdArray2OfReal) {.
    importcpp: "BSplSLib::BuildCache(@)", header: "BSplSLib.hxx".}
proc cacheD0*(u: cfloat; v: cfloat; uDegree: cint; vDegree: cint;
             uCacheParameter: cfloat; vCacheParameter: cfloat; uSpanLenght: cfloat;
             vSpanLength: cfloat; poles: TColgpArray2OfPnt;
             weights: ptr TColStdArray2OfReal; point: var Pnt) {.
    importcpp: "BSplSLib::CacheD0(@)", header: "BSplSLib.hxx".}
proc coefsD0*(u: cfloat; v: cfloat; poles: TColgpArray2OfPnt;
             weights: ptr TColStdArray2OfReal; point: var Pnt) {.
    importcpp: "BSplSLib::CoefsD0(@)", header: "BSplSLib.hxx".}
proc cacheD1*(u: cfloat; v: cfloat; uDegree: cint; vDegree: cint;
             uCacheParameter: cfloat; vCacheParameter: cfloat; uSpanLenght: cfloat;
             vSpanLength: cfloat; poles: TColgpArray2OfPnt;
             weights: ptr TColStdArray2OfReal; point: var Pnt; vecU: var Vec;
             vecV: var Vec) {.importcpp: "BSplSLib::CacheD1(@)",
                           header: "BSplSLib.hxx".}
proc coefsD1*(u: cfloat; v: cfloat; poles: TColgpArray2OfPnt;
             weights: ptr TColStdArray2OfReal; point: var Pnt; vecU: var Vec;
             vecV: var Vec) {.importcpp: "BSplSLib::CoefsD1(@)",
                           header: "BSplSLib.hxx".}
proc cacheD2*(u: cfloat; v: cfloat; uDegree: cint; vDegree: cint;
             uCacheParameter: cfloat; vCacheParameter: cfloat; uSpanLenght: cfloat;
             vSpanLength: cfloat; poles: TColgpArray2OfPnt;
             weights: ptr TColStdArray2OfReal; point: var Pnt; vecU: var Vec;
             vecV: var Vec; vecUU: var Vec; vecUV: var Vec; vecVV: var Vec) {.
    importcpp: "BSplSLib::CacheD2(@)", header: "BSplSLib.hxx".}
proc coefsD2*(u: cfloat; v: cfloat; poles: TColgpArray2OfPnt;
             weights: ptr TColStdArray2OfReal; point: var Pnt; vecU: var Vec;
             vecV: var Vec; vecUU: var Vec; vecUV: var Vec; vecVV: var Vec) {.
    importcpp: "BSplSLib::CoefsD2(@)", header: "BSplSLib.hxx".}
proc polesCoefficients*(poles: TColgpArray2OfPnt; cachePoles: var TColgpArray2OfPnt) {.
    importcpp: "BSplSLib::PolesCoefficients(@)", header: "BSplSLib.hxx".}
proc polesCoefficients*(poles: TColgpArray2OfPnt; weights: ptr TColStdArray2OfReal;
                       cachePoles: var TColgpArray2OfPnt;
                       cacheWeights: ptr TColStdArray2OfReal) {.
    importcpp: "BSplSLib::PolesCoefficients(@)", header: "BSplSLib.hxx".}
proc resolution*(poles: TColgpArray2OfPnt; weights: ptr TColStdArray2OfReal;
                uKnots: TColStdArray1OfReal; vKnots: TColStdArray1OfReal;
                uMults: TColStdArray1OfInteger; vMults: TColStdArray1OfInteger;
                uDegree: cint; vDegree: cint; uRat: bool; vRat: bool; uPer: bool;
                vPer: bool; tolerance3D: cfloat; uTolerance: var cfloat;
                vTolerance: var cfloat) {.importcpp: "BSplSLib::Resolution(@)",
                                       header: "BSplSLib.hxx".}
proc interpolate*(uDegree: cint; vDegree: cint; uFlatKnots: TColStdArray1OfReal;
                 vFlatKnots: TColStdArray1OfReal;
                 uParameters: TColStdArray1OfReal;
                 vParameters: TColStdArray1OfReal; poles: var TColgpArray2OfPnt;
                 weights: var TColStdArray2OfReal; inversionProblem: var cint) {.
    importcpp: "BSplSLib::Interpolate(@)", header: "BSplSLib.hxx".}
proc interpolate*(uDegree: cint; vDegree: cint; uFlatKnots: TColStdArray1OfReal;
                 vFlatKnots: TColStdArray1OfReal;
                 uParameters: TColStdArray1OfReal;
                 vParameters: TColStdArray1OfReal; poles: var TColgpArray2OfPnt;
                 inversionProblem: var cint) {.
    importcpp: "BSplSLib::Interpolate(@)", header: "BSplSLib.hxx".}
proc functionMultiply*(function: BSplSLibEvaluatorFunction; uBSplineDegree: cint;
                      vBSplineDegree: cint; uBSplineKnots: TColStdArray1OfReal;
                      vBSplineKnots: TColStdArray1OfReal;
                      uMults: ptr TColStdArray1OfInteger;
                      vMults: ptr TColStdArray1OfInteger; poles: TColgpArray2OfPnt;
                      weights: ptr TColStdArray2OfReal;
                      uFlatKnots: TColStdArray1OfReal;
                      vFlatKnots: TColStdArray1OfReal; uNewDegree: cint;
                      vNewDegree: cint; newNumerator: var TColgpArray2OfPnt;
                      newDenominator: var TColStdArray2OfReal; theStatus: var cint) {.
    importcpp: "BSplSLib::FunctionMultiply(@)", header: "BSplSLib.hxx".}
























