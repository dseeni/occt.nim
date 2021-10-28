##  Created on: 1993-07-22
##  Created by: Remi LEQUETTE
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Revolution"
type
  BRepPrimAPI_MakeRevolution* {.importcpp: "BRepPrimAPI_MakeRevolution",
                               header: "BRepPrimAPI_MakeRevolution.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis ##
                                                                                                               ## !
                                                                                                               ## Make
                                                                                                               ## a
                                                                                                               ## revolution
                                                                                                               ## body
                                                                                                               ## by
                                                                                                               ## rotating
                                                                                                               ## a
                                                                                                               ## curve
                                                                                                               ## around
                                                                                                               ## Z.


proc newBRepPrimAPI_MakeRevolution*(meridian: Handle[GeomCurve]): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", dynlib: tkprim.}
proc newBRepPrimAPI_MakeRevolution*(meridian: Handle[GeomCurve]; angle: cfloat): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", dynlib: tkprim.}
proc newBRepPrimAPI_MakeRevolution*(meridian: Handle[GeomCurve]; vMin: cfloat;
                                   vMax: cfloat): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", dynlib: tkprim.}
proc newBRepPrimAPI_MakeRevolution*(meridian: Handle[GeomCurve]; vMin: cfloat;
                                   vMax: cfloat; angle: cfloat): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", dynlib: tkprim.}
proc newBRepPrimAPI_MakeRevolution*(axes: Ax2; meridian: Handle[GeomCurve]): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", dynlib: tkprim.}
proc newBRepPrimAPI_MakeRevolution*(axes: Ax2; meridian: Handle[GeomCurve];
                                   angle: cfloat): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", dynlib: tkprim.}
proc newBRepPrimAPI_MakeRevolution*(axes: Ax2; meridian: Handle[GeomCurve];
                                   vMin: cfloat; vMax: cfloat): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", dynlib: tkprim.}
proc newBRepPrimAPI_MakeRevolution*(axes: Ax2; meridian: Handle[GeomCurve];
                                   vMin: cfloat; vMax: cfloat; angle: cfloat): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", dynlib: tkprim.}
proc oneAxis*(this: var BRepPrimAPI_MakeRevolution): pointer {.cdecl,
    importcpp: "OneAxis", dynlib: tkprim.}
proc revolution*(this: var BRepPrimAPI_MakeRevolution): var BRepPrimRevolution {.
    cdecl, importcpp: "Revolution", dynlib: tkprim.}