##  Created on: 1994-03-17
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of Extrema_ExtPC"
type
  GeomAPI_ProjectPointOnCurve* {.importcpp: "GeomAPI_ProjectPointOnCurve",
                                header: "GeomAPI_ProjectPointOnCurve.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## object.
                                                                                        ## Use
                                                                                        ## an
                                                                                        ##
                                                                                        ## !
                                                                                        ## Init
                                                                                        ## function
                                                                                        ## for
                                                                                        ## further
                                                                                        ## initialization.


proc constructGeomAPI_ProjectPointOnCurve*(): GeomAPI_ProjectPointOnCurve {.
    constructor, importcpp: "GeomAPI_ProjectPointOnCurve(@)",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc constructGeomAPI_ProjectPointOnCurve*(p: GpPnt; curve: Handle[GeomCurve]): GeomAPI_ProjectPointOnCurve {.
    constructor, importcpp: "GeomAPI_ProjectPointOnCurve(@)",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc constructGeomAPI_ProjectPointOnCurve*(p: GpPnt; curve: Handle[GeomCurve];
    umin: StandardReal; usup: StandardReal): GeomAPI_ProjectPointOnCurve {.
    constructor, importcpp: "GeomAPI_ProjectPointOnCurve(@)",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc init*(this: var GeomAPI_ProjectPointOnCurve; p: GpPnt; curve: Handle[GeomCurve]) {.
    importcpp: "Init", header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc init*(this: var GeomAPI_ProjectPointOnCurve; p: GpPnt; curve: Handle[GeomCurve];
          umin: StandardReal; usup: StandardReal) {.importcpp: "Init",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc init*(this: var GeomAPI_ProjectPointOnCurve; curve: Handle[GeomCurve];
          umin: StandardReal; usup: StandardReal) {.importcpp: "Init",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc perform*(this: var GeomAPI_ProjectPointOnCurve; p: GpPnt) {.importcpp: "Perform",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc nbPoints*(this: GeomAPI_ProjectPointOnCurve): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "GeomAPI_ProjectPointOnCurve.hxx".}
converter `standardInteger`*(this: GeomAPI_ProjectPointOnCurve): StandardInteger {.
    noSideEffect,
    importcpp: "GeomAPI_ProjectPointOnCurve::operator Standard_Integer",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc point*(this: GeomAPI_ProjectPointOnCurve; index: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "Point", header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc parameter*(this: GeomAPI_ProjectPointOnCurve; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Parameter", header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc parameter*(this: GeomAPI_ProjectPointOnCurve; index: StandardInteger;
               u: var StandardReal) {.noSideEffect, importcpp: "Parameter",
                                   header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc distance*(this: GeomAPI_ProjectPointOnCurve; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Distance", header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc nearestPoint*(this: GeomAPI_ProjectPointOnCurve): GpPnt {.noSideEffect,
    importcpp: "NearestPoint", header: "GeomAPI_ProjectPointOnCurve.hxx".}
converter `gpPnt`*(this: GeomAPI_ProjectPointOnCurve): GpPnt {.noSideEffect,
    importcpp: "GeomAPI_ProjectPointOnCurve::operator gp_Pnt",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc lowerDistanceParameter*(this: GeomAPI_ProjectPointOnCurve): StandardReal {.
    noSideEffect, importcpp: "LowerDistanceParameter",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc lowerDistance*(this: GeomAPI_ProjectPointOnCurve): StandardReal {.noSideEffect,
    importcpp: "LowerDistance", header: "GeomAPI_ProjectPointOnCurve.hxx".}
converter `standardReal`*(this: GeomAPI_ProjectPointOnCurve): StandardReal {.
    noSideEffect,
    importcpp: "GeomAPI_ProjectPointOnCurve::operator Standard_Real",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc extrema*(this: GeomAPI_ProjectPointOnCurve): ExtremaExtPC {.noSideEffect,
    importcpp: "Extrema", header: "GeomAPI_ProjectPointOnCurve.hxx".}

