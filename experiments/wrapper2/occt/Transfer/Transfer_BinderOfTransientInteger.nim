##  Created on: 1995-02-27
##  Created by: Christian CAILLET
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

discard "forward decl of Transfer_BinderOfTransientInteger"
discard "forward decl of Transfer_BinderOfTransientInteger"
type
  HandleC1C1* = Handle[TransferBinderOfTransientInteger]

## ! This type of Binder allows to attach as result, besides a
## ! Transient Object, an Integer Value, which can be an Index
## ! in the Object if it defines a List, for instance
## !
## ! This Binder is otherwise a kind of SimpleBinderOfTransient,
## ! i.e. its basic result (for iterators, etc) is the Transient

type
  TransferBinderOfTransientInteger* {.importcpp: "Transfer_BinderOfTransientInteger", header: "Transfer_BinderOfTransientInteger.hxx",
                                     bycopy.} = object of TransferSimpleBinderOfTransient ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## BinderOfTransientInteger;
                                                                                     ## Default
                                                                                     ## value
                                                                                     ## for
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## integer
                                                                                     ## part
                                                                                     ## is
                                                                                     ## zero


proc constructTransferBinderOfTransientInteger*(): TransferBinderOfTransientInteger {.
    constructor, importcpp: "Transfer_BinderOfTransientInteger(@)",
    header: "Transfer_BinderOfTransientInteger.hxx".}
proc setInteger*(this: var TransferBinderOfTransientInteger; value: cint) {.
    importcpp: "SetInteger", header: "Transfer_BinderOfTransientInteger.hxx".}
proc integer*(this: TransferBinderOfTransientInteger): cint {.noSideEffect,
    importcpp: "Integer", header: "Transfer_BinderOfTransientInteger.hxx".}
type
  TransferBinderOfTransientIntegerbaseType* = TransferSimpleBinderOfTransient

proc getTypeName*(): cstring {.importcpp: "Transfer_BinderOfTransientInteger::get_type_name(@)",
                            header: "Transfer_BinderOfTransientInteger.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_BinderOfTransientInteger::get_type_descriptor(@)",
    header: "Transfer_BinderOfTransientInteger.hxx".}
proc dynamicType*(this: TransferBinderOfTransientInteger): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_BinderOfTransientInteger.hxx".}

























