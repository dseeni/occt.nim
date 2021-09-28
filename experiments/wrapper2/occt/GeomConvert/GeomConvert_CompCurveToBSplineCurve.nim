##  Created on: 1996-09-23
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_BoundedCurve"
type
  GeomConvertCompCurveToBSplineCurve* {.importcpp: "GeomConvert_CompCurveToBSplineCurve", header: "GeomConvert_CompCurveToBSplineCurve.hxx",
                                       bycopy.} = object ## ! Concat two BSplineCurves.


proc `new`*(this: var GeomConvertCompCurveToBSplineCurve; theSize: csize_t): pointer {.
    importcpp: "GeomConvert_CompCurveToBSplineCurve::operator new",
    header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc `delete`*(this: var GeomConvertCompCurveToBSplineCurve; theAddress: pointer) {.
    importcpp: "GeomConvert_CompCurveToBSplineCurve::operator delete",
    header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc `new[]`*(this: var GeomConvertCompCurveToBSplineCurve; theSize: csize_t): pointer {.
    importcpp: "GeomConvert_CompCurveToBSplineCurve::operator new[]",
    header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc `delete[]`*(this: var GeomConvertCompCurveToBSplineCurve; theAddress: pointer) {.
    importcpp: "GeomConvert_CompCurveToBSplineCurve::operator delete[]",
    header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc `new`*(this: var GeomConvertCompCurveToBSplineCurve; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "GeomConvert_CompCurveToBSplineCurve::operator new", header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc `delete`*(this: var GeomConvertCompCurveToBSplineCurve; a2: pointer; a3: pointer) {.
    importcpp: "GeomConvert_CompCurveToBSplineCurve::operator delete",
    header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc constructGeomConvertCompCurveToBSplineCurve*(
    parameterisation: ConvertParameterisationType = convertTgtThetaOver2): GeomConvertCompCurveToBSplineCurve {.
    constructor, importcpp: "GeomConvert_CompCurveToBSplineCurve(@)",
    header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc constructGeomConvertCompCurveToBSplineCurve*(
    basisCurve: Handle[GeomBoundedCurve];
    parameterisation: ConvertParameterisationType = convertTgtThetaOver2): GeomConvertCompCurveToBSplineCurve {.
    constructor, importcpp: "GeomConvert_CompCurveToBSplineCurve(@)",
    header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc add*(this: var GeomConvertCompCurveToBSplineCurve;
         newCurve: Handle[GeomBoundedCurve]; tolerance: StandardReal;
         after: StandardBoolean = false; withRatio: StandardBoolean = true;
         minM: int = 0): StandardBoolean {.importcpp: "Add", header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc bSplineCurve*(this: GeomConvertCompCurveToBSplineCurve): Handle[
    GeomBSplineCurve] {.noSideEffect, importcpp: "BSplineCurve",
                       header: "GeomConvert_CompCurveToBSplineCurve.hxx".}
proc clear*(this: var GeomConvertCompCurveToBSplineCurve) {.importcpp: "Clear",
    header: "GeomConvert_CompCurveToBSplineCurve.hxx".}