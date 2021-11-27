##  Created on: 1993-06-03
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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Geom2dAdaptor_GHCurve"
discard "forward decl of Geom2dAdaptor_HCurve"
type
  Geom2dAdaptor* {.importcpp: "Geom2dAdaptor", header: "Geom2dAdaptor.hxx", bycopy.} = object


proc `new`*(this: var Geom2dAdaptor; theSize: csize_t): pointer {.
    importcpp: "Geom2dAdaptor::operator new", header: "Geom2dAdaptor.hxx".}
proc `delete`*(this: var Geom2dAdaptor; theAddress: pointer) {.
    importcpp: "Geom2dAdaptor::operator delete", header: "Geom2dAdaptor.hxx".}
proc `new[]`*(this: var Geom2dAdaptor; theSize: csize_t): pointer {.
    importcpp: "Geom2dAdaptor::operator new[]", header: "Geom2dAdaptor.hxx".}
proc `delete[]`*(this: var Geom2dAdaptor; theAddress: pointer) {.
    importcpp: "Geom2dAdaptor::operator delete[]", header: "Geom2dAdaptor.hxx".}
proc `new`*(this: var Geom2dAdaptor; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dAdaptor::operator new", header: "Geom2dAdaptor.hxx".}
proc `delete`*(this: var Geom2dAdaptor; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dAdaptor::operator delete", header: "Geom2dAdaptor.hxx".}
proc makeCurve*(hc: Adaptor2dCurve2d): Handle[Geom2dCurve] {.
    importcpp: "Geom2dAdaptor::MakeCurve(@)", header: "Geom2dAdaptor.hxx".}