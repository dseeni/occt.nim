import tcolstd_types

##  Copyright (c) 1998-1999 Matra Datavision
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



proc newTColStdHArray2OfInteger*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                                theColUpp: cint): TColStdHArray2OfInteger {.cdecl,
    constructor, importcpp: "TColStd_HArray2OfInteger(@)", header: "TColStd_HArray2OfInteger.hxx".}
proc newTColStdHArray2OfInteger*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                                theColUpp: cint; theValue: ValueType): TColStdHArray2OfInteger {.
    cdecl, constructor, importcpp: "TColStd_HArray2OfInteger(@)", header: "TColStd_HArray2OfInteger.hxx".}
proc newTColStdHArray2OfInteger*(theOther: TColStdArray2OfInteger): TColStdHArray2OfInteger {.
    cdecl, constructor, importcpp: "TColStd_HArray2OfInteger(@)", header: "TColStd_HArray2OfInteger.hxx".}
proc array2*(this: TColStdHArray2OfInteger): TColStdArray2OfInteger {.noSideEffect,
    cdecl, importcpp: "Array2", header: "TColStd_HArray2OfInteger.hxx".}
proc changeArray2*(this: var TColStdHArray2OfInteger): var TColStdArray2OfInteger {.
    cdecl, importcpp: "ChangeArray2", header: "TColStd_HArray2OfInteger.hxx".}