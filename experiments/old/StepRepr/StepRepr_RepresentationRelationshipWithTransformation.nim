##  Created on: 1998-06-30
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_Transformation"
discard "forward decl of StepRepr_RepresentationRelationshipWithTransformation"
discard "forward decl of StepRepr_RepresentationRelationshipWithTransformation"
type
  HandleC1C1* = Handle[StepReprRepresentationRelationshipWithTransformation]
  StepReprRepresentationRelationshipWithTransformation* {.
      importcpp: "StepRepr_RepresentationRelationshipWithTransformation",
      header: "StepRepr_RepresentationRelationshipWithTransformation.hxx", bycopy.} = object of StepReprShapeRepresentationRelationship


proc constructStepReprRepresentationRelationshipWithTransformation*(): StepReprRepresentationRelationshipWithTransformation {.
    constructor,
    importcpp: "StepRepr_RepresentationRelationshipWithTransformation(@)",
    header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}
proc init*(this: var StepReprRepresentationRelationshipWithTransformation;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aRep1: Handle[StepReprRepresentation];
          aRep2: Handle[StepReprRepresentation]; aTransf: StepReprTransformation) {.
    importcpp: "Init",
    header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}
proc transformationOperator*(this: StepReprRepresentationRelationshipWithTransformation): StepReprTransformation {.
    noSideEffect, importcpp: "TransformationOperator",
    header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}
proc setTransformationOperator*(this: var StepReprRepresentationRelationshipWithTransformation;
                               aTrans: StepReprTransformation) {.
    importcpp: "SetTransformationOperator",
    header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}
type
  StepReprRepresentationRelationshipWithTransformationbaseType* = StepReprShapeRepresentationRelationship

proc getTypeName*(): cstring {.importcpp: "StepRepr_RepresentationRelationshipWithTransformation::get_type_name(@)", header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_RepresentationRelationshipWithTransformation::get_type_descriptor(@)",
    header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}
proc dynamicType*(this: StepReprRepresentationRelationshipWithTransformation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}