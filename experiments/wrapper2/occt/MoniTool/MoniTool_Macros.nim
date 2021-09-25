##  Created on: 1999-11-22
##  Created by: data exchange team
##  Copyright (c) 1999-1999 Matra Datavision
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
##  Taken from Interface_Macros to avoid cyclic dependency from Shape Healing

## !!!Ignored construct:  # MoniTool_Macros_HeaderFile [NewLine] # MoniTool_Macros_HeaderFile [NewLine]  Interface General purpose Macros
##  Their use is not required, but it gets some program parts easier :
##  DownCasting, with or without Declaration   DownCasting to a "Handle" already declared # GetCasted ( atype , start ) opencascade :: handle < atype > [end of template] :: DownCast ( start ) [NewLine]   DownCasting with Declaration :
##   - Declares the variable result
##   - then performs DownCasting
##   - after it, result can be used as a new variable # DeclareAndCast ( atype , result , start ) opencascade :: handle < atype > [end of template] result = opencascade :: handle < atype > [end of template] :: DownCast ( start ) [NewLine] # FastCast ( atype , result , start ) opencascade :: handle < atype > [end of template] result ;
## Error: expected ';'!!!

## !!!Ignored construct:  result = ( * ( opencascade :: handle < atype > [end of template] * ) ) & start [NewLine] # [NewLine]
## Error: identifier expected, but got: *!!!

