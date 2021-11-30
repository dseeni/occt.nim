##  Created on: 1992-11-18
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_SelectAnyType"
type
  HandleIFSelectSelectAnyType* = Handle[IFSelectSelectAnyType]

## ! A SelectAnyType sorts the Entities of which the Type is Kind
## ! of a given Type : this Type for Match is specific of each
## ! class of SelectAnyType

type
  IFSelectSelectAnyType* {.importcpp: "IFSelect_SelectAnyType",
                          header: "IFSelect_SelectAnyType.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## the
                                                                                                    ## Type
                                                                                                    ## which
                                                                                                    ## has
                                                                                                    ## to
                                                                                                    ## be
                                                                                                    ## matched
                                                                                                    ## for
                                                                                                    ## select


proc typeForMatch*(this: IFSelectSelectAnyType): Handle[StandardType] {.
    noSideEffect, cdecl, importcpp: "TypeForMatch", header: "IFSelect_SelectAnyType.hxx".}
proc sort*(this: IFSelectSelectAnyType; rank: cint; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): bool {.noSideEffect, cdecl,
    importcpp: "Sort", header: "IFSelect_SelectAnyType.hxx".}