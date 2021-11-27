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
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
type
  GceMakeDir2d* {.importcpp: "gce_MakeDir2d", header: "gce_MakeDir2d.hxx", bycopy.} = object of GceRoot ##
                                                                                              ## !
                                                                                              ## Normalizes
                                                                                              ## the
                                                                                              ## vector
                                                                                              ## V
                                                                                              ## and
                                                                                              ## creates
                                                                                              ## a
                                                                                              ## direction.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Status
                                                                                              ## is
                                                                                              ## "NullVector"
                                                                                              ## if
                                                                                              ## V.Magnitude()
                                                                                              ## <=
                                                                                              ## Resolution.


proc constructGceMakeDir2d*(v: Vec2d): GceMakeDir2d {.constructor,
    importcpp: "gce_MakeDir2d(@)", header: "gce_MakeDir2d.hxx".}
proc constructGceMakeDir2d*(coord: Xy): GceMakeDir2d {.constructor,
    importcpp: "gce_MakeDir2d(@)", header: "gce_MakeDir2d.hxx".}
proc constructGceMakeDir2d*(xv: cfloat; yv: cfloat): GceMakeDir2d {.constructor,
    importcpp: "gce_MakeDir2d(@)", header: "gce_MakeDir2d.hxx".}
proc constructGceMakeDir2d*(p1: Pnt2d; p2: Pnt2d): GceMakeDir2d {.constructor,
    importcpp: "gce_MakeDir2d(@)", header: "gce_MakeDir2d.hxx".}
proc value*(this: GceMakeDir2d): Dir2d {.noSideEffect, importcpp: "Value",
                                     header: "gce_MakeDir2d.hxx".}
proc operator*(this: GceMakeDir2d): Dir2d {.noSideEffect, importcpp: "Operator",
                                        header: "gce_MakeDir2d.hxx".}
converter `dir2d`*(this: GceMakeDir2d): Dir2d {.noSideEffect,
    importcpp: "gce_MakeDir2d::operator gp_Dir2d", header: "gce_MakeDir2d.hxx".}
























