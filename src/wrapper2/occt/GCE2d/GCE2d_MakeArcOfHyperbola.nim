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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Pnt2d"
type
  GCE2dMakeArcOfHyperbola* {.importcpp: "GCE2d_MakeArcOfHyperbola",
                            header: "GCE2d_MakeArcOfHyperbola.hxx", bycopy.} = object of GCE2dRoot ##
                                                                                            ## !
                                                                                            ## Makes
                                                                                            ## an
                                                                                            ## arc
                                                                                            ## of
                                                                                            ## Hyperbola
                                                                                            ## (TrimmedCurve
                                                                                            ## from
                                                                                            ## Geom2d)
                                                                                            ## from
                                                                                            ##
                                                                                            ## !
                                                                                            ## a
                                                                                            ## Hyperbola
                                                                                            ## between
                                                                                            ## two
                                                                                            ## parameters
                                                                                            ## Alpha1
                                                                                            ## and
                                                                                            ## Alpha2.


proc constructGCE2dMakeArcOfHyperbola*(hypr: GpHypr2d; alpha1: StandardReal;
                                      alpha2: StandardReal;
                                      sense: StandardBoolean = standardTrue): GCE2dMakeArcOfHyperbola {.
    constructor, importcpp: "GCE2d_MakeArcOfHyperbola(@)",
    header: "GCE2d_MakeArcOfHyperbola.hxx".}
proc constructGCE2dMakeArcOfHyperbola*(hypr: GpHypr2d; p: GpPnt2d;
                                      alpha: StandardReal;
                                      sense: StandardBoolean = standardTrue): GCE2dMakeArcOfHyperbola {.
    constructor, importcpp: "GCE2d_MakeArcOfHyperbola(@)",
    header: "GCE2d_MakeArcOfHyperbola.hxx".}
proc constructGCE2dMakeArcOfHyperbola*(hypr: GpHypr2d; p1: GpPnt2d; p2: GpPnt2d;
                                      sense: StandardBoolean = standardTrue): GCE2dMakeArcOfHyperbola {.
    constructor, importcpp: "GCE2d_MakeArcOfHyperbola(@)",
    header: "GCE2d_MakeArcOfHyperbola.hxx".}
proc value*(this: GCE2dMakeArcOfHyperbola): Handle[Geom2dTrimmedCurve] {.
    noSideEffect, importcpp: "Value", header: "GCE2d_MakeArcOfHyperbola.hxx".}
converter `constopencascade`*(this: GCE2dMakeArcOfHyperbola): Handle[
    Geom2dTrimmedCurve] {.noSideEffect, importcpp: "GCE2d_MakeArcOfHyperbola::operator constopencascade",
                         header: "GCE2d_MakeArcOfHyperbola.hxx".}

