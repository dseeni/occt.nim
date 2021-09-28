##  Created on: 1993-09-07
##  Created by: Christian CAILLET
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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_IGESDumper"
discard "forward decl of IGESData_SpecificModule"
discard "forward decl of IGESData_SpecificModule"
type
  HandleC1C1* = Handle[IGESDataSpecificModule]

## ! This class defines some Services which are specifically
## ! attached to IGES Entities : Dump

type
  IGESDataSpecificModule* {.importcpp: "IGESData_SpecificModule",
                           header: "IGESData_SpecificModule.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Specific
                                                                                                  ## Dump
                                                                                                  ## for
                                                                                                  ## each
                                                                                                  ## type
                                                                                                  ## of
                                                                                                  ## IGES
                                                                                                  ## Entity
                                                                                                  ## :
                                                                                                  ## it
                                                                                                  ## concerns
                                                                                                  ## only
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## own
                                                                                                  ## parameters,
                                                                                                  ## the
                                                                                                  ## general
                                                                                                  ## data
                                                                                                  ## (Directory
                                                                                                  ## Part,
                                                                                                  ## Lists)
                                                                                                  ## are
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## taken
                                                                                                  ## into
                                                                                                  ## account
                                                                                                  ## by
                                                                                                  ## the
                                                                                                  ## IGESDumper
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## See
                                                                                                  ## class
                                                                                                  ## IGESDumper
                                                                                                  ## for
                                                                                                  ## the
                                                                                                  ## rules
                                                                                                  ## to
                                                                                                  ## follow
                                                                                                  ## for
                                                                                                  ## <own>
                                                                                                  ## and
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## <attached>
                                                                                                  ## level


proc ownDump*(this: IGESDataSpecificModule; cn: cint;
             ent: Handle[IGESDataIGESEntity]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESData_SpecificModule.hxx".}
proc ownCorrect*(this: IGESDataSpecificModule; cn: cint;
                ent: Handle[IGESDataIGESEntity]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESData_SpecificModule.hxx".}
type
  IGESDataSpecificModulebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESData_SpecificModule::get_type_name(@)",
                            header: "IGESData_SpecificModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_SpecificModule::get_type_descriptor(@)",
    header: "IGESData_SpecificModule.hxx".}
proc dynamicType*(this: IGESDataSpecificModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_SpecificModule.hxx".}

























