##  Created on: 1997-03-03
##  Created by: Xavier BENVENISTE
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

##  This is a one dimensional function
##  NOTE: StartEnd[2]
##  Serves to multiply a given vectorial BSpline by a function
##  History - C function pointer converted to a virtual class
##  in order to get rid of usage of static functions and static data

type
  BSplCLibEvaluatorFunction* {.importcpp: "BSplCLib_EvaluatorFunction",
                              header: "BSplCLib_EvaluatorFunction.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Empty
                                                                                     ## constructor
                                                                                     ##
                                                                                     ## !
                                                                                     ## Copy
                                                                                     ## constructor
                                                                                     ## is
                                                                                     ## declared
                                                                                     ## private
                                                                                     ## to
                                                                                     ## forbid
                                                                                     ## copying


proc constructBSplCLibEvaluatorFunction*(): BSplCLibEvaluatorFunction {.
    constructor, importcpp: "BSplCLib_EvaluatorFunction(@)",
    header: "BSplCLib_EvaluatorFunction.hxx".}
proc destroyBSplCLibEvaluatorFunction*(this: var BSplCLibEvaluatorFunction) {.
    importcpp: "#.~BSplCLib_EvaluatorFunction()",
    header: "BSplCLib_EvaluatorFunction.hxx".}
proc evaluate*(this: BSplCLibEvaluatorFunction; theDerivativeRequest: cint;
              theStartEnd: ptr cfloat; theParameter: cfloat; theResult: var cfloat;
              theErrorCode: var cint) {.noSideEffect, importcpp: "Evaluate",
                                     header: "BSplCLib_EvaluatorFunction.hxx".}
proc `()`*(this: BSplCLibEvaluatorFunction; theDerivativeRequest: cint;
          theStartEnd: ptr cfloat; theParameter: cfloat; theResult: var cfloat;
          theErrorCode: var cint) {.noSideEffect, importcpp: "#(@)",
                                 header: "BSplCLib_EvaluatorFunction.hxx".}
























