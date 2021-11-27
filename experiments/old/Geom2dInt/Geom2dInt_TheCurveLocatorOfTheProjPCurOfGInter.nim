##  Created on: 1992-06-04
##  Created by: Jacques GOUSSARD
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

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
type
  Geom2dIntTheCurveLocatorOfTheProjPCurOfGInter* {.
      importcpp: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter",
      header: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter.hxx", bycopy.} = object


proc `new`*(this: var Geom2dIntTheCurveLocatorOfTheProjPCurOfGInter;
           theSize: csize_t): pointer {.importcpp: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter::operator new", header: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter.hxx".}
proc `delete`*(this: var Geom2dIntTheCurveLocatorOfTheProjPCurOfGInter;
              theAddress: pointer) {.importcpp: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter::operator delete", header: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter.hxx".}
proc `new[]`*(this: var Geom2dIntTheCurveLocatorOfTheProjPCurOfGInter;
             theSize: csize_t): pointer {.importcpp: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter::operator new[]", header: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter.hxx".}
proc `delete[]`*(this: var Geom2dIntTheCurveLocatorOfTheProjPCurOfGInter;
                theAddress: pointer) {.importcpp: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter::operator delete[]", header: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter.hxx".}
proc `new`*(this: var Geom2dIntTheCurveLocatorOfTheProjPCurOfGInter; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter::operator new", header: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter.hxx".}
proc `delete`*(this: var Geom2dIntTheCurveLocatorOfTheProjPCurOfGInter; a2: pointer;
              a3: pointer) {.importcpp: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter::operator delete", header: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter.hxx".}
proc locate*(p: Pnt2d; c: Adaptor2dCurve2d; nbU: int; papp: var ExtremaPOnCurv2d) {.
    importcpp: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter::Locate(@)",
    header: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter.hxx".}
proc locate*(p: Pnt2d; c: Adaptor2dCurve2d; nbU: int; umin: StandardReal;
            usup: StandardReal; papp: var ExtremaPOnCurv2d) {.
    importcpp: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter::Locate(@)",
    header: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter.hxx".}
proc locate*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d; nbU: int; nbV: int;
            papp1: var ExtremaPOnCurv2d; papp2: var ExtremaPOnCurv2d) {.
    importcpp: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter::Locate(@)",
    header: "Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter.hxx".}