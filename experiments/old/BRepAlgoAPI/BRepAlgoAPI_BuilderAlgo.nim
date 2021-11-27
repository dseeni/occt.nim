##  Created by: Peter KURNEV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! The class contains API level of the General Fuse algorithm.<br>
## !
## ! Additionally to the options defined in the base class, the algorithm has
## ! the following options:<br>
## ! - *Safe processing mode* - allows to avoid modification of the input
## !                            shapes during the operation (by default it is off);
## ! - *Gluing options* - allows to speed up the calculation of the intersections
## !                      on the special cases, in which some sub-shapes are coinciding.
## ! - *Disabling the check for inverted solids* - Disables/Enables the check of the input solids
## !                          for inverted status (holes in the space). The default value is TRUE,
## !                          i.e. the check is performed. Setting this flag to FALSE for inverted solids,
## !                          most likely will lead to incorrect results.
## ! - *Disabling history collection* - allows disabling the collection of the history
## !                                    of shapes modifications during the operation.
## !
## ! It returns the following Error statuses:<br>
## ! - 0 - in case of success;<br>
## ! - *BOPAlgo_AlertTooFewArguments* - in case there are no enough arguments to perform the operation;<br>
## ! - *BOPAlgo_AlertIntersectionFailed* - in case the intersection of the arguments has failed;<br>
## ! - *BOPAlgo_AlertBuilderFailed* - in case building of the result shape has failed.<br>
## !
## ! Warnings statuses from underlying DS Filler and Builder algorithms
## ! are collected in the report.
## !
## ! The class provides possibility to simplify the resulting shape by unification
## ! of the tangential edges and faces. It is performed by the method *SimplifyResult*.
## ! See description of this method for more details.
## !

