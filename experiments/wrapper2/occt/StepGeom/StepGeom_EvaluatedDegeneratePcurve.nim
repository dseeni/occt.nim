##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Surface"
discard "forward decl of StepRepr_DefinitionalRepresentation"
discard "forward decl of StepGeom_EvaluatedDegeneratePcurve"
discard "forward decl of StepGeom_EvaluatedDegeneratePcurve"
type
  HandleStepGeomEvaluatedDegeneratePcurve* = Handle[
      StepGeomEvaluatedDegeneratePcurve]
  StepGeomEvaluatedDegeneratePcurve* {.importcpp: "StepGeom_EvaluatedDegeneratePcurve", header: "StepGeom_EvaluatedDegeneratePcurve.hxx",
                                      bycopy.} = object of StepGeomDegeneratePcurve ## !
                                                                               ## Returns a
                                                                               ## EvaluatedDegeneratePcurve


proc constructStepGeomEvaluatedDegeneratePcurve*(): StepGeomEvaluatedDegeneratePcurve {.
    constructor, importcpp: "StepGeom_EvaluatedDegeneratePcurve(@)",
    header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}
proc init*(this: var StepGeomEvaluatedDegeneratePcurve;
          aName: Handle[TCollectionHAsciiString];
          aBasisSurface: Handle[StepGeomSurface];
          aReferenceToCurve: Handle[StepReprDefinitionalRepresentation];
          aEquivalentPoint: Handle[StepGeomCartesianPoint]) {.importcpp: "Init",
    header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}
proc setEquivalentPoint*(this: var StepGeomEvaluatedDegeneratePcurve;
                        aEquivalentPoint: Handle[StepGeomCartesianPoint]) {.
    importcpp: "SetEquivalentPoint",
    header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}
proc equivalentPoint*(this: StepGeomEvaluatedDegeneratePcurve): Handle[
    StepGeomCartesianPoint] {.noSideEffect, importcpp: "EquivalentPoint",
                             header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}
type
  StepGeomEvaluatedDegeneratePcurvebaseType* = StepGeomDegeneratePcurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_EvaluatedDegeneratePcurve::get_type_name(@)",
                            header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_EvaluatedDegeneratePcurve::get_type_descriptor(@)",
    header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}
proc dynamicType*(this: StepGeomEvaluatedDegeneratePcurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}
