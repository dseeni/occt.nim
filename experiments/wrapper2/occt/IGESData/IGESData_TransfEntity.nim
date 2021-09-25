##  Created on: 1992-04-07
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

discard "forward decl of gp_GTrsf"
discard "forward decl of IGESData_TransfEntity"
discard "forward decl of IGESData_TransfEntity"
type
  HandleIGESDataTransfEntity* = Handle[IGESDataTransfEntity]

## ! defines required type for Transf in directory part
## ! an effective Transf entity must inherits it

type
  IGESDataTransfEntity* {.importcpp: "IGESData_TransfEntity",
                         header: "IGESData_TransfEntity.hxx", bycopy.} = object of IGESDataIGESEntity ##
                                                                                               ## !
                                                                                               ## gives
                                                                                               ## value
                                                                                               ## of
                                                                                               ## the
                                                                                               ## transformation,
                                                                                               ## as
                                                                                               ## a
                                                                                               ## GTrsf
                                                                                               ##
                                                                                               ## !
                                                                                               ## To
                                                                                               ## be
                                                                                               ## defined
                                                                                               ## by
                                                                                               ## an
                                                                                               ## effective
                                                                                               ## class
                                                                                               ## of
                                                                                               ## Transformation
                                                                                               ## Entity
                                                                                               ##
                                                                                               ## !
                                                                                               ## Warning
                                                                                               ## :
                                                                                               ## Must
                                                                                               ## take
                                                                                               ## in
                                                                                               ## account
                                                                                               ## Composition
                                                                                               ## :
                                                                                               ## if
                                                                                               ## a
                                                                                               ## TransfEntity
                                                                                               ## has
                                                                                               ## in
                                                                                               ##
                                                                                               ## !
                                                                                               ## its
                                                                                               ## Directory
                                                                                               ## Part,
                                                                                               ## a
                                                                                               ## Transf,
                                                                                               ## this
                                                                                               ## means
                                                                                               ## that
                                                                                               ## it
                                                                                               ## is
                                                                                               ## Compound,
                                                                                               ##
                                                                                               ## !
                                                                                               ## Value
                                                                                               ## must
                                                                                               ## return
                                                                                               ## the
                                                                                               ## global
                                                                                               ## result


proc value*(this: IGESDataTransfEntity): GTrsf {.noSideEffect, importcpp: "Value",
    header: "IGESData_TransfEntity.hxx".}
type
  IGESDataTransfEntitybaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESData_TransfEntity::get_type_name(@)",
                            header: "IGESData_TransfEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_TransfEntity::get_type_descriptor(@)",
    header: "IGESData_TransfEntity.hxx".}
proc dynamicType*(this: IGESDataTransfEntity): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESData_TransfEntity.hxx".}