type
  BRepAlgoAPI_BuilderAlgo* {.importcpp: "BRepAlgoAPI_BuilderAlgo",
                            header: "BRepAlgoAPI_BuilderAlgo.hxx", bycopy.} = object of BRepAlgoAPI_Algo ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Constructors
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Setting/Getting
                                                                                                  ## data
                                                                                                  ## for
                                                                                                  ## the
                                                                                                  ## algorithm
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Sets
                                                                                                  ## the
                                                                                                  ## arguments
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Setting
                                                                                                  ## options
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Sets
                                                                                                  ## the
                                                                                                  ## flag
                                                                                                  ## that
                                                                                                  ## defines
                                                                                                  ## the
                                                                                                  ## mode
                                                                                                  ## of
                                                                                                  ## treatment.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## In
                                                                                                  ## non-destructive
                                                                                                  ## mode
                                                                                                  ## the
                                                                                                  ## argument
                                                                                                  ## shapes
                                                                                                  ## are
                                                                                                  ## not
                                                                                                  ## modified.
                                                                                                  ## Instead
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## a
                                                                                                  ## copy
                                                                                                  ## of
                                                                                                  ## a
                                                                                                  ## sub-shape
                                                                                                  ## is
                                                                                                  ## created
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ## result
                                                                                                  ## if
                                                                                                  ## it
                                                                                                  ## is
                                                                                                  ## needed
                                                                                                  ## to
                                                                                                  ## be
                                                                                                  ## updated.
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
                                                                                                  ## algorithm
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Result
                                                                                                  ## simplification
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Simplification
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## result
                                                                                                  ## shape
                                                                                                  ## is
                                                                                                  ## performed
                                                                                                  ## by
                                                                                                  ## the
                                                                                                  ## means
                                                                                                  ## of
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## *ShapeUpgrade_UnifySameDomain*
                                                                                                  ## algorithm.
                                                                                                  ## The
                                                                                                  ## result
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## operation
                                                                                                  ## will
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## be
                                                                                                  ## overwritten
                                                                                                  ## with
                                                                                                  ## the
                                                                                                  ## simplified
                                                                                                  ## result.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## simplification
                                                                                                  ## is
                                                                                                  ## performed
                                                                                                  ## without
                                                                                                  ## creation
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## Internal
                                                                                                  ## shapes,
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## i.e.
                                                                                                  ## shapes
                                                                                                  ## connections
                                                                                                  ## will
                                                                                                  ## never
                                                                                                  ## be
                                                                                                  ## broken.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Simplification
                                                                                                  ## is
                                                                                                  ## performed
                                                                                                  ## on
                                                                                                  ## the
                                                                                                  ## whole
                                                                                                  ## result
                                                                                                  ## shape.
                                                                                                  ## Thus,
                                                                                                  ## if
                                                                                                  ## the
                                                                                                  ## input
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## shapes
                                                                                                  ## contained
                                                                                                  ## connected
                                                                                                  ## tangent
                                                                                                  ## edges
                                                                                                  ## or
                                                                                                  ## faces
                                                                                                  ## unmodified
                                                                                                  ## during
                                                                                                  ## the
                                                                                                  ## operation
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## they
                                                                                                  ## will
                                                                                                  ## also
                                                                                                  ## be
                                                                                                  ## unified.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## After
                                                                                                  ## simplification,
                                                                                                  ## the
                                                                                                  ## History
                                                                                                  ## of
                                                                                                  ## result
                                                                                                  ## simplification
                                                                                                  ## is
                                                                                                  ## merged
                                                                                                  ## into
                                                                                                  ## the
                                                                                                  ## main
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## history
                                                                                                  ## of
                                                                                                  ## operation.
                                                                                                  ## So,
                                                                                                  ## it
                                                                                                  ## is
                                                                                                  ## taken
                                                                                                  ## into
                                                                                                  ## account
                                                                                                  ## when
                                                                                                  ## asking
                                                                                                  ## for
                                                                                                  ## Modified,
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Generated
                                                                                                  ## and
                                                                                                  ## Deleted
                                                                                                  ## shapes.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Some
                                                                                                  ## options
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## main
                                                                                                  ## operation
                                                                                                  ## are
                                                                                                  ## passed
                                                                                                  ## into
                                                                                                  ## the
                                                                                                  ## Unifier:
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## -
                                                                                                  ## Fuzzy
                                                                                                  ## tolerance
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## operation
                                                                                                  ## is
                                                                                                  ## given
                                                                                                  ## to
                                                                                                  ## the
                                                                                                  ## Unifier
                                                                                                  ## as
                                                                                                  ## the
                                                                                                  ## linear
                                                                                                  ## tolerance.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## -
                                                                                                  ## Non
                                                                                                  ## destructive
                                                                                                  ## mode
                                                                                                  ## here
                                                                                                  ## controls
                                                                                                  ## the
                                                                                                  ## safe
                                                                                                  ## input
                                                                                                  ## mode
                                                                                                  ## in
                                                                                                  ## Unifier.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theUnifyEdges
                                                                                                  ## Controls
                                                                                                  ## the
                                                                                                  ## edges
                                                                                                  ## unification.
                                                                                                  ## TRUE
                                                                                                  ## by
                                                                                                  ## default.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theUnifyFaces
                                                                                                  ## Controls
                                                                                                  ## the
                                                                                                  ## faces
                                                                                                  ## unification.
                                                                                                  ## TRUE
                                                                                                  ## by
                                                                                                  ## default.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theAngularTol
                                                                                                  ## Angular
                                                                                                  ## criteria
                                                                                                  ## for
                                                                                                  ## tangency
                                                                                                  ## of
                                                                                                  ## edges
                                                                                                  ## and
                                                                                                  ## faces.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Precision::Angular()
                                                                                                  ## by
                                                                                                  ## default.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## History
                                                                                                  ## support
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## the
                                                                                                  ## shapes
                                                                                                  ## modified
                                                                                                  ## from
                                                                                                  ## the
                                                                                                  ## shape
                                                                                                  ## <theS>.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## If
                                                                                                  ## any,
                                                                                                  ## the
                                                                                                  ## list
                                                                                                  ## will
                                                                                                  ## contain
                                                                                                  ## only
                                                                                                  ## those
                                                                                                  ## splits
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## given
                                                                                                  ## shape,
                                                                                                  ## contained
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ## result.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Enabling/Disabling
                                                                                                  ## the
                                                                                                  ## history
                                                                                                  ## collection.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Allows
                                                                                                  ## disabling
                                                                                                  ## the
                                                                                                  ## history
                                                                                                  ## collection
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Getting
                                                                                                  ## the
                                                                                                  ## section
                                                                                                  ## edges
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## list
                                                                                                  ## of
                                                                                                  ## section
                                                                                                  ## edges.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## edges
                                                                                                  ## represent
                                                                                                  ## the
                                                                                                  ## result
                                                                                                  ## of
                                                                                                  ## intersection
                                                                                                  ## between
                                                                                                  ## arguments
                                                                                                  ## of
                                                                                                  ## operation.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Getting
                                                                                                  ## tools
                                                                                                  ## performing
                                                                                                  ## the
                                                                                                  ## job
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## the
                                                                                                  ## Intersection
                                                                                                  ## tool
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Setting
                                                                                                  ## options
                                                                                                  ## to
                                                                                                  ## the
                                                                                                  ## Intersection
                                                                                                  ## tool
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Sets
                                                                                                  ## options
                                                                                                  ## (available
                                                                                                  ## in
                                                                                                  ## child
                                                                                                  ## classes)
                                                                                                  ## for
                                                                                                  ## the
                                                                                                  ## intersection
                                                                                                  ## tool.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Here
                                                                                                  ## it
                                                                                                  ## does
                                                                                                  ## nothing.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Protected
                                                                                                  ## methods
                                                                                                  ## for
                                                                                                  ## shapes
                                                                                                  ## intersection
                                                                                                  ## and
                                                                                                  ## building
                                                                                                  ## result
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Intersects
                                                                                                  ## the
                                                                                                  ## given
                                                                                                  ## shapes
                                                                                                  ## with
                                                                                                  ## the
                                                                                                  ## intersection
                                                                                                  ## tool
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Clearing
                                                                                                  ## the
                                                                                                  ## contents
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## algorithm
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Clears
                                                                                                  ## the
                                                                                                  ## algorithm
                                                                                                  ## from
                                                                                                  ## previous
                                                                                                  ## runs
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Fields
                                                                                                  ##
                                                                                                  ## Inputs
    ## !< Arguments of the operation
    ##  Options
    ## !< Non-destructive mode management
    ## !< Gluing mode management
    ## !< Check for inverted solids management
    ## !< Controls the history collection
    ##  Tools
    ## !< Flag to control whether the intersection
    ## ! of arguments should be performed or not
    ## !< Intersection tool performs intersection of the
    ## ! argument shapes.
    ## !< Building tool performs construction of the result
    ## ! basing on the results of intersection
    ## !< General History tool, containing all History of
    ## ! shapes modifications during the operation
    ## ! (including result simplification)
    ## !< History of result shape simplification


