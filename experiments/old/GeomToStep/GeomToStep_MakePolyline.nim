##  Created on: 1993-07-12
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

discard "forward decl of StepGeom_Polyline"
discard "forward decl of StdFail_NotDone"
type
  GeomToStepMakePolyline* {.importcpp: "GeomToStep_MakePolyline",
                           header: "GeomToStep_MakePolyline.hxx", bycopy.} = object of GeomToStepRoot


proc `new`*(this: var GeomToStepMakePolyline; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakePolyline::operator new",
    header: "GeomToStep_MakePolyline.hxx".}
proc `delete`*(this: var GeomToStepMakePolyline; theAddress: pointer) {.
    importcpp: "GeomToStep_MakePolyline::operator delete",
    header: "GeomToStep_MakePolyline.hxx".}
proc `new[]`*(this: var GeomToStepMakePolyline; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakePolyline::operator new[]",
    header: "GeomToStep_MakePolyline.hxx".}
proc `delete[]`*(this: var GeomToStepMakePolyline; theAddress: pointer) {.
    importcpp: "GeomToStep_MakePolyline::operator delete[]",
    header: "GeomToStep_MakePolyline.hxx".}
proc `new`*(this: var GeomToStepMakePolyline; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomToStep_MakePolyline::operator new",
    header: "GeomToStep_MakePolyline.hxx".}
proc `delete`*(this: var GeomToStepMakePolyline; a2: pointer; a3: pointer) {.
    importcpp: "GeomToStep_MakePolyline::operator delete",
    header: "GeomToStep_MakePolyline.hxx".}
proc constructGeomToStepMakePolyline*(p: TColgpArray1OfPnt): GeomToStepMakePolyline {.
    constructor, importcpp: "GeomToStep_MakePolyline(@)",
    header: "GeomToStep_MakePolyline.hxx".}
proc constructGeomToStepMakePolyline*(p: TColgpArray1OfPnt2d): GeomToStepMakePolyline {.
    constructor, importcpp: "GeomToStep_MakePolyline(@)",
    header: "GeomToStep_MakePolyline.hxx".}
proc value*(this: GeomToStepMakePolyline): Handle[StepGeomPolyline] {.noSideEffect,
    importcpp: "Value", header: "GeomToStep_MakePolyline.hxx".}