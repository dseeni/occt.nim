##  Created on: 1993-01-26
##  Created by: Laurent PAINNOT
##  Copyright (c) 1993-1999 Matra Datavision
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

type
  ApproxHArray1OfAdHSurface* {.importcpp: "Approx_HArray1OfAdHSurface",
                              header: "Approx_HArray1OfAdHSurface.hxx", bycopy.} = object of ApproxArray1OfAdHSurface


proc constructApproxHArray1OfAdHSurface*(theLower: StandardInteger;
                                        theUpper: StandardInteger): ApproxHArray1OfAdHSurface {.
    constructor, importcpp: "Approx_HArray1OfAdHSurface(@)",
    header: "Approx_HArray1OfAdHSurface.hxx".}
proc constructApproxHArray1OfAdHSurface*(theLower: StandardInteger;
                                        theUpper: StandardInteger;
                                        theValue: ValueType): ApproxHArray1OfAdHSurface {.
    constructor, importcpp: "Approx_HArray1OfAdHSurface(@)",
    header: "Approx_HArray1OfAdHSurface.hxx".}
proc constructApproxHArray1OfAdHSurface*(theOther: ApproxArray1OfAdHSurface): ApproxHArray1OfAdHSurface {.
    constructor, importcpp: "Approx_HArray1OfAdHSurface(@)",
    header: "Approx_HArray1OfAdHSurface.hxx".}
proc array1*(this: ApproxHArray1OfAdHSurface): ApproxArray1OfAdHSurface {.
    noSideEffect, importcpp: "Array1", header: "Approx_HArray1OfAdHSurface.hxx".}
proc changeArray1*(this: var ApproxHArray1OfAdHSurface): var ApproxArray1OfAdHSurface {.
    importcpp: "ChangeArray1", header: "Approx_HArray1OfAdHSurface.hxx".}
type
  ApproxHArray1OfAdHSurfacebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "Approx_HArray1OfAdHSurface::get_type_name(@)",
                            header: "Approx_HArray1OfAdHSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Approx_HArray1OfAdHSurface::get_type_descriptor(@)",
    header: "Approx_HArray1OfAdHSurface.hxx".}
proc dynamicType*(this: ApproxHArray1OfAdHSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Approx_HArray1OfAdHSurface.hxx".}

