##  Created on: 1999-02-17
##  Created by: Pavel DURANDIN
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SignAncestor"
discard "forward decl of IFSelect_SignAncestor"
type
  HandleC1C1* = Handle[IFSelectSignAncestor]
  IFSelectSignAncestor* {.importcpp: "IFSelect_SignAncestor",
                         header: "IFSelect_SignAncestor.hxx", bycopy.} = object of IFSelectSignType


proc constructIFSelectSignAncestor*(nopk: bool = false): IFSelectSignAncestor {.
    constructor, importcpp: "IFSelect_SignAncestor(@)",
    header: "IFSelect_SignAncestor.hxx".}
proc matches*(this: IFSelectSignAncestor; ent: Handle[StandardTransient];
             model: Handle[InterfaceInterfaceModel]; text: TCollectionAsciiString;
             exact: bool): bool {.noSideEffect, importcpp: "Matches",
                               header: "IFSelect_SignAncestor.hxx".}
type
  IFSelectSignAncestorbaseType* = IFSelectSignType

proc getTypeName*(): cstring {.importcpp: "IFSelect_SignAncestor::get_type_name(@)",
                            header: "IFSelect_SignAncestor.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SignAncestor::get_type_descriptor(@)",
    header: "IFSelect_SignAncestor.hxx".}
proc dynamicType*(this: IFSelectSignAncestor): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SignAncestor.hxx".}
























