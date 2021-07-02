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

discard "forward decl of Standard_NoSuchObject"
type
  GeomFillFilling* {.importcpp: "GeomFill_Filling", header: "GeomFill_Filling.hxx",
                    bycopy.} = object


proc constructGeomFillFilling*(): GeomFillFilling {.constructor,
    importcpp: "GeomFill_Filling(@)", header: "GeomFill_Filling.hxx".}
proc nbUPoles*(this: GeomFillFilling): StandardInteger {.noSideEffect,
    importcpp: "NbUPoles", header: "GeomFill_Filling.hxx".}
proc nbVPoles*(this: GeomFillFilling): StandardInteger {.noSideEffect,
    importcpp: "NbVPoles", header: "GeomFill_Filling.hxx".}
proc poles*(this: GeomFillFilling; poles: var TColgpArray2OfPnt) {.noSideEffect,
    importcpp: "Poles", header: "GeomFill_Filling.hxx".}
proc isRational*(this: GeomFillFilling): StandardBoolean {.noSideEffect,
    importcpp: "isRational", header: "GeomFill_Filling.hxx".}
proc weights*(this: GeomFillFilling; weights: var TColStdArray2OfReal) {.noSideEffect,
    importcpp: "Weights", header: "GeomFill_Filling.hxx".}

