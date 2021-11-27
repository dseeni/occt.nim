##  Created on: 1997-04-17
##  Created by: Christophe MARION
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of HLRTopoBRep_OutLiner"
discard "forward decl of Standard_Transient"
type
  HLRBRepShapeBounds* {.importcpp: "HLRBRep_ShapeBounds",
                       header: "HLRBRep_ShapeBounds.hxx", bycopy.} = object


proc constructHLRBRepShapeBounds*(): HLRBRepShapeBounds {.constructor,
    importcpp: "HLRBRep_ShapeBounds(@)", header: "HLRBRep_ShapeBounds.hxx".}
proc constructHLRBRepShapeBounds*(s: Handle[HLRTopoBRepOutLiner];
                                 sData: Handle[StandardTransient]; nbIso: cint;
                                 v1: cint; v2: cint; e1: cint; e2: cint; f1: cint;
                                 f2: cint): HLRBRepShapeBounds {.constructor,
    importcpp: "HLRBRep_ShapeBounds(@)", header: "HLRBRep_ShapeBounds.hxx".}
proc constructHLRBRepShapeBounds*(s: Handle[HLRTopoBRepOutLiner]; nbIso: cint;
                                 v1: cint; v2: cint; e1: cint; e2: cint; f1: cint;
                                 f2: cint): HLRBRepShapeBounds {.constructor,
    importcpp: "HLRBRep_ShapeBounds(@)", header: "HLRBRep_ShapeBounds.hxx".}
proc translate*(this: var HLRBRepShapeBounds; nv: cint; ne: cint; nf: cint) {.
    importcpp: "Translate", header: "HLRBRep_ShapeBounds.hxx".}
proc shape*(this: var HLRBRepShapeBounds; s: Handle[HLRTopoBRepOutLiner]) {.
    importcpp: "Shape", header: "HLRBRep_ShapeBounds.hxx".}
proc shape*(this: HLRBRepShapeBounds): Handle[HLRTopoBRepOutLiner] {.noSideEffect,
    importcpp: "Shape", header: "HLRBRep_ShapeBounds.hxx".}
proc shapeData*(this: var HLRBRepShapeBounds; sd: Handle[StandardTransient]) {.
    importcpp: "ShapeData", header: "HLRBRep_ShapeBounds.hxx".}
proc shapeData*(this: HLRBRepShapeBounds): Handle[StandardTransient] {.noSideEffect,
    importcpp: "ShapeData", header: "HLRBRep_ShapeBounds.hxx".}
proc nbOfIso*(this: var HLRBRepShapeBounds; nbIso: cint) {.importcpp: "NbOfIso",
    header: "HLRBRep_ShapeBounds.hxx".}
proc nbOfIso*(this: HLRBRepShapeBounds): cint {.noSideEffect, importcpp: "NbOfIso",
    header: "HLRBRep_ShapeBounds.hxx".}
proc sizes*(this: HLRBRepShapeBounds; nv: var cint; ne: var cint; nf: var cint) {.
    noSideEffect, importcpp: "Sizes", header: "HLRBRep_ShapeBounds.hxx".}
proc bounds*(this: HLRBRepShapeBounds; v1: var cint; v2: var cint; e1: var cint;
            e2: var cint; f1: var cint; f2: var cint) {.noSideEffect, importcpp: "Bounds",
    header: "HLRBRep_ShapeBounds.hxx".}
proc updateMinMax*(this: var HLRBRepShapeBounds; theTotMinMax: MinMaxIndices) {.
    importcpp: "UpdateMinMax", header: "HLRBRep_ShapeBounds.hxx".}
proc minMax*(this: var HLRBRepShapeBounds): var MinMaxIndices {.importcpp: "MinMax",
    header: "HLRBRep_ShapeBounds.hxx".}
























