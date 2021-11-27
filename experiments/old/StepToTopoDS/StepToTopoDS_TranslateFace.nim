##  Created on: 1994-12-16
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of StepShape_FaceSurface"
discard "forward decl of StepToTopoDS_Tool"
discard "forward decl of StepToTopoDS_NMTool"
discard "forward decl of TopoDS_Shape"
type
  StepToTopoDS_TranslateFace* {.importcpp: "StepToTopoDS_TranslateFace",
                               header: "StepToTopoDS_TranslateFace.hxx", bycopy.} = object of StepToTopoDS_Root


proc `new`*(this: var StepToTopoDS_TranslateFace; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_TranslateFace::operator new",
    header: "StepToTopoDS_TranslateFace.hxx".}
proc `delete`*(this: var StepToTopoDS_TranslateFace; theAddress: pointer) {.
    importcpp: "StepToTopoDS_TranslateFace::operator delete",
    header: "StepToTopoDS_TranslateFace.hxx".}
proc `new[]`*(this: var StepToTopoDS_TranslateFace; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_TranslateFace::operator new[]",
    header: "StepToTopoDS_TranslateFace.hxx".}
proc `delete[]`*(this: var StepToTopoDS_TranslateFace; theAddress: pointer) {.
    importcpp: "StepToTopoDS_TranslateFace::operator delete[]",
    header: "StepToTopoDS_TranslateFace.hxx".}
proc `new`*(this: var StepToTopoDS_TranslateFace; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepToTopoDS_TranslateFace::operator new",
    header: "StepToTopoDS_TranslateFace.hxx".}
proc `delete`*(this: var StepToTopoDS_TranslateFace; a2: pointer; a3: pointer) {.
    importcpp: "StepToTopoDS_TranslateFace::operator delete",
    header: "StepToTopoDS_TranslateFace.hxx".}
proc constructStepToTopoDS_TranslateFace*(): StepToTopoDS_TranslateFace {.
    constructor, importcpp: "StepToTopoDS_TranslateFace(@)",
    header: "StepToTopoDS_TranslateFace.hxx".}
proc constructStepToTopoDS_TranslateFace*(fs: Handle[StepShapeFaceSurface];
    t: var StepToTopoDS_Tool; nMTool: var StepToTopoDS_NMTool): StepToTopoDS_TranslateFace {.
    constructor, importcpp: "StepToTopoDS_TranslateFace(@)",
    header: "StepToTopoDS_TranslateFace.hxx".}
proc init*(this: var StepToTopoDS_TranslateFace; fs: Handle[StepShapeFaceSurface];
          t: var StepToTopoDS_Tool; nMTool: var StepToTopoDS_NMTool) {.
    importcpp: "Init", header: "StepToTopoDS_TranslateFace.hxx".}
proc value*(this: StepToTopoDS_TranslateFace): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "StepToTopoDS_TranslateFace.hxx".}
proc error*(this: StepToTopoDS_TranslateFace): StepToTopoDS_TranslateFaceError {.
    noSideEffect, importcpp: "Error", header: "StepToTopoDS_TranslateFace.hxx".}