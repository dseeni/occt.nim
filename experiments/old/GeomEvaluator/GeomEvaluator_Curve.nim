##  Created on: 2015-09-21
##  Copyright (c) 2015 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _GeomEvaluator_Curve_HeaderFile [NewLine] # _GeomEvaluator_Curve_HeaderFile [NewLine] # < Standard_Transient . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] class gp_Pnt ;
## Error: expected ';'!!!

discard "forward decl of gp_Vec"
type
  GeomEvaluatorCurve* {.importcpp: "GeomEvaluator_Curve",
                       header: "GeomEvaluator_Curve.hxx", bycopy.} = object of StandardTransient


proc constructGeomEvaluatorCurve*(): GeomEvaluatorCurve {.constructor,
    importcpp: "GeomEvaluator_Curve(@)", header: "GeomEvaluator_Curve.hxx".}
proc d0*(this: GeomEvaluatorCurve; theU: float; theValue: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "GeomEvaluator_Curve.hxx".}
proc d1*(this: GeomEvaluatorCurve; theU: float; theValue: var Pnt; theD1: var Vec) {.
    noSideEffect, importcpp: "D1", header: "GeomEvaluator_Curve.hxx".}
proc d2*(this: GeomEvaluatorCurve; theU: float; theValue: var Pnt; theD1: var Vec;
        theD2: var Vec) {.noSideEffect, importcpp: "D2",
                       header: "GeomEvaluator_Curve.hxx".}
proc d3*(this: GeomEvaluatorCurve; theU: float; theValue: var Pnt; theD1: var Vec;
        theD2: var Vec; theD3: var Vec) {.noSideEffect, importcpp: "D3",
                                    header: "GeomEvaluator_Curve.hxx".}
proc dn*(this: GeomEvaluatorCurve; theU: float; theDerU: int): Vec {.noSideEffect,
    importcpp: "DN", header: "GeomEvaluator_Curve.hxx".}
type
  GeomEvaluatorCurvebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "GeomEvaluator_Curve::get_type_name(@)",
                            header: "GeomEvaluator_Curve.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) { return Standard_Type :: Instance < GeomEvaluator_Curve > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } }
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( GeomEvaluator_Curve , Standard_Transient ) #  _GeomEvaluator_Curve_HeaderFile
## Error: expected ';'!!!













































