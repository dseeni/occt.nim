##  Created on: 1992-09-28
##  Created by: Remi GILET
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
type
  GCE2dMakeEllipse* {.importcpp: "GCE2d_MakeEllipse",
                     header: "GCE2d_MakeEllipse.hxx", bycopy.} = object of GCE2dRoot ## !
                                                                              ## Creates an
                                                                              ## ellipse
                                                                              ## from a
                                                                              ## non
                                                                              ## persistent
                                                                              ## one
                                                                              ## from
                                                                              ## package gp


proc constructGCE2dMakeEllipse*(e: Elips2d): GCE2dMakeEllipse {.constructor,
    importcpp: "GCE2d_MakeEllipse(@)", header: "GCE2d_MakeEllipse.hxx".}
proc constructGCE2dMakeEllipse*(majorAxis: Ax2d; majorRadius: cfloat;
                               minorRadius: cfloat; sense: bool = true): GCE2dMakeEllipse {.
    constructor, importcpp: "GCE2d_MakeEllipse(@)", header: "GCE2d_MakeEllipse.hxx".}
proc constructGCE2dMakeEllipse*(axis: Ax22d; majorRadius: cfloat; minorRadius: cfloat): GCE2dMakeEllipse {.
    constructor, importcpp: "GCE2d_MakeEllipse(@)", header: "GCE2d_MakeEllipse.hxx".}
proc constructGCE2dMakeEllipse*(s1: Pnt2d; s2: Pnt2d; center: Pnt2d): GCE2dMakeEllipse {.
    constructor, importcpp: "GCE2d_MakeEllipse(@)", header: "GCE2d_MakeEllipse.hxx".}
proc value*(this: GCE2dMakeEllipse): Handle[Geom2dEllipse] {.noSideEffect,
    importcpp: "Value", header: "GCE2d_MakeEllipse.hxx".}
converter `constopencascade`*(this: GCE2dMakeEllipse): Handle[Geom2dEllipse] {.
    noSideEffect, importcpp: "GCE2d_MakeEllipse::operator constopencascade",
    header: "GCE2d_MakeEllipse.hxx".}

