proc `new`*(this: var BRepAlgoAPI_BuilderAlgo; theSize: csize_t): pointer {.
    importcpp: "BRepAlgoAPI_BuilderAlgo::operator new",
    header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc `delete`*(this: var BRepAlgoAPI_BuilderAlgo; theAddress: pointer) {.
    importcpp: "BRepAlgoAPI_BuilderAlgo::operator delete",
    header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc `new[]`*(this: var BRepAlgoAPI_BuilderAlgo; theSize: csize_t): pointer {.
    importcpp: "BRepAlgoAPI_BuilderAlgo::operator new[]",
    header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc `delete[]`*(this: var BRepAlgoAPI_BuilderAlgo; theAddress: pointer) {.
    importcpp: "BRepAlgoAPI_BuilderAlgo::operator delete[]",
    header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc `new`*(this: var BRepAlgoAPI_BuilderAlgo; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepAlgoAPI_BuilderAlgo::operator new",
    header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc `delete`*(this: var BRepAlgoAPI_BuilderAlgo; a2: pointer; a3: pointer) {.
    importcpp: "BRepAlgoAPI_BuilderAlgo::operator delete",
    header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc constructBRepAlgoAPI_BuilderAlgo*(): BRepAlgoAPI_BuilderAlgo {.constructor,
    importcpp: "BRepAlgoAPI_BuilderAlgo(@)", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc destroyBRepAlgoAPI_BuilderAlgo*(this: var BRepAlgoAPI_BuilderAlgo) {.
    importcpp: "#.~BRepAlgoAPI_BuilderAlgo()",
    header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc constructBRepAlgoAPI_BuilderAlgo*(thePF: BOPAlgoPaveFiller): BRepAlgoAPI_BuilderAlgo {.
    constructor, importcpp: "BRepAlgoAPI_BuilderAlgo(@)",
    header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc setArguments*(this: var BRepAlgoAPI_BuilderAlgo; theLS: TopToolsListOfShape) {.
    importcpp: "SetArguments", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc arguments*(this: BRepAlgoAPI_BuilderAlgo): TopToolsListOfShape {.noSideEffect,
    importcpp: "Arguments", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc setNonDestructive*(this: var BRepAlgoAPI_BuilderAlgo; theFlag: StandardBoolean) {.
    importcpp: "SetNonDestructive", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc nonDestructive*(this: BRepAlgoAPI_BuilderAlgo): StandardBoolean {.noSideEffect,
    importcpp: "NonDestructive", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc setGlue*(this: var BRepAlgoAPI_BuilderAlgo; theGlue: BOPAlgoGlueEnum) {.
    importcpp: "SetGlue", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc glue*(this: BRepAlgoAPI_BuilderAlgo): BOPAlgoGlueEnum {.noSideEffect,
    importcpp: "Glue", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc setCheckInverted*(this: var BRepAlgoAPI_BuilderAlgo; theCheck: StandardBoolean) {.
    importcpp: "SetCheckInverted", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc checkInverted*(this: BRepAlgoAPI_BuilderAlgo): StandardBoolean {.noSideEffect,
    importcpp: "CheckInverted", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc build*(this: var BRepAlgoAPI_BuilderAlgo) {.importcpp: "Build",
    header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc simplifyResult*(this: var BRepAlgoAPI_BuilderAlgo;
                    theUnifyEdges: StandardBoolean = true;
                    theUnifyFaces: StandardBoolean = true;
                    theAngularTol: StandardReal = angular()) {.
    importcpp: "SimplifyResult", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc modified*(this: var BRepAlgoAPI_BuilderAlgo; theS: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc generated*(this: var BRepAlgoAPI_BuilderAlgo; theS: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc isDeleted*(this: var BRepAlgoAPI_BuilderAlgo; `aS`: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc hasModified*(this: BRepAlgoAPI_BuilderAlgo): StandardBoolean {.noSideEffect,
    importcpp: "HasModified", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc hasGenerated*(this: BRepAlgoAPI_BuilderAlgo): StandardBoolean {.noSideEffect,
    importcpp: "HasGenerated", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc hasDeleted*(this: BRepAlgoAPI_BuilderAlgo): StandardBoolean {.noSideEffect,
    importcpp: "HasDeleted", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc setToFillHistory*(this: var BRepAlgoAPI_BuilderAlgo;
                      theHistFlag: StandardBoolean) {.
    importcpp: "SetToFillHistory", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc hasHistory*(this: BRepAlgoAPI_BuilderAlgo): StandardBoolean {.noSideEffect,
    importcpp: "HasHistory", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc sectionEdges*(this: var BRepAlgoAPI_BuilderAlgo): TopToolsListOfShape {.
    importcpp: "SectionEdges", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc dSFiller*(this: BRepAlgoAPI_BuilderAlgo): BOPAlgoPPaveFiller {.noSideEffect,
    importcpp: "DSFiller", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc builder*(this: BRepAlgoAPI_BuilderAlgo): BOPAlgoPBuilder {.noSideEffect,
    importcpp: "Builder", header: "BRepAlgoAPI_BuilderAlgo.hxx".}
proc history*(this: BRepAlgoAPI_BuilderAlgo): Handle[BRepToolsHistory] {.
    noSideEffect, importcpp: "History", header: "BRepAlgoAPI_BuilderAlgo.hxx".}