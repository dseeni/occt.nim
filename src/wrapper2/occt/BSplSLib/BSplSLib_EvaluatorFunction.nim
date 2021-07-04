##  Created on: 1997-05-12
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

# when not defined(_Standard_Integer_HeaderFile):
#   import
#     ../Standard/Standard_Integer
# 
# when not defined(_Standard_Real_HeaderFile):
#   import
    ../Standard/Standard_Real

when not defined(_Standard_PrimitiveTypes_HeaderFile):
  import
    ../Standard/Standard_PrimitiveTypes

##  Histroy - C function pointer converted to a virtual class
##  in order to get rid of usage of static functions and static data

type
  BSplSLib_EvaluatorFunction* {.importcpp: "BSplSLib_EvaluatorFunction",
                               header: "BSplSLib_EvaluatorFunction.hxx", bycopy.} = object ##
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


proc constructBSplSLib_EvaluatorFunction*(): BSplSLib_EvaluatorFunction {.
    constructor, importcpp: "BSplSLib_EvaluatorFunction(@)",
    header: "BSplSLib_EvaluatorFunction.hxx".}
proc destroyBSplSLib_EvaluatorFunction*(this: var BSplSLib_EvaluatorFunction) {.
    importcpp: "#.~BSplSLib_EvaluatorFunction()",
    header: "BSplSLib_EvaluatorFunction.hxx".}
proc Evaluate*(this: BSplSLib_EvaluatorFunction;
              theDerivativeRequest: Standard_Integer;
              theUParameter: Standard_Real; theVParameter: Standard_Real;
              theResult: var Standard_Real; theErrorCode: var Standard_Integer) {.
    noSideEffect, importcpp: "Evaluate", header: "BSplSLib_EvaluatorFunction.hxx".}
proc `()`*(this: BSplSLib_EvaluatorFunction;
          theDerivativeRequest: Standard_Integer; theUParameter: Standard_Real;
          theVParameter: Standard_Real; theResult: var Standard_Real;
          theErrorCode: var Standard_Integer) {.noSideEffect, importcpp: "#(@)",
    header: "BSplSLib_EvaluatorFunction.hxx".}
