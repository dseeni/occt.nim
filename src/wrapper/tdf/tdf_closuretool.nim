import tdf_types
import ../standard/standard_types



##  Created by: DAUTRY Philippe
##  Copyright (c) 1998-1999 Matra Datavision
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



proc closure*(aDataSet: Handle[TDF_DataSet]) {.cdecl,
    importcpp: "TDF_ClosureTool::Closure(@)", header: "TDF_ClosureTool.hxx".}
proc closure*(aDataSet: Handle[TDF_DataSet]; aFilter: TDF_IDFilter;
             aMode: TDF_ClosureMode) {.cdecl,
                                     importcpp: "TDF_ClosureTool::Closure(@)",
                                     header: "TDF_ClosureTool.hxx".}
proc closure*(aLabel: TDF_Label; aLabMap: var TDF_LabelMap;
             anAttMap: var TDF_AttributeMap; aFilter: TDF_IDFilter;
             aMode: TDF_ClosureMode) {.cdecl,
                                     importcpp: "TDF_ClosureTool::Closure(@)",
                                     header: "TDF_ClosureTool.hxx".}
