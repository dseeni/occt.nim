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

discard "forward decl of StepGeom_SurfaceOfLinearExtrusion"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_SurfaceOfLinearExtrusion"
type
  GeomToStepMakeSurfaceOfLinearExtrusion* {.
      importcpp: "GeomToStep_MakeSurfaceOfLinearExtrusion",
      header: "GeomToStep_MakeSurfaceOfLinearExtrusion.hxx", bycopy.} = object of GeomToStepRoot


proc `new`*(this: var GeomToStepMakeSurfaceOfLinearExtrusion; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeSurfaceOfLinearExtrusion::operator new",
    header: "GeomToStep_MakeSurfaceOfLinearExtrusion.hxx".}
proc `delete`*(this: var GeomToStepMakeSurfaceOfLinearExtrusion; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeSurfaceOfLinearExtrusion::operator delete",
    header: "GeomToStep_MakeSurfaceOfLinearExtrusion.hxx".}
proc `new[]`*(this: var GeomToStepMakeSurfaceOfLinearExtrusion; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeSurfaceOfLinearExtrusion::operator new[]",
    header: "GeomToStep_MakeSurfaceOfLinearExtrusion.hxx".}
proc `delete[]`*(this: var GeomToStepMakeSurfaceOfLinearExtrusion;
                theAddress: pointer) {.importcpp: "GeomToStep_MakeSurfaceOfLinearExtrusion::operator delete[]", header: "GeomToStep_MakeSurfaceOfLinearExtrusion.hxx".}
proc `new`*(this: var GeomToStepMakeSurfaceOfLinearExtrusion; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "GeomToStep_MakeSurfaceOfLinearExtrusion::operator new", header: "GeomToStep_MakeSurfaceOfLinearExtrusion.hxx".}
proc `delete`*(this: var GeomToStepMakeSurfaceOfLinearExtrusion; a2: pointer;
              a3: pointer) {.importcpp: "GeomToStep_MakeSurfaceOfLinearExtrusion::operator delete", header: "GeomToStep_MakeSurfaceOfLinearExtrusion.hxx".}
proc constructGeomToStepMakeSurfaceOfLinearExtrusion*(
    cSurf: Handle[GeomSurfaceOfLinearExtrusion]): GeomToStepMakeSurfaceOfLinearExtrusion {.
    constructor, importcpp: "GeomToStep_MakeSurfaceOfLinearExtrusion(@)",
    header: "GeomToStep_MakeSurfaceOfLinearExtrusion.hxx".}
proc value*(this: GeomToStepMakeSurfaceOfLinearExtrusion): Handle[
    StepGeomSurfaceOfLinearExtrusion] {.noSideEffect, importcpp: "Value", header: "GeomToStep_MakeSurfaceOfLinearExtrusion.hxx".}