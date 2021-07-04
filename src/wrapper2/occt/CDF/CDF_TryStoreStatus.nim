##  Created on: 1997-08-07
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1997-1999 Matra Datavision
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

type
  CDF_TryStoreStatus* {.size: sizeof(cint), importcpp: "CDF_TryStoreStatus",
                       header: "CDF_TryStoreStatus.hxx".} = enum
    CDF_TS_OK, CDF_TS_NoCurrentDocument, CDF_TS_NoDriver,
    CDF_TS_NoSubComponentDriver

