##  Created on: 1991-02-21
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of gp_Pnt"
type
  ExtremaPOnSurf* {.importcpp: "Extrema_POnSurf", header: "Extrema_POnSurf.hxx",
                   bycopy.} = object of RootObj ## ! Creation of an indefinite point on surface.


proc newExtremaPOnSurf*(): ExtremaPOnSurf {.cdecl, constructor,
    importcpp: "Extrema_POnSurf(@)", dynlib: tkgeombase.}
proc newExtremaPOnSurf*(u: cfloat; v: cfloat; p: Pnt): ExtremaPOnSurf {.cdecl,
    constructor, importcpp: "Extrema_POnSurf(@)", dynlib: tkgeombase.}
proc value*(this: ExtremaPOnSurf): Pnt {.noSideEffect, cdecl, importcpp: "Value",
                                     dynlib: tkgeombase.}
proc setParameters*(this: var ExtremaPOnSurf; theU: cfloat; theV: cfloat; thePnt: Pnt) {.
    cdecl, importcpp: "SetParameters", dynlib: tkgeombase.}
proc parameter*(this: ExtremaPOnSurf; u: var cfloat; v: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Parameter", dynlib: tkgeombase.}