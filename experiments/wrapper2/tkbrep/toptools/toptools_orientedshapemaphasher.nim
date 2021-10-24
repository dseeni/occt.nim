##  Created on: 1993-08-30
##  Created by: Modelistation
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

discard "forward decl of TopoDS_Shape"
type
  TopToolsOrientedShapeMapHasher* {.importcpp: "TopTools_OrientedShapeMapHasher", header: "TopTools_OrientedShapeMapHasher.hxx",
                                   bycopy.} = object ## ! Computes a hash code for the given shape, in the range [1, theUpperBound]
                                                  ## ! @param theShape the shape which hash code is to be computed
                                                  ## ! @param theUpperBound the upper bound of the range a computing hash code must be within
                                                  ## ! @return a computed hash code, in the range [1, theUpperBound]


#proc hashCode*(theShape: TopoDS_Shape; theUpperBound: cint): cint {.cdecl,
#    importcpp: "TopTools_OrientedShapeMapHasher::HashCode(@)", dynlib: tkbrep.}
proc isEqual*(s1: TopoDS_Shape; s2: TopoDS_Shape): bool {.cdecl,
    importcpp: "TopTools_OrientedShapeMapHasher::IsEqual(@)", dynlib: tkbrep.}