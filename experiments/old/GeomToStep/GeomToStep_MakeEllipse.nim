##  Created on: 1994-09-02
##  Created by: Frederic MAUPAS
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

discard "forward decl of StepGeom_Ellipse"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Elips"
discard "forward decl of Geom_Ellipse"
discard "forward decl of Geom2d_Ellipse"
type
  GeomToStepMakeEllipse* {.importcpp: "GeomToStep_MakeEllipse",
                          header: "GeomToStep_MakeEllipse.hxx", bycopy.} = object of GeomToStepRoot


proc `new`*(this: var GeomToStepMakeEllipse; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeEllipse::operator new",
    header: "GeomToStep_MakeEllipse.hxx".}
proc `delete`*(this: var GeomToStepMakeEllipse; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeEllipse::operator delete",
    header: "GeomToStep_MakeEllipse.hxx".}
proc `new[]`*(this: var GeomToStepMakeEllipse; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeEllipse::operator new[]",
    header: "GeomToStep_MakeEllipse.hxx".}
proc `delete[]`*(this: var GeomToStepMakeEllipse; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeEllipse::operator delete[]",
    header: "GeomToStep_MakeEllipse.hxx".}
proc `new`*(this: var GeomToStepMakeEllipse; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomToStep_MakeEllipse::operator new",
    header: "GeomToStep_MakeEllipse.hxx".}
proc `delete`*(this: var GeomToStepMakeEllipse; a2: pointer; a3: pointer) {.
    importcpp: "GeomToStep_MakeEllipse::operator delete",
    header: "GeomToStep_MakeEllipse.hxx".}
proc constructGeomToStepMakeEllipse*(c: Elips): GeomToStepMakeEllipse {.constructor,
    importcpp: "GeomToStep_MakeEllipse(@)", header: "GeomToStep_MakeEllipse.hxx".}
proc constructGeomToStepMakeEllipse*(c: Handle[GeomEllipse]): GeomToStepMakeEllipse {.
    constructor, importcpp: "GeomToStep_MakeEllipse(@)",
    header: "GeomToStep_MakeEllipse.hxx".}
proc constructGeomToStepMakeEllipse*(c: Handle[Geom2dEllipse]): GeomToStepMakeEllipse {.
    constructor, importcpp: "GeomToStep_MakeEllipse(@)",
    header: "GeomToStep_MakeEllipse.hxx".}
proc value*(this: GeomToStepMakeEllipse): Handle[StepGeomEllipse] {.noSideEffect,
    importcpp: "Value", header: "GeomToStep_MakeEllipse.hxx".}