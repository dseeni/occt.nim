##  Created on: 2016-10-11
##  Created by: Ilya SEVRIKOV
##  Copyright (c) 2016 OPEN CASCADE SAS
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

discard "forward decl of V3d_View"
type
  V3dTrihedron* {.importcpp: "V3d_Trihedron", header: "V3d_Trihedron.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## default
                                                                                                        ## trihedron.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Fills
                                                                                                        ## Graphic3d_Group.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Custom
                                                                                                        ## Graphic3d_Structure
                                                                                                        ## implementation.

  V3dTrihedronbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "V3d_Trihedron::get_type_name(@)",
                            header: "V3d_Trihedron.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "V3d_Trihedron::get_type_descriptor(@)",
    header: "V3d_Trihedron.hxx".}
proc dynamicType*(this: V3dTrihedron): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_Trihedron.hxx".}
proc constructV3dTrihedron*(): V3dTrihedron {.constructor,
    importcpp: "V3d_Trihedron(@)", header: "V3d_Trihedron.hxx".}
proc destroyV3dTrihedron*(this: var V3dTrihedron) {.importcpp: "#.~V3d_Trihedron()",
    header: "V3d_Trihedron.hxx".}
proc setWireframe*(this: var V3dTrihedron; theAsWireframe: bool) {.
    importcpp: "SetWireframe", header: "V3d_Trihedron.hxx".}
proc setPosition*(this: var V3dTrihedron; thePosition: AspectTypeOfTriedronPosition) {.
    importcpp: "SetPosition", header: "V3d_Trihedron.hxx".}
proc setScale*(this: var V3dTrihedron; theScale: cfloat) {.importcpp: "SetScale",
    header: "V3d_Trihedron.hxx".}
proc setSizeRatio*(this: var V3dTrihedron; theRatio: cfloat) {.
    importcpp: "SetSizeRatio", header: "V3d_Trihedron.hxx".}
proc setArrowDiameter*(this: var V3dTrihedron; theDiam: cfloat) {.
    importcpp: "SetArrowDiameter", header: "V3d_Trihedron.hxx".}
proc setNbFacets*(this: var V3dTrihedron; theNbFacets: cint) {.
    importcpp: "SetNbFacets", header: "V3d_Trihedron.hxx".}
proc setLabelsColor*(this: var V3dTrihedron; theColor: QuantityColor) {.
    importcpp: "SetLabelsColor", header: "V3d_Trihedron.hxx".}
proc setArrowsColor*(this: var V3dTrihedron; theXColor: QuantityColor;
                    theYColor: QuantityColor; theZColor: QuantityColor) {.
    importcpp: "SetArrowsColor", header: "V3d_Trihedron.hxx".}
proc display*(this: var V3dTrihedron; theView: V3dView) {.importcpp: "Display",
    header: "V3d_Trihedron.hxx".}
proc erase*(this: var V3dTrihedron) {.importcpp: "Erase", header: "V3d_Trihedron.hxx".}
proc dumpJson*(this: V3dTrihedron; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "V3d_Trihedron.hxx".}
discard "forward decl of V3d_Trihedron"
type
  HandleC1C1* = Handle[V3dTrihedron]

























