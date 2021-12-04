##  Created on: 1996-12-05
##  Created by: Flore Lantheaume/Odile Olivier
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Geom_Plane"
type
  HandlePrsDimChamf2dDimension* = Handle[PrsDimChamf2dDimension]

## ! A framework to define display of 2D chamfers.
## ! A chamfer is displayed with arrows and text. The text
## ! gives the length of the chamfer if it is a symmetrical
## ! chamfer, or the angle if it is not.

type
  PrsDimChamf2dDimension* {.importcpp: "PrsDim_Chamf2dDimension",
                           header: "PrsDim_Chamf2dDimension.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                               ## !
                                                                                               ## Constructs
                                                                                               ## the
                                                                                               ## display
                                                                                               ## object
                                                                                               ## for
                                                                                               ## 2D
                                                                                               ## chamfers.
                                                                                               ##
                                                                                               ## !
                                                                                               ## This
                                                                                               ## object
                                                                                               ## is
                                                                                               ## defined
                                                                                               ## by
                                                                                               ## the
                                                                                               ## face
                                                                                               ## aFShape,
                                                                                               ## the
                                                                                               ##
                                                                                               ## !
                                                                                               ## dimension
                                                                                               ## aVal,
                                                                                               ## the
                                                                                               ## plane
                                                                                               ## aPlane
                                                                                               ## and
                                                                                               ## the
                                                                                               ## text
                                                                                               ## aText.


proc newPrsDimChamf2dDimension*(aFShape: TopoDS_Shape; aPlane: Handle[GeomPlane];
                               aVal: cfloat; aText: TCollectionExtendedString): PrsDimChamf2dDimension {.
    cdecl, constructor, importcpp: "PrsDim_Chamf2dDimension(@)", header: "PrsDim_Chamf2dDimension.hxx".}
proc newPrsDimChamf2dDimension*(aFShape: TopoDS_Shape; aPlane: Handle[GeomPlane];
                               aVal: cfloat; aText: TCollectionExtendedString;
                               aPosition: Pnt; aSymbolPrs: DsgPrsArrowSide;
                               anArrowSize: cfloat = 0.0): PrsDimChamf2dDimension {.
    cdecl, constructor, importcpp: "PrsDim_Chamf2dDimension(@)", header: "PrsDim_Chamf2dDimension.hxx".}
proc kindOfDimension*(this: PrsDimChamf2dDimension): PrsDimKindOfDimension {.
    noSideEffect, cdecl, importcpp: "KindOfDimension", header: "PrsDim_Chamf2dDimension.hxx".}
proc isMovable*(this: PrsDimChamf2dDimension): bool {.noSideEffect, cdecl,
    importcpp: "IsMovable", header: "PrsDim_Chamf2dDimension.hxx".}