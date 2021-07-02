##  Created on: 1994-04-13
##  Created by: Eric BONNARDEL
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Geom_Surface"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Dir"
type
  GeomFillPipe* {.importcpp: "GeomFill_Pipe", header: "GeomFill_Pipe.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## algorithm
                                                                                     ## for
                                                                                     ## building
                                                                                     ## pipes.
                                                                                     ## Use
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## function
                                                                                     ## Init
                                                                                     ## to
                                                                                     ## initialize
                                                                                     ## it.


proc constructGeomFillPipe*(): GeomFillPipe {.constructor,
    importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFillPipe*(path: Handle[GeomCurve]; radius: StandardReal): GeomFillPipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFillPipe*(path: Handle[GeomCurve]; firstSect: Handle[GeomCurve];
    option: GeomFillTrihedron = geomFillIsCorrectedFrenet): GeomFillPipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFillPipe*(path: Handle[Geom2dCurve];
                           support: Handle[GeomSurface];
                           firstSect: Handle[GeomCurve]): GeomFillPipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFillPipe*(path: Handle[GeomCurve]; firstSect: Handle[GeomCurve];
                           dir: GpDir): GeomFillPipe {.constructor,
    importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFillPipe*(path: Handle[GeomCurve]; firstSect: Handle[GeomCurve];
                           lastSect: Handle[GeomCurve]): GeomFillPipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFillPipe*(path: Handle[GeomCurve];
                           nSections: TColGeomSequenceOfCurve): GeomFillPipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFillPipe*(path: Handle[GeomCurve]; curve1: Handle[GeomCurve];
                           curve2: Handle[GeomCurve]; radius: StandardReal): GeomFillPipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFillPipe*(path: Handle[Adaptor3dHCurve];
                           curve1: Handle[Adaptor3dHCurve];
                           curve2: Handle[Adaptor3dHCurve]; radius: StandardReal): GeomFillPipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFillPipe*(path: Handle[GeomCurve];
                           guide: Handle[Adaptor3dHCurve];
                           firstSect: Handle[GeomCurve]; byACR: StandardBoolean;
                           rotat: StandardBoolean): GeomFillPipe {.constructor,
    importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc init*(this: var GeomFillPipe; path: Handle[GeomCurve]; radius: StandardReal) {.
    importcpp: "Init", header: "GeomFill_Pipe.hxx".}
proc init*(this: var GeomFillPipe; path: Handle[GeomCurve];
          firstSect: Handle[GeomCurve];
          option: GeomFillTrihedron = geomFillIsCorrectedFrenet) {.
    importcpp: "Init", header: "GeomFill_Pipe.hxx".}
proc init*(this: var GeomFillPipe; path: Handle[Geom2dCurve];
          support: Handle[GeomSurface]; firstSect: Handle[GeomCurve]) {.
    importcpp: "Init", header: "GeomFill_Pipe.hxx".}
proc init*(this: var GeomFillPipe; path: Handle[GeomCurve];
          firstSect: Handle[GeomCurve]; dir: GpDir) {.importcpp: "Init",
    header: "GeomFill_Pipe.hxx".}
proc init*(this: var GeomFillPipe; path: Handle[GeomCurve];
          firstSect: Handle[GeomCurve]; lastSect: Handle[GeomCurve]) {.
    importcpp: "Init", header: "GeomFill_Pipe.hxx".}
proc init*(this: var GeomFillPipe; path: Handle[GeomCurve];
          nSections: TColGeomSequenceOfCurve) {.importcpp: "Init",
    header: "GeomFill_Pipe.hxx".}
proc init*(this: var GeomFillPipe; path: Handle[Adaptor3dHCurve];
          curve1: Handle[Adaptor3dHCurve]; curve2: Handle[Adaptor3dHCurve];
          radius: StandardReal) {.importcpp: "Init", header: "GeomFill_Pipe.hxx".}
proc init*(this: var GeomFillPipe; path: Handle[GeomCurve];
          guide: Handle[Adaptor3dHCurve]; firstSect: Handle[GeomCurve];
          byACR: StandardBoolean; rotat: StandardBoolean) {.importcpp: "Init",
    header: "GeomFill_Pipe.hxx".}
proc perform*(this: var GeomFillPipe;
             withParameters: StandardBoolean = standardFalse;
             myPolynomial: StandardBoolean = standardFalse) {.importcpp: "Perform",
    header: "GeomFill_Pipe.hxx".}
proc perform*(this: var GeomFillPipe; tol: StandardReal; polynomial: StandardBoolean;
             conti: GeomAbsShape = geomAbsC1; maxDegree: StandardInteger = 11;
             nbMaxSegment: StandardInteger = 30) {.importcpp: "Perform",
    header: "GeomFill_Pipe.hxx".}
proc surface*(this: GeomFillPipe): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "GeomFill_Pipe.hxx".}
proc exchangeUV*(this: GeomFillPipe): StandardBoolean {.noSideEffect,
    importcpp: "ExchangeUV", header: "GeomFill_Pipe.hxx".}
proc generateParticularCase*(this: var GeomFillPipe; b: StandardBoolean) {.
    importcpp: "GenerateParticularCase", header: "GeomFill_Pipe.hxx".}
proc generateParticularCase*(this: GeomFillPipe): StandardBoolean {.noSideEffect,
    importcpp: "GenerateParticularCase", header: "GeomFill_Pipe.hxx".}
proc errorOnSurf*(this: GeomFillPipe): StandardReal {.noSideEffect,
    importcpp: "ErrorOnSurf", header: "GeomFill_Pipe.hxx".}
proc isDone*(this: GeomFillPipe): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomFill_Pipe.hxx".}

