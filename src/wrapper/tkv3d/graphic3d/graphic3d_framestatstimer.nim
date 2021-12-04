##  Copyright (c) 2018 OPEN CASCADE SAS
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

## ! Timers for collecting frame performance statistics.

type
  Graphic3dFrameStatsTimer* {.size: sizeof(cint),
                             importcpp: "Graphic3d_FrameStatsTimer",
                             header: "Graphic3d_FrameStatsTimer.hxx".} = enum
    graphic3dFrameStatsTimerElapsedFrame, graphic3dFrameStatsTimerCpuFrame,
    graphic3dFrameStatsTimerCpuCulling, graphic3dFrameStatsTimerCpuPicking,
    graphic3dFrameStatsTimerCpuDynamics


const
  graphic3dFrameStatsTimerNB* = graphic3dFrameStatsTimerCpuDynamics.int + 1