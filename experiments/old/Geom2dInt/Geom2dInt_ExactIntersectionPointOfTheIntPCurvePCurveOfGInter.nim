##  Created on: 1992-06-04
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

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of Geom2dInt_TheProjPCurOfGInter"
discard "forward decl of Geom2dInt_TheIntPCurvePCurveOfGInter"
discard "forward decl of Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter"
discard "forward decl of Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter"
type
  Geom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter* {.importcpp: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter", header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx",
      bycopy.} = object


proc `new`*(this: var Geom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter;
           theSize: csize_t): pointer {.importcpp: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter::operator new", header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc `delete`*(this: var Geom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter;
              theAddress: pointer) {.importcpp: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter::operator delete", header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc `new[]`*(this: var Geom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter;
             theSize: csize_t): pointer {.importcpp: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter::operator new[]", header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc `delete[]`*(this: var Geom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter;
                theAddress: pointer) {.importcpp: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter::operator delete[]", header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc `new`*(this: var Geom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter::operator new",
    header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc `delete`*(this: var Geom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter;
              a2: pointer; a3: pointer) {.importcpp: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter::operator delete", header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc constructGeom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter*(
    c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d; tol: StandardReal): Geom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter(@)",
    header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter;
             poly1: Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter;
             poly2: Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter;
             numSegOn1: var int; numSegOn2: var int; paramOnSeg1: var StandardReal;
             paramOnSeg2: var StandardReal) {.importcpp: "Perform",
    header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter;
             uo: StandardReal; vo: StandardReal; uInf: StandardReal;
             vInf: StandardReal; uSup: StandardReal; vSup: StandardReal) {.
    importcpp: "Perform",
    header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc nbRoots*(this: Geom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter): int {.
    noSideEffect, importcpp: "NbRoots",
    header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc roots*(this: var Geom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter;
           u: var StandardReal; v: var StandardReal) {.importcpp: "Roots",
    header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}
proc anErrorOccurred*(this: Geom2dIntExactIntersectionPointOfTheIntPCurvePCurveOfGInter): StandardBoolean {.
    noSideEffect, importcpp: "AnErrorOccurred",
    header: "Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx".}