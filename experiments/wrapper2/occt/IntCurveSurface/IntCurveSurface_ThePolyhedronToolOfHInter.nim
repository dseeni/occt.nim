##  Created on: 1993-04-07
##  Created by: Laurent BUCHARD
##  Copyright (c) 1993-1999 Matra Datavision
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

## !!!Ignored construct:  # _IntCurveSurface_ThePolyhedronToolOfHInter_HeaderFile [NewLine] # _IntCurveSurface_ThePolyhedronToolOfHInter_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Bnd_HArray1OfBox . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of IntCurveSurface_ThePolyhedronOfHInter"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
type
  IntCurveSurfaceThePolyhedronToolOfHInter* {.
      importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter",
      header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx", bycopy.} = object ## ! Give the
                                                                            ## bounding box of the
                                                                            ## PolyhedronTool.


proc bounding*(thePolyh: IntCurveSurfaceThePolyhedronOfHInter): BndBox {.
    importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::Bounding(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
## !!!Ignored construct:  & ComponentsBounding ( const IntCurveSurface_ThePolyhedronOfHInter & thePolyh ) ;
## Error: identifier expected, but got: &!!!

proc deflectionOverEstimation*(thePolyh: IntCurveSurfaceThePolyhedronOfHInter): float {.importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::DeflectionOverEstimation(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc nbTriangles*(thePolyh: IntCurveSurfaceThePolyhedronOfHInter): int {.
    importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::NbTriangles(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc triangle*(thePolyh: IntCurveSurfaceThePolyhedronOfHInter; index: int;
              p1: var int; p2: var int; p3: var int) {.
    importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::Triangle(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc point*(thePolyh: IntCurveSurfaceThePolyhedronOfHInter; index: int): Pnt {.
    importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::Point(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc triConnex*(thePolyh: IntCurveSurfaceThePolyhedronOfHInter; triang: int;
               pivot: int; pedge: int; triCon: var int; otherP: var int): int {.
    importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::TriConnex(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc isOnBound*(thePolyh: IntCurveSurfaceThePolyhedronOfHInter; index1: int;
               index2: int): bool {.importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::IsOnBound(@)", header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc getBorderDeflection*(thePolyh: IntCurveSurfaceThePolyhedronOfHInter): float {.importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::GetBorderDeflection(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc dump*(thePolyh: IntCurveSurfaceThePolyhedronOfHInter) {.
    importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::Dump(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
## !!!Ignored construct:  # ThePolyhedron IntCurveSurface_ThePolyhedronOfHInter [NewLine] # ThePolyhedron_hxx < IntCurveSurface_ThePolyhedronOfHInter . hxx > [NewLine] # IntCurveSurface_PolyhedronTool IntCurveSurface_ThePolyhedronToolOfHInter [NewLine] # IntCurveSurface_PolyhedronTool_hxx < IntCurveSurface_ThePolyhedronToolOfHInter . hxx > [NewLine] # < IntCurveSurface_PolyhedronTool . lxx > [NewLine] # ThePolyhedron [NewLine] # ThePolyhedron_hxx [NewLine] # IntCurveSurface_PolyhedronTool [NewLine] # IntCurveSurface_PolyhedronTool_hxx [NewLine] #  _IntCurveSurface_ThePolyhedronToolOfHInter_HeaderFile
## Error: did not expect <!!!














































