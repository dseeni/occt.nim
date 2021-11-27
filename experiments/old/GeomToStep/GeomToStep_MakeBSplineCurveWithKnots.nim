##  Created on: 1993-08-05
##  Created by: Martine LANGLOIS
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

discard "forward decl of StepGeom_BSplineCurveWithKnots"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom2d_BSplineCurve"
type
  GeomToStepMakeBSplineCurveWithKnots* {.importcpp: "GeomToStep_MakeBSplineCurveWithKnots", header: "GeomToStep_MakeBSplineCurveWithKnots.hxx",
                                        bycopy.} = object of GeomToStepRoot


proc `new`*(this: var GeomToStepMakeBSplineCurveWithKnots; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeBSplineCurveWithKnots::operator new",
    header: "GeomToStep_MakeBSplineCurveWithKnots.hxx".}
proc `delete`*(this: var GeomToStepMakeBSplineCurveWithKnots; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeBSplineCurveWithKnots::operator delete",
    header: "GeomToStep_MakeBSplineCurveWithKnots.hxx".}
proc `new[]`*(this: var GeomToStepMakeBSplineCurveWithKnots; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeBSplineCurveWithKnots::operator new[]",
    header: "GeomToStep_MakeBSplineCurveWithKnots.hxx".}
proc `delete[]`*(this: var GeomToStepMakeBSplineCurveWithKnots; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeBSplineCurveWithKnots::operator delete[]",
    header: "GeomToStep_MakeBSplineCurveWithKnots.hxx".}
proc `new`*(this: var GeomToStepMakeBSplineCurveWithKnots; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "GeomToStep_MakeBSplineCurveWithKnots::operator new", header: "GeomToStep_MakeBSplineCurveWithKnots.hxx".}
proc `delete`*(this: var GeomToStepMakeBSplineCurveWithKnots; a2: pointer; a3: pointer) {.
    importcpp: "GeomToStep_MakeBSplineCurveWithKnots::operator delete",
    header: "GeomToStep_MakeBSplineCurveWithKnots.hxx".}
proc constructGeomToStepMakeBSplineCurveWithKnots*(
    bsplin: Handle[GeomBSplineCurve]): GeomToStepMakeBSplineCurveWithKnots {.
    constructor, importcpp: "GeomToStep_MakeBSplineCurveWithKnots(@)",
    header: "GeomToStep_MakeBSplineCurveWithKnots.hxx".}
proc constructGeomToStepMakeBSplineCurveWithKnots*(
    bsplin: Handle[Geom2dBSplineCurve]): GeomToStepMakeBSplineCurveWithKnots {.
    constructor, importcpp: "GeomToStep_MakeBSplineCurveWithKnots(@)",
    header: "GeomToStep_MakeBSplineCurveWithKnots.hxx".}
proc value*(this: GeomToStepMakeBSplineCurveWithKnots): Handle[
    StepGeomBSplineCurveWithKnots] {.noSideEffect, importcpp: "Value", header: "GeomToStep_MakeBSplineCurveWithKnots.hxx".}