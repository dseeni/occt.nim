import ../../tkernel/tcolstd/tcolstd_types
import appparcurves_types





##  Created on: 1991-04-11
##  Created by: Laurent PAINNOT
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



proc newAppParCurvesHArray1OfMultiPoint*(theLower: cint; theUpper: cint): AppParCurvesHArray1OfMultiPoint {.
    cdecl, constructor, importcpp: "AppParCurves_HArray1OfMultiPoint(@)",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc newAppParCurvesHArray1OfMultiPoint*(theLower: cint; theUpper: cint;
                                        theValue: ValueType): AppParCurvesHArray1OfMultiPoint {.
    cdecl, constructor, importcpp: "AppParCurves_HArray1OfMultiPoint(@)",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc newAppParCurvesHArray1OfMultiPoint*(theOther: AppParCurvesArray1OfMultiPoint): AppParCurvesHArray1OfMultiPoint {.
    cdecl, constructor, importcpp: "AppParCurves_HArray1OfMultiPoint(@)",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc array1*(this: AppParCurvesHArray1OfMultiPoint): AppParCurvesArray1OfMultiPoint {.
    noSideEffect, cdecl, importcpp: "Array1", header: "AppParCurves_HArray1OfMultiPoint.hxx".}


