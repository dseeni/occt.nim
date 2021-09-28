##  Created on: 1993-12-06
##  Created by: Jacques GOUSSARD
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

discard "forward decl of gp_Pnt2d"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HVertex"
type
  BRepBlendBlendTool* {.importcpp: "BRepBlend_BlendTool",
                       header: "BRepBlend_BlendTool.hxx", bycopy.} = object ## ! Projects the point P on the arc C.
                                                                       ## ! If the methods returns
                                                                       ## Standard_True, the
                                                                       ## projection is
                                                                       ## !
                                                                       ## successful, and Paramproj is the parameter on the arc
                                                                       ## ! of the projected point, Dist is the distance between
                                                                       ## ! P and the curve..
                                                                       ## ! If the method returns
                                                                       ## Standard_False, Param proj and Dist
                                                                       ## ! are not
                                                                       ## significant.


proc project*(p: Pnt2d; s: Handle[Adaptor3dHSurface]; c: Handle[Adaptor2dHCurve2d];
             paramproj: var cfloat; dist: var cfloat): bool {.
    importcpp: "BRepBlend_BlendTool::Project(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc inters*(p1: Pnt2d; p2: Pnt2d; s: Handle[Adaptor3dHSurface];
            c: Handle[Adaptor2dHCurve2d]; param: var cfloat; dist: var cfloat): bool {.
    importcpp: "BRepBlend_BlendTool::Inters(@)", header: "BRepBlend_BlendTool.hxx".}
proc parameter*(v: Handle[Adaptor3dHVertex]; a: Handle[Adaptor2dHCurve2d]): cfloat {.
    importcpp: "BRepBlend_BlendTool::Parameter(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc tolerance*(v: Handle[Adaptor3dHVertex]; a: Handle[Adaptor2dHCurve2d]): cfloat {.
    importcpp: "BRepBlend_BlendTool::Tolerance(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc singularOnUMin*(s: Handle[Adaptor3dHSurface]): bool {.
    importcpp: "BRepBlend_BlendTool::SingularOnUMin(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc singularOnUMax*(s: Handle[Adaptor3dHSurface]): bool {.
    importcpp: "BRepBlend_BlendTool::SingularOnUMax(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc singularOnVMin*(s: Handle[Adaptor3dHSurface]): bool {.
    importcpp: "BRepBlend_BlendTool::SingularOnVMin(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc singularOnVMax*(s: Handle[Adaptor3dHSurface]): bool {.
    importcpp: "BRepBlend_BlendTool::SingularOnVMax(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc nbSamplesU*(s: Handle[Adaptor3dHSurface]; u1: cfloat; u2: cfloat): cint {.
    importcpp: "BRepBlend_BlendTool::NbSamplesU(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc nbSamplesV*(s: Handle[Adaptor3dHSurface]; v1: cfloat; v2: cfloat): cint {.
    importcpp: "BRepBlend_BlendTool::NbSamplesV(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc bounds*(c: Handle[Adaptor2dHCurve2d]; ufirst: var cfloat; ulast: var cfloat) {.
    importcpp: "BRepBlend_BlendTool::Bounds(@)", header: "BRepBlend_BlendTool.hxx".}
proc curveOnSurf*(c: Handle[Adaptor2dHCurve2d]; s: Handle[Adaptor3dHSurface]): Handle[
    Adaptor2dHCurve2d] {.importcpp: "BRepBlend_BlendTool::CurveOnSurf(@)",
                        header: "BRepBlend_BlendTool.hxx".}

























