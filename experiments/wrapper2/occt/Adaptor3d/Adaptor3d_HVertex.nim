##  Created on: 1994-03-25
##  Created by: model
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of gp_Pnt2d"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Adaptor3d_HVertex"
type
  Adaptor3dHVertex* {.importcpp: "Adaptor3d_HVertex",
                     header: "Adaptor3d_HVertex.hxx", bycopy.} = object of StandardTransient
  HandleAdaptor3dHVertex* = Handle[Adaptor3dHVertex]

proc constructAdaptor3dHVertex*(): Adaptor3dHVertex {.constructor,
    importcpp: "Adaptor3d_HVertex(@)", header: "Adaptor3d_HVertex.hxx".}
proc constructAdaptor3dHVertex*(p: Pnt2d; ori: TopAbsOrientation; resolution: cfloat): Adaptor3dHVertex {.
    constructor, importcpp: "Adaptor3d_HVertex(@)", header: "Adaptor3d_HVertex.hxx".}
proc value*(this: var Adaptor3dHVertex): Pnt2d {.importcpp: "Value",
    header: "Adaptor3d_HVertex.hxx".}
proc parameter*(this: var Adaptor3dHVertex; c: Handle[Adaptor2dHCurve2d]): cfloat {.
    importcpp: "Parameter", header: "Adaptor3d_HVertex.hxx".}
proc resolution*(this: var Adaptor3dHVertex; c: Handle[Adaptor2dHCurve2d]): cfloat {.
    importcpp: "Resolution", header: "Adaptor3d_HVertex.hxx".}
proc orientation*(this: var Adaptor3dHVertex): TopAbsOrientation {.
    importcpp: "Orientation", header: "Adaptor3d_HVertex.hxx".}
proc isSame*(this: var Adaptor3dHVertex; other: Handle[Adaptor3dHVertex]): bool {.
    importcpp: "IsSame", header: "Adaptor3d_HVertex.hxx".}
type
  Adaptor3dHVertexbaseType* = StandardTransient

#[ proc getTypeName*(): cstring {.importcpp: "Adaptor3d_HVertex::get_type_name(@)",
                            header: "Adaptor3d_HVertex.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Adaptor3d_HVertex::get_type_descriptor(@)",
    header: "Adaptor3d_HVertex.hxx".}
proc dynamicType*(this: Adaptor3dHVertex): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Adaptor3d_HVertex.hxx".} ]#

























