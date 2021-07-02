##  Created on: 1993-03-17
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of IntSurf_PntOn2S"
type
  ApproxIntSvSurfaces* {.importcpp: "ApproxInt_SvSurfaces",
                        header: "ApproxInt_SvSurfaces.hxx", bycopy.} = object ## ! returns True if
                                                                         ## Tg,Tguv1 Tguv2 can be
                                                                         ## computed.


proc compute*(this: var ApproxIntSvSurfaces; u1: var StandardReal;
             v1: var StandardReal; u2: var StandardReal; v2: var StandardReal;
             pt: var GpPnt; tg: var GpVec; tguv1: var GpVec2d; tguv2: var GpVec2d): StandardBoolean {.
    importcpp: "Compute", header: "ApproxInt_SvSurfaces.hxx".}
proc pnt*(this: var ApproxIntSvSurfaces; u1: StandardReal; v1: StandardReal;
         u2: StandardReal; v2: StandardReal; p: var GpPnt) {.importcpp: "Pnt",
    header: "ApproxInt_SvSurfaces.hxx".}
proc seekPoint*(this: var ApproxIntSvSurfaces; u1: StandardReal; v1: StandardReal;
               u2: StandardReal; v2: StandardReal; point: var IntSurfPntOn2S): StandardBoolean {.
    importcpp: "SeekPoint", header: "ApproxInt_SvSurfaces.hxx".}
proc tangency*(this: var ApproxIntSvSurfaces; u1: StandardReal; v1: StandardReal;
              u2: StandardReal; v2: StandardReal; tg: var GpVec): StandardBoolean {.
    importcpp: "Tangency", header: "ApproxInt_SvSurfaces.hxx".}
proc tangencyOnSurf1*(this: var ApproxIntSvSurfaces; u1: StandardReal;
                     v1: StandardReal; u2: StandardReal; v2: StandardReal;
                     tg: var GpVec2d): StandardBoolean {.
    importcpp: "TangencyOnSurf1", header: "ApproxInt_SvSurfaces.hxx".}
proc tangencyOnSurf2*(this: var ApproxIntSvSurfaces; u1: StandardReal;
                     v1: StandardReal; u2: StandardReal; v2: StandardReal;
                     tg: var GpVec2d): StandardBoolean {.
    importcpp: "TangencyOnSurf2", header: "ApproxInt_SvSurfaces.hxx".}
proc destroyApproxIntSvSurfaces*(this: var ApproxIntSvSurfaces) {.
    importcpp: "#.~ApproxInt_SvSurfaces()", header: "ApproxInt_SvSurfaces.hxx".}

