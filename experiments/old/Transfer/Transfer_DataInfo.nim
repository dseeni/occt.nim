##  Created on: 1996-09-04
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
type
  TransferDataInfo* {.importcpp: "Transfer_DataInfo",
                     header: "Transfer_DataInfo.hxx", bycopy.} = object


proc `new`*(this: var TransferDataInfo; theSize: csize_t): pointer {.
    importcpp: "Transfer_DataInfo::operator new", header: "Transfer_DataInfo.hxx".}
proc `delete`*(this: var TransferDataInfo; theAddress: pointer) {.
    importcpp: "Transfer_DataInfo::operator delete",
    header: "Transfer_DataInfo.hxx".}
proc `new[]`*(this: var TransferDataInfo; theSize: csize_t): pointer {.
    importcpp: "Transfer_DataInfo::operator new[]",
    header: "Transfer_DataInfo.hxx".}
proc `delete[]`*(this: var TransferDataInfo; theAddress: pointer) {.
    importcpp: "Transfer_DataInfo::operator delete[]",
    header: "Transfer_DataInfo.hxx".}
proc `new`*(this: var TransferDataInfo; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Transfer_DataInfo::operator new", header: "Transfer_DataInfo.hxx".}
proc `delete`*(this: var TransferDataInfo; a2: pointer; a3: pointer) {.
    importcpp: "Transfer_DataInfo::operator delete",
    header: "Transfer_DataInfo.hxx".}
#[ proc `type`*(ent: Handle[StandardTransient]): Handle[StandardType] {.
    importcpp: "Transfer_DataInfo::Type(@)", header: "Transfer_DataInfo.hxx".} ]#
proc typeName*(ent: Handle[StandardTransient]): StandardCString {.
    importcpp: "Transfer_DataInfo::TypeName(@)", header: "Transfer_DataInfo.hxx".}