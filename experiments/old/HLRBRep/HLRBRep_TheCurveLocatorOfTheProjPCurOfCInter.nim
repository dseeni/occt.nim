##  Created on: 1992-10-14
##  Created by: Christophe MARION
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

discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
type
  HLRBRepTheCurveLocatorOfTheProjPCurOfCInter* {.
      importcpp: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter",
      header: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter.hxx", bycopy.} = object ## !
                                                                               ## Among a
                                                                               ## set
                                                                               ## of
                                                                               ## points
                                                                               ## {C(ui),i=1,NbU},
                                                                               ## locate
                                                                               ## the
                                                                               ## point
                                                                               ## !
                                                                               ## P=C(uj)
                                                                               ## such
                                                                               ## that:
                                                                               ## !
                                                                               ## distance(P,C) =
                                                                               ## Min{distance(P,C(ui))}


proc locate*(p: Pnt2d; c: StandardAddress; nbU: cint; papp: var ExtremaPOnCurv2d) {.
    importcpp: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter::Locate(@)",
    header: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter.hxx".}
proc locate*(p: Pnt2d; c: StandardAddress; nbU: cint; umin: cfloat; usup: cfloat;
            papp: var ExtremaPOnCurv2d) {.importcpp: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter::Locate(@)", header: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter.hxx".}
proc locate*(c1: StandardAddress; c2: StandardAddress; nbU: cint; nbV: cint;
            papp1: var ExtremaPOnCurv2d; papp2: var ExtremaPOnCurv2d) {.
    importcpp: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter::Locate(@)",
    header: "HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter.hxx".}
























