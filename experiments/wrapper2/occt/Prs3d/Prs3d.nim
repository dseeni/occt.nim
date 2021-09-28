##  Created on: 1992-08-26
##  Created by: Jean Louis FRENKEL
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

discard "forward decl of Poly_Triangulation"
type
  Prs3d* {.importcpp: "Prs3d", header: "Prs3d.hxx", bycopy.} = object ## ! draws an arrow at a given location, with respect
                                                              ## ! to a given direction.


proc matchSegment*(x: cfloat; y: cfloat; z: cfloat; aDistance: cfloat; p1: Pnt; p2: Pnt;
                  dist: var cfloat): bool {.importcpp: "Prs3d::MatchSegment(@)",
                                        header: "Prs3d.hxx".}
proc getDeflection*(theBndMin: Graphic3dVec3d; theBndMax: Graphic3dVec3d;
                   theDeviationCoefficient: cfloat): cfloat {.
    importcpp: "Prs3d::GetDeflection(@)", header: "Prs3d.hxx".}
proc getDeflection*(theBndBox: BndBox; theDeviationCoefficient: cfloat;
                   theMaximalChordialDeviation: cfloat): cfloat {.
    importcpp: "Prs3d::GetDeflection(@)", header: "Prs3d.hxx".}
proc primitivesFromPolylines*(thePoints: Prs3dNListOfSequenceOfPnt): Handle[
    Graphic3dArrayOfPrimitives] {.importcpp: "Prs3d::PrimitivesFromPolylines(@)",
                                 header: "Prs3d.hxx".}
proc addPrimitivesGroup*(thePrs: Handle[Prs3dPresentation];
                        theAspect: Handle[Prs3dLineAspect];
                        thePolylines: var Prs3dNListOfSequenceOfPnt) {.
    importcpp: "Prs3d::AddPrimitivesGroup(@)", header: "Prs3d.hxx".}
proc addFreeEdges*(theSegments: var TColgpSequenceOfPnt;
                  thePolyTri: Handle[PolyTriangulation]; theLocation: Trsf) {.
    importcpp: "Prs3d::AddFreeEdges(@)", header: "Prs3d.hxx".}

























