##  Created on: 1993-06-14
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

discard "forward decl of StepGeom_ToroidalSurface"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_ToroidalSurface"
type
  GeomToStepMakeToroidalSurface* {.importcpp: "GeomToStep_MakeToroidalSurface",
                                  header: "GeomToStep_MakeToroidalSurface.hxx",
                                  bycopy.} = object of GeomToStepRoot


proc `new`*(this: var GeomToStepMakeToroidalSurface; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeToroidalSurface::operator new",
    header: "GeomToStep_MakeToroidalSurface.hxx".}
proc `delete`*(this: var GeomToStepMakeToroidalSurface; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeToroidalSurface::operator delete",
    header: "GeomToStep_MakeToroidalSurface.hxx".}
proc `new[]`*(this: var GeomToStepMakeToroidalSurface; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeToroidalSurface::operator new[]",
    header: "GeomToStep_MakeToroidalSurface.hxx".}
proc `delete[]`*(this: var GeomToStepMakeToroidalSurface; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeToroidalSurface::operator delete[]",
    header: "GeomToStep_MakeToroidalSurface.hxx".}
proc `new`*(this: var GeomToStepMakeToroidalSurface; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomToStep_MakeToroidalSurface::operator new",
    header: "GeomToStep_MakeToroidalSurface.hxx".}
proc `delete`*(this: var GeomToStepMakeToroidalSurface; a2: pointer; a3: pointer) {.
    importcpp: "GeomToStep_MakeToroidalSurface::operator delete",
    header: "GeomToStep_MakeToroidalSurface.hxx".}
proc constructGeomToStepMakeToroidalSurface*(torSurf: Handle[GeomToroidalSurface]): GeomToStepMakeToroidalSurface {.
    constructor, importcpp: "GeomToStep_MakeToroidalSurface(@)",
    header: "GeomToStep_MakeToroidalSurface.hxx".}
proc value*(this: GeomToStepMakeToroidalSurface): Handle[StepGeomToroidalSurface] {.
    noSideEffect, importcpp: "Value", header: "GeomToStep_MakeToroidalSurface.hxx".}