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

discard "forward decl of GeomAdaptor_HSurface"
type
  GeomEvaluatorOffsetSurface* {.importcpp: "GeomEvaluator_OffsetSurface",
                               header: "GeomEvaluator_OffsetSurface.hxx", bycopy.} = object of GeomEvaluatorSurface ##
                                                                                                             ## !
                                                                                                             ## Initialize
                                                                                                             ## evaluator
                                                                                                             ## by
                                                                                                             ## surface
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## bounds
                                                                                                             ## of
                                                                                                             ## a
                                                                                                             ## base
                                                                                                             ## surface
    ## /< offset value
    ## /< auxiliary osculating surface


proc constructGeomEvaluatorOffsetSurface*(theBase: Handle[GeomSurface];
    theOffset: StandardReal;
    theOscSurf: Handle[GeomOsculatingSurface] = handle[GeomOsculatingSurface]()): GeomEvaluatorOffsetSurface {.
    constructor, importcpp: "GeomEvaluator_OffsetSurface(@)",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc constructGeomEvaluatorOffsetSurface*(theBase: Handle[GeomAdaptorHSurface];
    theOffset: StandardReal;
    theOscSurf: Handle[GeomOsculatingSurface] = handle[GeomOsculatingSurface]()): GeomEvaluatorOffsetSurface {.
    constructor, importcpp: "GeomEvaluator_OffsetSurface(@)",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc setOffsetValue*(this: var GeomEvaluatorOffsetSurface; theOffset: StandardReal) {.
    importcpp: "SetOffsetValue", header: "GeomEvaluator_OffsetSurface.hxx".}
proc d0*(this: GeomEvaluatorOffsetSurface; theU: StandardReal; theV: StandardReal;
        theValue: var GpPnt) {.noSideEffect, importcpp: "D0",
                            header: "GeomEvaluator_OffsetSurface.hxx".}
proc d1*(this: GeomEvaluatorOffsetSurface; theU: StandardReal; theV: StandardReal;
        theValue: var GpPnt; theD1U: var GpVec; theD1V: var GpVec) {.noSideEffect,
    importcpp: "D1", header: "GeomEvaluator_OffsetSurface.hxx".}
proc d2*(this: GeomEvaluatorOffsetSurface; theU: StandardReal; theV: StandardReal;
        theValue: var GpPnt; theD1U: var GpVec; theD1V: var GpVec; theD2U: var GpVec;
        theD2V: var GpVec; theD2UV: var GpVec) {.noSideEffect, importcpp: "D2",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc d3*(this: GeomEvaluatorOffsetSurface; theU: StandardReal; theV: StandardReal;
        theValue: var GpPnt; theD1U: var GpVec; theD1V: var GpVec; theD2U: var GpVec;
        theD2V: var GpVec; theD2UV: var GpVec; theD3U: var GpVec; theD3V: var GpVec;
        theD3UUV: var GpVec; theD3UVV: var GpVec) {.noSideEffect, importcpp: "D3",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc dn*(this: GeomEvaluatorOffsetSurface; theU: StandardReal; theV: StandardReal;
        theDerU: StandardInteger; theDerV: StandardInteger): GpVec {.noSideEffect,
    importcpp: "DN", header: "GeomEvaluator_OffsetSurface.hxx".}
type
  GeomEvaluatorOffsetSurfacebaseType* = GeomEvaluatorSurface

proc getTypeName*(): cstring {.importcpp: "GeomEvaluator_OffsetSurface::get_type_name(@)",
                            header: "GeomEvaluator_OffsetSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomEvaluator_OffsetSurface::get_type_descriptor(@)",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc dynamicType*(this: GeomEvaluatorOffsetSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomEvaluator_OffsetSurface.hxx".}
discard "forward decl of GeomEvaluator_OffsetSurface"
type
  HandleGeomEvaluatorOffsetSurface* = Handle[GeomEvaluatorOffsetSurface]


