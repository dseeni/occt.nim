##  Copyright (c) 2017 OPEN CASCADE SAS
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

## ! The mode specifying how multiple active Selection Modes should be treated during activation of new one.

type
  AIS_SelectionModesConcurrency* {.size: sizeof(cint),
                                  importcpp: "AIS_SelectionModesConcurrency",
                                  header: "AIS_SelectionModesConcurrency.hxx".} = enum
    AIS_SelectionModesConcurrencySingle, ## !< only one selection mode can be activated at the same moment - previously activated should be deactivated
    AIS_SelectionModesConcurrencyGlobalOrLocal, ## !< either Global (AIS_InteractiveObject::GlobalSelectionMode() or Local (multiple) selection modes can be active at the same moment
    AIS_SelectionModesConcurrencyMultiple ## !< any combination of selection modes can be activated


