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

discard "forward decl of StepGeom_SurfaceOfRevolution"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_SurfaceOfRevolution"
type
  GeomToStepMakeSurfaceOfRevolution* {.importcpp: "GeomToStep_MakeSurfaceOfRevolution", header: "GeomToStep_MakeSurfaceOfRevolution.hxx",
                                      bycopy.} = object of GeomToStepRoot


proc `new`*(this: var GeomToStepMakeSurfaceOfRevolution; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeSurfaceOfRevolution::operator new",
    header: "GeomToStep_MakeSurfaceOfRevolution.hxx".}
proc `delete`*(this: var GeomToStepMakeSurfaceOfRevolution; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeSurfaceOfRevolution::operator delete",
    header: "GeomToStep_MakeSurfaceOfRevolution.hxx".}
proc `new[]`*(this: var GeomToStepMakeSurfaceOfRevolution; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeSurfaceOfRevolution::operator new[]",
    header: "GeomToStep_MakeSurfaceOfRevolution.hxx".}
proc `delete[]`*(this: var GeomToStepMakeSurfaceOfRevolution; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeSurfaceOfRevolution::operator delete[]",
    header: "GeomToStep_MakeSurfaceOfRevolution.hxx".}
proc `new`*(this: var GeomToStepMakeSurfaceOfRevolution; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "GeomToStep_MakeSurfaceOfRevolution::operator new", header: "GeomToStep_MakeSurfaceOfRevolution.hxx".}
proc `delete`*(this: var GeomToStepMakeSurfaceOfRevolution; a2: pointer; a3: pointer) {.
    importcpp: "GeomToStep_MakeSurfaceOfRevolution::operator delete",
    header: "GeomToStep_MakeSurfaceOfRevolution.hxx".}
proc constructGeomToStepMakeSurfaceOfRevolution*(
    revSurf: Handle[GeomSurfaceOfRevolution]): GeomToStepMakeSurfaceOfRevolution {.
    constructor, importcpp: "GeomToStep_MakeSurfaceOfRevolution(@)",
    header: "GeomToStep_MakeSurfaceOfRevolution.hxx".}
proc value*(this: GeomToStepMakeSurfaceOfRevolution): Handle[
    StepGeomSurfaceOfRevolution] {.noSideEffect, importcpp: "Value", header: "GeomToStep_MakeSurfaceOfRevolution.hxx".}