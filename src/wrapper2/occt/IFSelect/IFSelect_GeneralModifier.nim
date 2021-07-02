##  Created on: 1993-10-19
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of IFSelect_Selection"
discard "forward decl of IFSelect_Dispatch"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_GeneralModifier"
discard "forward decl of IFSelect_GeneralModifier"
type
  HandleIFSelectGeneralModifier* = Handle[IFSelectGeneralModifier]

## ! This class gives a frame for Actions which modify the effect
## ! of a Dispatch, i.e. :
## ! By Selections and Dispatches, an original Model can be
## ! splitted into one or more "target" Models : these Models
## ! contain Entities copied from the original one (that is, a
## ! part of it). Basically, these dispatched Entities are copied
## ! as identical to their original counterparts. Also the copied
## ! Models reproduce the Header of the original one.
## !
## ! Modifiers allow to change this copied content : this is the
## ! way to be used for any kind of alterations, adaptations ...
## ! They are exploited by a ModelCopier, which firstly performs
## ! the copy operation described by Dispatches, then invokes the
## ! Modifiers to work on the result.
## !
## ! Each GeneralModifier can be attached to :
## ! - all the Models produced
## ! - a Dispatch (it will be applied to all the Models obtained
## ! from this Dispatch) designated by its Ident in a ShareOut
## ! - in addition, to a Selection (facultative) : this adds a
## ! criterium, the Modifier is invoked on a produced Model only
## ! if this Model contains an Entity copied from one of the
## ! Entities designated by this Selection.
## ! (for special Modifiers from IFAdapt, while they must work on
## ! definite Entities, this Selection is mandatory to run)
## !
## ! Remark : this class has no action attached, it only provides
## ! a frame to work on criteria. Then, sub-classes will define
## ! their kind of action, which can be applied at a precise step
## ! of the production of a File : see Modifier, and in the
## ! package IFAdapt, EntityModifier and EntityCopier

type
  IFSelectGeneralModifier* {.importcpp: "IFSelect_GeneralModifier",
                            header: "IFSelect_GeneralModifier.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## True
                                                                                                    ## if
                                                                                                    ## this
                                                                                                    ## modifier
                                                                                                    ## may
                                                                                                    ## change
                                                                                                    ## the
                                                                                                    ## graph
                                                                                                    ## of
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## dependences
                                                                                                    ## (aknowledged
                                                                                                    ## at
                                                                                                    ## creation
                                                                                                    ## time)
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Sets
                                                                                                    ## the
                                                                                                    ## Modifier
                                                                                                    ## criteria
                                                                                                    ## to
                                                                                                    ## default
                                                                                                    ## Values
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## (i.e.
                                                                                                    ## "always
                                                                                                    ## applies")
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## <maychangegraph>
                                                                                                    ## must
                                                                                                    ## be
                                                                                                    ## provided
                                                                                                    ## at
                                                                                                    ## creation
                                                                                                    ## time,
                                                                                                    ## to
                                                                                                    ## :
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## -
                                                                                                    ## False
                                                                                                    ## if
                                                                                                    ## this
                                                                                                    ## GeneralModifier
                                                                                                    ## surely
                                                                                                    ## lets
                                                                                                    ## the
                                                                                                    ## graph
                                                                                                    ## of
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## dependencies
                                                                                                    ## unchanged
                                                                                                    ## (NO
                                                                                                    ## edition
                                                                                                    ## of
                                                                                                    ## any
                                                                                                    ## reference,
                                                                                                    ## BUT
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## also
                                                                                                    ## NO
                                                                                                    ## entity
                                                                                                    ## added
                                                                                                    ## or
                                                                                                    ## replaced
                                                                                                    ## or
                                                                                                    ## removed)
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## -
                                                                                                    ## True
                                                                                                    ## if
                                                                                                    ## there
                                                                                                    ## is
                                                                                                    ## a
                                                                                                    ## possibility
                                                                                                    ## of
                                                                                                    ## changing
                                                                                                    ## the
                                                                                                    ## graph
                                                                                                    ## of
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## dependencies
                                                                                                    ## when
                                                                                                    ## this
                                                                                                    ## modifier
                                                                                                    ## is
                                                                                                    ## applied


proc mayChangeGraph*(this: IFSelectGeneralModifier): StandardBoolean {.noSideEffect,
    importcpp: "MayChangeGraph", header: "IFSelect_GeneralModifier.hxx".}
proc setDispatch*(this: var IFSelectGeneralModifier; disp: Handle[IFSelectDispatch]) {.
    importcpp: "SetDispatch", header: "IFSelect_GeneralModifier.hxx".}
proc dispatch*(this: IFSelectGeneralModifier): Handle[IFSelectDispatch] {.
    noSideEffect, importcpp: "Dispatch", header: "IFSelect_GeneralModifier.hxx".}
proc applies*(this: IFSelectGeneralModifier; disp: Handle[IFSelectDispatch]): StandardBoolean {.
    noSideEffect, importcpp: "Applies", header: "IFSelect_GeneralModifier.hxx".}
proc setSelection*(this: var IFSelectGeneralModifier; sel: Handle[IFSelectSelection]) {.
    importcpp: "SetSelection", header: "IFSelect_GeneralModifier.hxx".}
proc resetSelection*(this: var IFSelectGeneralModifier) {.
    importcpp: "ResetSelection", header: "IFSelect_GeneralModifier.hxx".}
proc hasSelection*(this: IFSelectGeneralModifier): StandardBoolean {.noSideEffect,
    importcpp: "HasSelection", header: "IFSelect_GeneralModifier.hxx".}
proc selection*(this: IFSelectGeneralModifier): Handle[IFSelectSelection] {.
    noSideEffect, importcpp: "Selection", header: "IFSelect_GeneralModifier.hxx".}
proc label*(this: IFSelectGeneralModifier): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_GeneralModifier.hxx".}
type
  IFSelectGeneralModifierbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IFSelect_GeneralModifier::get_type_name(@)",
                            header: "IFSelect_GeneralModifier.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_GeneralModifier::get_type_descriptor(@)",
    header: "IFSelect_GeneralModifier.hxx".}
proc dynamicType*(this: IFSelectGeneralModifier): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_GeneralModifier.hxx".}

