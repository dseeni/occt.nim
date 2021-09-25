##  Created on: 1993-09-28
##  Created by: Bruno DUMORTIER
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
  GeomFillCurved* {.importcpp: "GeomFill_Curved", header: "GeomFill_Curved.hxx",
                   bycopy.} = object of GeomFillFilling


proc constructGeomFillCurved*(): GeomFillCurved {.constructor,
    importcpp: "GeomFill_Curved(@)", header: "GeomFill_Curved.hxx".}
proc constructGeomFillCurved*(p1: TColgpArray1OfPnt; p2: TColgpArray1OfPnt;
                             p3: TColgpArray1OfPnt; p4: TColgpArray1OfPnt): GeomFillCurved {.
    constructor, importcpp: "GeomFill_Curved(@)", header: "GeomFill_Curved.hxx".}
proc constructGeomFillCurved*(p1: TColgpArray1OfPnt; p2: TColgpArray1OfPnt;
                             p3: TColgpArray1OfPnt; p4: TColgpArray1OfPnt;
                             w1: TColStdArray1OfReal; w2: TColStdArray1OfReal;
                             w3: TColStdArray1OfReal; w4: TColStdArray1OfReal): GeomFillCurved {.
    constructor, importcpp: "GeomFill_Curved(@)", header: "GeomFill_Curved.hxx".}
proc constructGeomFillCurved*(p1: TColgpArray1OfPnt; p2: TColgpArray1OfPnt): GeomFillCurved {.
    constructor, importcpp: "GeomFill_Curved(@)", header: "GeomFill_Curved.hxx".}
proc constructGeomFillCurved*(p1: TColgpArray1OfPnt; p2: TColgpArray1OfPnt;
                             w1: TColStdArray1OfReal; w2: TColStdArray1OfReal): GeomFillCurved {.
    constructor, importcpp: "GeomFill_Curved(@)", header: "GeomFill_Curved.hxx".}
proc init*(this: var GeomFillCurved; p1: TColgpArray1OfPnt; p2: TColgpArray1OfPnt;
          p3: TColgpArray1OfPnt; p4: TColgpArray1OfPnt) {.importcpp: "Init",
    header: "GeomFill_Curved.hxx".}
proc init*(this: var GeomFillCurved; p1: TColgpArray1OfPnt; p2: TColgpArray1OfPnt;
          p3: TColgpArray1OfPnt; p4: TColgpArray1OfPnt; w1: TColStdArray1OfReal;
          w2: TColStdArray1OfReal; w3: TColStdArray1OfReal; w4: TColStdArray1OfReal) {.
    importcpp: "Init", header: "GeomFill_Curved.hxx".}
proc init*(this: var GeomFillCurved; p1: TColgpArray1OfPnt; p2: TColgpArray1OfPnt) {.
    importcpp: "Init", header: "GeomFill_Curved.hxx".}
proc init*(this: var GeomFillCurved; p1: TColgpArray1OfPnt; p2: TColgpArray1OfPnt;
          w1: TColStdArray1OfReal; w2: TColStdArray1OfReal) {.importcpp: "Init",
    header: "GeomFill_Curved.hxx".}
