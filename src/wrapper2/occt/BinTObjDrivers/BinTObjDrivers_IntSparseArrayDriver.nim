##  Created on: 2007-03-30
##  Created by: Michael SAZONOV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
##  The original implementation Copyright: (C) RINA S.p.A

type
  BinTObjDriversIntSparseArrayDriver* {.importcpp: "BinTObjDrivers_IntSparseArrayDriver", header: "BinTObjDrivers_IntSparseArrayDriver.hxx",
                                       bycopy.} = object of BinMDF_ADriver ##  CASCADE RTTI


proc constructBinTObjDriversIntSparseArrayDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinTObjDriversIntSparseArrayDriver {.
    constructor, importcpp: "BinTObjDrivers_IntSparseArrayDriver(@)",
    header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
proc newEmpty*(this: BinTObjDriversIntSparseArrayDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
proc paste*(this: BinTObjDriversIntSparseArrayDriver;
           theSource: BinObjMgtPersistent; theTarget: Handle[TDF_Attribute];
           theRelocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste",
    header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
proc paste*(this: BinTObjDriversIntSparseArrayDriver;
           theSource: Handle[TDF_Attribute]; theTarget: var BinObjMgtPersistent;
           theRelocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
type
  BinTObjDriversIntSparseArrayDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinTObjDrivers_IntSparseArrayDriver::get_type_name(@)",
                            header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinTObjDrivers_IntSparseArrayDriver::get_type_descriptor(@)",
    header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
proc dynamicType*(this: BinTObjDriversIntSparseArrayDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
##  Define handle class

discard "forward decl of BinTObjDrivers_IntSparseArrayDriver"
type
  HandleBinTObjDriversIntSparseArrayDriver* = Handle[
      BinTObjDriversIntSparseArrayDriver]

# when defined(_MSC_VER):
#   discard

