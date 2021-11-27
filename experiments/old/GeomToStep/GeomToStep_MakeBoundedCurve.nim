##  Created on: 1993-06-21
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

discard "forward decl of StepGeom_BoundedCurve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_BoundedCurve"
discard "forward decl of Geom2d_BoundedCurve"
type
  GeomToStepMakeBoundedCurve* {.importcpp: "GeomToStep_MakeBoundedCurve",
                               header: "GeomToStep_MakeBoundedCurve.hxx", bycopy.} = object of GeomToStepRoot


proc `new`*(this: var GeomToStepMakeBoundedCurve; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeBoundedCurve::operator new",
    header: "GeomToStep_MakeBoundedCurve.hxx".}
proc `delete`*(this: var GeomToStepMakeBoundedCurve; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeBoundedCurve::operator delete",
    header: "GeomToStep_MakeBoundedCurve.hxx".}
proc `new[]`*(this: var GeomToStepMakeBoundedCurve; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeBoundedCurve::operator new[]",
    header: "GeomToStep_MakeBoundedCurve.hxx".}
proc `delete[]`*(this: var GeomToStepMakeBoundedCurve; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeBoundedCurve::operator delete[]",
    header: "GeomToStep_MakeBoundedCurve.hxx".}
proc `new`*(this: var GeomToStepMakeBoundedCurve; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomToStep_MakeBoundedCurve::operator new",
    header: "GeomToStep_MakeBoundedCurve.hxx".}
proc `delete`*(this: var GeomToStepMakeBoundedCurve; a2: pointer; a3: pointer) {.
    importcpp: "GeomToStep_MakeBoundedCurve::operator delete",
    header: "GeomToStep_MakeBoundedCurve.hxx".}
proc constructGeomToStepMakeBoundedCurve*(c: Handle[GeomBoundedCurve]): GeomToStepMakeBoundedCurve {.
    constructor, importcpp: "GeomToStep_MakeBoundedCurve(@)",
    header: "GeomToStep_MakeBoundedCurve.hxx".}
proc constructGeomToStepMakeBoundedCurve*(c: Handle[Geom2dBoundedCurve]): GeomToStepMakeBoundedCurve {.
    constructor, importcpp: "GeomToStep_MakeBoundedCurve(@)",
    header: "GeomToStep_MakeBoundedCurve.hxx".}
proc value*(this: GeomToStepMakeBoundedCurve): Handle[StepGeomBoundedCurve] {.
    noSideEffect, importcpp: "Value", header: "GeomToStep_MakeBoundedCurve.hxx".}