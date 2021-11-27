##  Created on: 1992-09-28
##  Created by: Remi GILET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Geom2d_Transformation"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Pnt2d"
type
  GCE2dMakeTranslation* {.importcpp: "GCE2d_MakeTranslation",
                         header: "GCE2d_MakeTranslation.hxx", bycopy.} = object ## !
                                                                           ## Constructs a
                                                                           ## translation along the
                                                                           ## vector Vect.


proc constructGCE2dMakeTranslation*(vect: Vec2d): GCE2dMakeTranslation {.
    constructor, importcpp: "GCE2d_MakeTranslation(@)",
    header: "GCE2d_MakeTranslation.hxx".}
proc constructGCE2dMakeTranslation*(point1: Pnt2d; point2: Pnt2d): GCE2dMakeTranslation {.
    constructor, importcpp: "GCE2d_MakeTranslation(@)",
    header: "GCE2d_MakeTranslation.hxx".}
proc value*(this: GCE2dMakeTranslation): Handle[Geom2dTransformation] {.
    noSideEffect, importcpp: "Value", header: "GCE2d_MakeTranslation.hxx".}
converter `constopencascade`*(this: GCE2dMakeTranslation): Handle[
    Geom2dTransformation] {.noSideEffect, importcpp: "GCE2d_MakeTranslation::operator constopencascade",
                           header: "GCE2d_MakeTranslation.hxx".}
























