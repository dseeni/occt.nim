##  Created on: 1995-05-04
##  Created by: Dieter THIEMANN
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StepGeom_Hyperbola"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom2d_Hyperbola"
discard "forward decl of Geom_Hyperbola"
type
  GeomToStepMakeHyperbola* {.importcpp: "GeomToStep_MakeHyperbola",
                            header: "GeomToStep_MakeHyperbola.hxx", bycopy.} = object of GeomToStepRoot


proc `new`*(this: var GeomToStepMakeHyperbola; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeHyperbola::operator new",
    header: "GeomToStep_MakeHyperbola.hxx".}
proc `delete`*(this: var GeomToStepMakeHyperbola; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeHyperbola::operator delete",
    header: "GeomToStep_MakeHyperbola.hxx".}
proc `new[]`*(this: var GeomToStepMakeHyperbola; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeHyperbola::operator new[]",
    header: "GeomToStep_MakeHyperbola.hxx".}
proc `delete[]`*(this: var GeomToStepMakeHyperbola; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeHyperbola::operator delete[]",
    header: "GeomToStep_MakeHyperbola.hxx".}
proc `new`*(this: var GeomToStepMakeHyperbola; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomToStep_MakeHyperbola::operator new",
    header: "GeomToStep_MakeHyperbola.hxx".}
proc `delete`*(this: var GeomToStepMakeHyperbola; a2: pointer; a3: pointer) {.
    importcpp: "GeomToStep_MakeHyperbola::operator delete",
    header: "GeomToStep_MakeHyperbola.hxx".}
proc constructGeomToStepMakeHyperbola*(c: Handle[Geom2dHyperbola]): GeomToStepMakeHyperbola {.
    constructor, importcpp: "GeomToStep_MakeHyperbola(@)",
    header: "GeomToStep_MakeHyperbola.hxx".}
proc constructGeomToStepMakeHyperbola*(c: Handle[GeomHyperbola]): GeomToStepMakeHyperbola {.
    constructor, importcpp: "GeomToStep_MakeHyperbola(@)",
    header: "GeomToStep_MakeHyperbola.hxx".}
proc value*(this: GeomToStepMakeHyperbola): Handle[StepGeomHyperbola] {.
    noSideEffect, importcpp: "Value", header: "GeomToStep_MakeHyperbola.hxx".}