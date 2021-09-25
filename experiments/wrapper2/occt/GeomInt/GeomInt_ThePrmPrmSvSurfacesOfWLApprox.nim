##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of IntPatch_WLine"
discard "forward decl of GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox"
discard "forward decl of GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  GeomIntThePrmPrmSvSurfacesOfWLApprox* {.
      importcpp: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox",
      header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx", bycopy.} = object of ApproxIntSvSurfaces


proc constructGeomIntThePrmPrmSvSurfacesOfWLApprox*(
    surf1: Handle[Adaptor3dHSurface]; surf2: Handle[Adaptor3dHSurface]): GeomIntThePrmPrmSvSurfacesOfWLApprox {.
    constructor, importcpp: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox(@)",
    header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc compute*(this: var GeomIntThePrmPrmSvSurfacesOfWLApprox; u1: var float;
             v1: var float; u2: var float; v2: var float; pt: var Pnt; tg: var Vec;
             tguv1: var Vec2d; tguv2: var Vec2d): bool {.importcpp: "Compute",
    header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc pnt*(this: var GeomIntThePrmPrmSvSurfacesOfWLApprox; u1: float; v1: float;
         u2: float; v2: float; p: var Pnt) {.importcpp: "Pnt", header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc seekPoint*(this: var GeomIntThePrmPrmSvSurfacesOfWLApprox; u1: float; v1: float;
               u2: float; v2: float; point: var IntSurfPntOn2S): bool {.
    importcpp: "SeekPoint", header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc tangency*(this: var GeomIntThePrmPrmSvSurfacesOfWLApprox; u1: float; v1: float;
              u2: float; v2: float; tg: var Vec): bool {.importcpp: "Tangency",
    header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc tangencyOnSurf1*(this: var GeomIntThePrmPrmSvSurfacesOfWLApprox; u1: float;
                     v1: float; u2: float; v2: float; tg: var Vec2d): bool {.
    importcpp: "TangencyOnSurf1",
    header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc tangencyOnSurf2*(this: var GeomIntThePrmPrmSvSurfacesOfWLApprox; u1: float;
                     v1: float; u2: float; v2: float; tg: var Vec2d): bool {.
    importcpp: "TangencyOnSurf2",
    header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}
