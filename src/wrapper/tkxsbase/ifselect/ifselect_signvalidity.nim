##  Created on: 1996-01-26
##  Created by: Christian CAILLET
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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_SignValidity"
type
  HandleIFSelectSignValidity* = Handle[IFSelectSignValidity]

## ! This Signature returns the Validity Status of an entity, as
## ! deducted from data in the model : it can be
## ! "OK" "Unknown" "Unloaded" "Syntactic Fail"(but loaded)
## ! "Syntactic Warning" "Semantic Fail" "Semantic Warning"

type
  IFSelectSignValidity* {.importcpp: "IFSelect_SignValidity",
                         header: "IFSelect_SignValidity.hxx", bycopy.} = object of IFSelectSignature ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## SignValidity


proc newIFSelectSignValidity*(): IFSelectSignValidity {.cdecl, constructor,
    importcpp: "IFSelect_SignValidity(@)", header: "IFSelect_SignValidity.hxx".}
proc cVal*(ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): cstring {.
    cdecl, importcpp: "IFSelect_SignValidity::CVal(@)", header: "IFSelect_SignValidity.hxx".}
proc value*(this: IFSelectSignValidity; ent: Handle[StandardTransient];
           model: Handle[InterfaceInterfaceModel]): cstring {.noSideEffect, cdecl,
    importcpp: "Value", header: "IFSelect_SignValidity.hxx".}