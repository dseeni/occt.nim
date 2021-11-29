##  Created on: 2012-12-17
##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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

## ! The class Check provides a diagnostic tool for checking the validity
## ! of the single shape or couple of shapes.
## ! The shapes are checked on:
## ! - Topological validity;
## ! - Small edges;
## ! - Self-interference;
## ! - Validity for Boolean operation of certain type (for couple of shapes only).
## !
## ! The class provides two ways of checking shape(-s)
## ! 1. Constructors
## ! BRepAlgoAPI_Check aCh(theS);
## ! Standard_Boolean isValid = aCh.IsValid();
## ! 2. Methods SetData and Perform
## ! BRepAlgoAPI_Check aCh;
## ! aCh.SetData(theS1, theS2, BOPAlgo_FUSE, Standard_False);
## ! aCh.Perform();
## ! Standard_Boolean isValid = aCh.IsValid();
## !

type
  BRepAlgoAPI_Check* {.importcpp: "BRepAlgoAPI_Check",
                      header: "BRepAlgoAPI_Check.hxx", bycopy.} = object of BOPAlgoOptions ##
                                                                                    ## !
                                                                                    ## @name
                                                                                    ## Constructors
                                                                                    ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor.
                                                                                    ##
                                                                                    ## !
                                                                                    ## @name
                                                                                    ## Initializing
                                                                                    ## the
                                                                                    ## algorithm
                                                                                    ##
                                                                                    ## !
                                                                                    ## Initializes
                                                                                    ## the
                                                                                    ## algorithm
                                                                                    ## with
                                                                                    ## single
                                                                                    ## shape.
                                                                                    ##
                                                                                    ## !
                                                                                    ##
                                                                                    ## !
                                                                                    ## @param
                                                                                    ## theS
                                                                                    ## [in]
                                                                                    ## -
                                                                                    ## the
                                                                                    ## shape
                                                                                    ## to
                                                                                    ## check;
                                                                                    ##
                                                                                    ## !
                                                                                    ## @param
                                                                                    ## bTestSE
                                                                                    ## [in]
                                                                                    ## -
                                                                                    ## flag
                                                                                    ## which
                                                                                    ## specifies
                                                                                    ## whether
                                                                                    ## to
                                                                                    ## check
                                                                                    ## the
                                                                                    ## shape
                                                                                    ##
                                                                                    ## !
                                                                                    ## on
                                                                                    ## small
                                                                                    ## edges
                                                                                    ## or
                                                                                    ## not;
                                                                                    ## by
                                                                                    ## default
                                                                                    ## it
                                                                                    ## is
                                                                                    ## set
                                                                                    ## to
                                                                                    ## TRUE;
                                                                                    ##
                                                                                    ## !
                                                                                    ## @param
                                                                                    ## bTestSI
                                                                                    ## [in]
                                                                                    ## -
                                                                                    ## flag
                                                                                    ## which
                                                                                    ## specifies
                                                                                    ## whether
                                                                                    ## to
                                                                                    ## check
                                                                                    ## the
                                                                                    ## shape
                                                                                    ##
                                                                                    ## !
                                                                                    ## on
                                                                                    ## self-interference
                                                                                    ## or
                                                                                    ## not;
                                                                                    ## by
                                                                                    ## default
                                                                                    ## it
                                                                                    ## is
                                                                                    ## set
                                                                                    ## to
                                                                                    ## TRUE;
                                                                                    ##
                                                                                    ## !
                                                                                    ## @name
                                                                                    ## Performing
                                                                                    ## the
                                                                                    ## operation
                                                                                    ##
                                                                                    ## !
                                                                                    ## Performs
                                                                                    ## the
                                                                                    ## check.
                                                                                    ##
                                                                                    ## !
                                                                                    ## @name
                                                                                    ## Getting
                                                                                    ## the
                                                                                    ## results.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Shows
                                                                                    ## whether
                                                                                    ## shape(s)
                                                                                    ## valid
                                                                                    ## or
                                                                                    ## not.
                                                                                    ##
                                                                                    ## !
                                                                                    ## @name
                                                                                    ## Fields
                                                                                    ##
                                                                                    ## Inputs
    ## !< The first shape
    ## !< The second shape
    ## !< Flag defining whether to look for small edges in the given shapes or not
    ## !< Flag defining whether to check the input edges on self-interference or not
    ## !< Type of Boolean operation for which the validity of input shapes should be checked
    ##  Results
    ## !< Found faulty shapes


proc newBRepAlgoAPI_Check*(): BRepAlgoAPI_Check {.cdecl, constructor,
    importcpp: "BRepAlgoAPI_Check(@)", header: "BRepAlgoAPI_Check.hxx".}
proc destroyBRepAlgoAPI_Check*(this: var BRepAlgoAPI_Check) {.cdecl,
    importcpp: "#.~BRepAlgoAPI_Check()", header: "BRepAlgoAPI_Check.hxx".}
proc newBRepAlgoAPI_Check*(theS: TopoDS_Shape; bTestSE: bool = true;
                          bTestSI: bool = true): BRepAlgoAPI_Check {.cdecl,
    constructor, importcpp: "BRepAlgoAPI_Check(@)", header: "BRepAlgoAPI_Check.hxx".}
proc newBRepAlgoAPI_Check*(theS1: TopoDS_Shape; theS2: TopoDS_Shape;
                          theOp: BOPAlgoOperation = bOPAlgoUNKNOWN;
                          bTestSE: bool = true; bTestSI: bool = true): BRepAlgoAPI_Check {.
    cdecl, constructor, importcpp: "BRepAlgoAPI_Check(@)", header: "BRepAlgoAPI_Check.hxx".}
proc setData*(this: var BRepAlgoAPI_Check; theS: TopoDS_Shape; bTestSE: bool = true;
             bTestSI: bool = true) {.cdecl, importcpp: "SetData", header: "BRepAlgoAPI_Check.hxx".}
proc setData*(this: var BRepAlgoAPI_Check; theS1: TopoDS_Shape; theS2: TopoDS_Shape;
             theOp: BOPAlgoOperation = bOPAlgoUNKNOWN; bTestSE: bool = true;
             bTestSI: bool = true) {.cdecl, importcpp: "SetData", header: "BRepAlgoAPI_Check.hxx".}
proc perform*(this: var BRepAlgoAPI_Check) {.cdecl, importcpp: "Perform", header: "BRepAlgoAPI_Check.hxx".}
proc isValid*(this: var BRepAlgoAPI_Check): bool {.cdecl, importcpp: "IsValid",
    header: "BRepAlgoAPI_Check.hxx".}
proc result*(this: var BRepAlgoAPI_Check): BOPAlgoListOfCheckResult {.cdecl,
    importcpp: "Result", header: "BRepAlgoAPI_Check.hxx".}