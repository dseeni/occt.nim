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

discard "forward decl of StepRepr_ExternallyDefinedRepresentation"
discard "forward decl of StepRepr_ExternallyDefinedRepresentation"
type
  HandleC1C1* = Handle[StepReprExternallyDefinedRepresentation]
  StepReprExternallyDefinedRepresentation* {.
      importcpp: "StepRepr_ExternallyDefinedRepresentation",
      header: "StepRepr_ExternallyDefinedRepresentation.hxx", bycopy.} = object of StepReprRepresentation


proc constructStepReprExternallyDefinedRepresentation*(): StepReprExternallyDefinedRepresentation {.
    constructor, importcpp: "StepRepr_ExternallyDefinedRepresentation(@)",
    header: "StepRepr_ExternallyDefinedRepresentation.hxx".}
type
  StepReprExternallyDefinedRepresentationbaseType* = StepReprRepresentation

proc getTypeName*(): cstring {.importcpp: "StepRepr_ExternallyDefinedRepresentation::get_type_name(@)", header: "StepRepr_ExternallyDefinedRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_ExternallyDefinedRepresentation::get_type_descriptor(@)",
    header: "StepRepr_ExternallyDefinedRepresentation.hxx".}
proc dynamicType*(this: StepReprExternallyDefinedRepresentation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_ExternallyDefinedRepresentation.hxx".}

























