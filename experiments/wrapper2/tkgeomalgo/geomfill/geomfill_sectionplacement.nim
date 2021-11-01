##  Created on: 1997-12-15
##  Created by: Philippe MANGIN
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of Geom_Curve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_Geometry"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Mat"
discard "forward decl of gp_Vec"
type
  GeomFillSectionPlacement* {.importcpp: "GeomFill_SectionPlacement",
                             header: "GeomFill_SectionPlacement.hxx", bycopy.} = object


proc newGeomFillSectionPlacement*(L: Handle[GeomFillLocationLaw];
                                 section: Handle[GeomGeometry]): GeomFillSectionPlacement {.
    cdecl, constructor, importcpp: "GeomFill_SectionPlacement(@)",
    dynlib: tkgeomalgo.}
proc setLocation*(this: var GeomFillSectionPlacement; L: Handle[GeomFillLocationLaw]) {.
    cdecl, importcpp: "SetLocation", dynlib: tkgeomalgo.}
proc perform*(this: var GeomFillSectionPlacement; tol: cfloat) {.cdecl,
    importcpp: "Perform", dynlib: tkgeomalgo.}
proc perform*(this: var GeomFillSectionPlacement; path: Handle[Adaptor3dHCurve];
             tol: cfloat) {.cdecl, importcpp: "Perform", dynlib: tkgeomalgo.}
proc perform*(this: var GeomFillSectionPlacement; paramOnPath: cfloat; tol: cfloat) {.
    cdecl, importcpp: "Perform", dynlib: tkgeomalgo.}
proc isDone*(this: GeomFillSectionPlacement): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkgeomalgo.}
proc parameterOnPath*(this: GeomFillSectionPlacement): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnPath", dynlib: tkgeomalgo.}
proc parameterOnSection*(this: GeomFillSectionPlacement): cfloat {.noSideEffect,
    cdecl, importcpp: "ParameterOnSection", dynlib: tkgeomalgo.}
proc distance*(this: GeomFillSectionPlacement): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkgeomalgo.}
proc angle*(this: GeomFillSectionPlacement): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", dynlib: tkgeomalgo.}
proc transformation*(this: GeomFillSectionPlacement; withTranslation: bool;
                    withCorrection: bool = false): Trsf {.noSideEffect, cdecl,
    importcpp: "Transformation", dynlib: tkgeomalgo.}
proc section*(this: GeomFillSectionPlacement; withTranslation: bool): Handle[
    GeomCurve] {.noSideEffect, cdecl, importcpp: "Section", dynlib: tkgeomalgo.}
proc modifiedSection*(this: GeomFillSectionPlacement; withTranslation: bool): Handle[
    GeomCurve] {.noSideEffect, cdecl, importcpp: "ModifiedSection",
                dynlib: tkgeomalgo.}