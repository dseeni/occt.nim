##  Created on: 1992-08-26
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
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Lin2d"
type
  GceMakeLin2d* {.importcpp: "gce_MakeLin2d", header: "gce_MakeLin2d.hxx", bycopy.} = object of GceRoot ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## line
                                                                                              ## located
                                                                                              ## with
                                                                                              ## A.


proc constructGceMakeLin2d*(a: Ax2d): GceMakeLin2d {.constructor,
    importcpp: "gce_MakeLin2d(@)", header: "gce_MakeLin2d.hxx".}
proc constructGceMakeLin2d*(p: Pnt2d; v: Dir2d): GceMakeLin2d {.constructor,
    importcpp: "gce_MakeLin2d(@)", header: "gce_MakeLin2d.hxx".}
proc constructGceMakeLin2d*(a: cfloat; b: cfloat; c: cfloat): GceMakeLin2d {.
    constructor, importcpp: "gce_MakeLin2d(@)", header: "gce_MakeLin2d.hxx".}
proc constructGceMakeLin2d*(lin: Lin2d; dist: cfloat): GceMakeLin2d {.constructor,
    importcpp: "gce_MakeLin2d(@)", header: "gce_MakeLin2d.hxx".}
proc constructGceMakeLin2d*(lin: Lin2d; point: Pnt2d): GceMakeLin2d {.constructor,
    importcpp: "gce_MakeLin2d(@)", header: "gce_MakeLin2d.hxx".}
proc constructGceMakeLin2d*(p1: Pnt2d; p2: Pnt2d): GceMakeLin2d {.constructor,
    importcpp: "gce_MakeLin2d(@)", header: "gce_MakeLin2d.hxx".}
proc value*(this: GceMakeLin2d): Lin2d {.noSideEffect, importcpp: "Value",
                                     header: "gce_MakeLin2d.hxx".}
proc operator*(this: GceMakeLin2d): Lin2d {.noSideEffect, importcpp: "Operator",
                                        header: "gce_MakeLin2d.hxx".}
converter `lin2d`*(this: GceMakeLin2d): Lin2d {.noSideEffect,
    importcpp: "gce_MakeLin2d::operator gp_Lin2d", header: "gce_MakeLin2d.hxx".}
























