##  Created on: 1993-01-13
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
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

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESDimen_WitnessLine"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IGESDimen_AngularDimension"
discard "forward decl of IGESDimen_AngularDimension"
type
  HandleC1C1* = Handle[IGESDimenAngularDimension]

## ! defines AngularDimension, Type <202> Form <0>
## ! in package IGESDimen
## ! Used to dimension angles

type
  IGESDimenAngularDimension* {.importcpp: "IGESDimen_AngularDimension",
                              header: "IGESDimen_AngularDimension.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenAngularDimension*(): IGESDimenAngularDimension {.
    constructor, importcpp: "IGESDimen_AngularDimension(@)",
    header: "IGESDimen_AngularDimension.hxx".}
proc init*(this: var IGESDimenAngularDimension; aNote: Handle[IGESDimenGeneralNote];
          aLine: Handle[IGESDimenWitnessLine];
          anotherLine: Handle[IGESDimenWitnessLine]; aVertex: Xy; aRadius: cfloat;
          aLeader: Handle[IGESDimenLeaderArrow];
          anotherLeader: Handle[IGESDimenLeaderArrow]) {.importcpp: "Init",
    header: "IGESDimen_AngularDimension.hxx".}
proc note*(this: IGESDimenAngularDimension): Handle[IGESDimenGeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_AngularDimension.hxx".}
proc hasFirstWitnessLine*(this: IGESDimenAngularDimension): bool {.noSideEffect,
    importcpp: "HasFirstWitnessLine", header: "IGESDimen_AngularDimension.hxx".}
proc firstWitnessLine*(this: IGESDimenAngularDimension): Handle[
    IGESDimenWitnessLine] {.noSideEffect, importcpp: "FirstWitnessLine",
                           header: "IGESDimen_AngularDimension.hxx".}
proc hasSecondWitnessLine*(this: IGESDimenAngularDimension): bool {.noSideEffect,
    importcpp: "HasSecondWitnessLine", header: "IGESDimen_AngularDimension.hxx".}
proc secondWitnessLine*(this: IGESDimenAngularDimension): Handle[
    IGESDimenWitnessLine] {.noSideEffect, importcpp: "SecondWitnessLine",
                           header: "IGESDimen_AngularDimension.hxx".}
proc vertex*(this: IGESDimenAngularDimension): Pnt2d {.noSideEffect,
    importcpp: "Vertex", header: "IGESDimen_AngularDimension.hxx".}
proc transformedVertex*(this: IGESDimenAngularDimension): Pnt2d {.noSideEffect,
    importcpp: "TransformedVertex", header: "IGESDimen_AngularDimension.hxx".}
proc radius*(this: IGESDimenAngularDimension): cfloat {.noSideEffect,
    importcpp: "Radius", header: "IGESDimen_AngularDimension.hxx".}
proc firstLeader*(this: IGESDimenAngularDimension): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "FirstLeader",
    header: "IGESDimen_AngularDimension.hxx".}
proc secondLeader*(this: IGESDimenAngularDimension): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "SecondLeader",
    header: "IGESDimen_AngularDimension.hxx".}
type
  IGESDimenAngularDimensionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_AngularDimension::get_type_name(@)",
                            header: "IGESDimen_AngularDimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_AngularDimension::get_type_descriptor(@)",
    header: "IGESDimen_AngularDimension.hxx".}
proc dynamicType*(this: IGESDimenAngularDimension): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_AngularDimension.hxx".}

























