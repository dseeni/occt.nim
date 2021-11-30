##  Created on: 1992-02-03
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

discard "forward decl of Transfer_TransferDeadLoop"
#type
#  HandleTransferTransferDeadLoop* = Handle[TransferTransferDeadLoop]
#
#when not defined(noException) and not defined(noTransferTransferDeadLoop):
#  template transferTransferDeadLoopRaiseIf*(condition, message: untyped): void =
#    if condition:
#      proc transferTransferDeadLoop*(a1: Message): Throw {.cdecl,
#          importcpp: "Transfer_TransferDeadLoop(@)", header: "Transfer_TransferDeadLoop.hxx".}
#
#else:
#  discard