##  Created on: 1995-08-23
##  Created by: Xavier BENVENISTE
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

type
  ConvertCosAndSinEvalFunction* = proc (a1: cfloat; a2: cint; a3: TColgpArray1OfPnt2d;
                                     a4: TColStdArray1OfReal;
                                     a5: ptr TColStdArray1OfInteger;
                                     result: array[2, cfloat]): void {.cdecl.}