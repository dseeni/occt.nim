import bnd_types
#import ../../tkernel/standard/standard_types
#import ../../tkernel/tcolstd/tcolstd_types
#import ../../tkernel/ncollection/ncollection_types
import ../gp/gp_types
#import ../tcolgp/tcolgp_types
##  Created on: 2010-12-03
##  Created by: Artem SHAL
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
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

discard "forward decl of gp_XYZ"


proc newBndSphere*(): BndSphere {.cdecl, constructor, importcpp: "Bnd_Sphere(@)",
                               header: "Bnd_Sphere.hxx".}
proc newBndSphere*(theCntr: XyzObj; theRad: cfloat; theU: cint; theV: cint): BndSphere {.
    cdecl, constructor, importcpp: "Bnd_Sphere(@)", header: "Bnd_Sphere.hxx".}
proc u*(this: BndSphere): cint {.noSideEffect, cdecl, importcpp: "U", header: "Bnd_Sphere.hxx".}
proc v*(this: BndSphere): cint {.noSideEffect, cdecl, importcpp: "V", header: "Bnd_Sphere.hxx".}
proc isValid*(this: BndSphere): bool {.noSideEffect, cdecl, importcpp: "IsValid",
                                   header: "Bnd_Sphere.hxx".}
proc setValid*(this: var BndSphere; isValid: bool) {.cdecl, importcpp: "SetValid",
    header: "Bnd_Sphere.hxx".}
proc center*(this: BndSphere): XyzObj {.noSideEffect, cdecl, importcpp: "Center",
                                 header: "Bnd_Sphere.hxx".}
proc radius*(this: BndSphere): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                    header: "Bnd_Sphere.hxx".}
proc distances*(this: BndSphere; theXYZ: XyzObj; theMin: var cfloat; theMax: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Distances", header: "Bnd_Sphere.hxx".}
proc squareDistances*(this: BndSphere; theXYZ: XyzObj; theMin: var cfloat;
                     theMax: var cfloat) {.noSideEffect, cdecl,
                                        importcpp: "SquareDistances",
                                        header: "Bnd_Sphere.hxx".}
proc project*(this: BndSphere; theNode: XyzObj; theProjNode: var XyzObj; theDist: var cfloat;
             theInside: var bool): bool {.noSideEffect, cdecl, importcpp: "Project",
                                      header: "Bnd_Sphere.hxx".}
proc distance*(this: BndSphere; theNode: XyzObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "Bnd_Sphere.hxx".}
proc squareDistance*(this: BndSphere; theNode: XyzObj): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Bnd_Sphere.hxx".}
proc add*(this: var BndSphere; theOther: BndSphere) {.cdecl, importcpp: "Add",
    header: "Bnd_Sphere.hxx".}
proc isOut*(this: BndSphere; theOther: BndSphere): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_Sphere.hxx".}
proc isOut*(this: BndSphere; thePnt: XyzObj; theMaxDist: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsOut", header: "Bnd_Sphere.hxx".}
proc squareExtent*(this: BndSphere): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareExtent", header: "Bnd_Sphere.hxx".}