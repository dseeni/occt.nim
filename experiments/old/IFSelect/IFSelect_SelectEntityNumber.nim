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

discard "forward decl of IFSelect_IntParam"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectEntityNumber"
discard "forward decl of IFSelect_SelectEntityNumber"
type
  HandleC1C1* = Handle[IFSelectSelectEntityNumber]

## ! A SelectEntityNumber gets in an InterfaceModel (through a
## ! Graph), the Entity which has a specified Number (its rank of
## ! adding into the Model) : there can be zero (if none) or one.
## ! The Number is not directly defined as an Integer, but as a
## ! Parameter, which can be externally controled

type
  IFSelectSelectEntityNumber* {.importcpp: "IFSelect_SelectEntityNumber",
                               header: "IFSelect_SelectEntityNumber.hxx", bycopy.} = object of IFSelectSelectBase ##
                                                                                                           ## !
                                                                                                           ## Creates
                                                                                                           ## a
                                                                                                           ## SelectEntityNumber,
                                                                                                           ## initially
                                                                                                           ## with
                                                                                                           ## no
                                                                                                           ## specified
                                                                                                           ## Number


proc constructIFSelectSelectEntityNumber*(): IFSelectSelectEntityNumber {.
    constructor, importcpp: "IFSelect_SelectEntityNumber(@)",
    header: "IFSelect_SelectEntityNumber.hxx".}
proc setNumber*(this: var IFSelectSelectEntityNumber; num: Handle[IFSelectIntParam]) {.
    importcpp: "SetNumber", header: "IFSelect_SelectEntityNumber.hxx".}
proc number*(this: IFSelectSelectEntityNumber): Handle[IFSelectIntParam] {.
    noSideEffect, importcpp: "Number", header: "IFSelect_SelectEntityNumber.hxx".}
proc rootResult*(this: IFSelectSelectEntityNumber; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult",
    header: "IFSelect_SelectEntityNumber.hxx".}
proc label*(this: IFSelectSelectEntityNumber): TCollectionAsciiString {.
    noSideEffect, importcpp: "Label", header: "IFSelect_SelectEntityNumber.hxx".}
type
  IFSelectSelectEntityNumberbaseType* = IFSelectSelectBase

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectEntityNumber::get_type_name(@)",
                            header: "IFSelect_SelectEntityNumber.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectEntityNumber::get_type_descriptor(@)",
    header: "IFSelect_SelectEntityNumber.hxx".}
proc dynamicType*(this: IFSelectSelectEntityNumber): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IFSelect_SelectEntityNumber.hxx".}
























