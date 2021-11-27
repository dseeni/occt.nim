##  Created on: 1991-09-06
##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
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

## !!!Ignored construct:  # _Graphic3d_Group_HeaderFile [NewLine] # _Graphic3d_Group_HeaderFile [NewLine] # < Graphic3d_BndBox4f . hxx > [NewLine] # < Graphic3d_AspectLine3d . hxx > [NewLine] # < Graphic3d_AspectFillArea3d . hxx > [NewLine] # < Graphic3d_AspectText3d . hxx > [NewLine] # < Graphic3d_AspectMarker3d . hxx > [NewLine] # < Graphic3d_MapOfAspectsToAspects . hxx > [NewLine] # < Standard_CString . hxx > [NewLine] # < Graphic3d_Vertex . hxx > [NewLine] # < Graphic3d_TextPath . hxx > [NewLine] # < Graphic3d_HorizontalTextAlignment . hxx > [NewLine] # < Graphic3d_VerticalTextAlignment . hxx > [NewLine] # < Graphic3d_TypeOfPrimitiveArray . hxx > [NewLine] # < Graphic3d_IndexBuffer . hxx > [NewLine] # < Graphic3d_Buffer . hxx > [NewLine] # < Graphic3d_BoundBuffer . hxx > [NewLine] # < gp_Ax2 . hxx > [NewLine] # < TCollection_ExtendedString . hxx > [NewLine] class Graphic3d_Structure ;
## Error: expected ';'!!!

discard "forward decl of Graphic3d_ArrayOfPrimitives"
discard "forward decl of Graphic3d_Text"
type
  Graphic3dGroup* {.importcpp: "Graphic3d_Group", header: "Graphic3d_Group.hxx",
                   bycopy.} = object of StandardTransient ## ! Supress all primitives and attributes of <me>.
                                                     ## ! To clear group without update in Graphic3d_StructureManager
                                                     ## ! pass Standard_False as <theUpdateStructureMgr>. This
                                                     ## ! used on context and viewer destruction, when the pointer
                                                     ## ! to structure manager in Graphic3d_Structure could be
                                                     ## ! already released (pointers are used here to avoid handle
                                                     ## ! cross-reference);
                                                     ## ! Return fill area aspect.
                                                     ## ! sets the stencil test to theIsEnabled state;
                                                     ## ! Creates the string <AText> at position <APoint>.
                                                     ## ! The 3D point of attachment is projected. The text is
                                                     ## ! written in the plane of projection.
                                                     ## ! The attributes are given with respect to the plane of
                                                     ## ! projection.
                                                     ## ! AHeight : Height of text.
                                                     ## ! (Relative to the Normalized Projection
                                                     ## ! Coordinates (NPC) Space).
                                                     ## ! AAngle  : Orientation of the text
                                                     ## ! (with respect to the horizontal).
                                                     ## ! Creates a group in the structure <AStructure>.
    standardType* {.importc: "Standard_Type".}: Handle
    graphic3dAspects* {.importc: "Graphic3d_Aspects".}: Handle
    graphic3dStructure* {.importc: "Graphic3d_Structure".}: Handle
    ## !< pointer to the parent structure
    ## !< bounding box
    ## !< flag indicating closed volume
    ## !< flag indicating that this group contains face primitives

  Graphic3dGroupbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_Group::get_type_name(@)",
                            header: "Graphic3d_Group.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

proc clear*(this: var Graphic3dGroup; theUpdateStructureMgr: bool = true) {.
    importcpp: "Clear", header: "Graphic3d_Group.hxx".}
proc destroyGraphic3dGroup*(this: var Graphic3dGroup) {.
    importcpp: "#.~Graphic3d_Group()", header: "Graphic3d_Group.hxx".}
proc remove*(this: var Graphic3dGroup) {.importcpp: "Remove",
                                     header: "Graphic3d_Group.hxx".}
## !!!Ignored construct:  Aspects ( ) const = 0 ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  ! Modifies the context for all the face primitives of the group. virtual void SetGroupPrimitivesAspect ( const Handle ( Graphic3d_Aspects ) & theAspect ) = 0 ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Modifies the current context of the group to give another aspect for all the primitives created after this call in the group. virtual void SetPrimitivesAspect ( const Handle ( Graphic3d_Aspects ) & theAspect ) = 0 ;
## Error: token expected: ) but got: &!!!

proc synchronizeAspects*(this: var Graphic3dGroup) {.
    importcpp: "SynchronizeAspects", header: "Graphic3d_Group.hxx".}
proc replaceAspects*(this: var Graphic3dGroup;
                    theMap: Graphic3dMapOfAspectsToAspects) {.
    importcpp: "ReplaceAspects", header: "Graphic3d_Group.hxx".}
## !!!Ignored construct:  ! Adds a text for display virtual void AddText ( const Handle ( Graphic3d_Text ) & theTextParams , const Standard_Boolean theToEvalMinMax = Standard_True ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Adds an array of primitives for display virtual void AddPrimitiveArray ( const Graphic3d_TypeOfPrimitiveArray theType , const Handle ( Graphic3d_IndexBuffer ) & theIndices , const Handle ( Graphic3d_Buffer ) & theAttribs , const Handle ( Graphic3d_BoundBuffer ) & theBounds , const Standard_Boolean theToEvalMinMax = Standard_True ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Adds an array of primitives for display void AddPrimitiveArray ( const Handle ( Graphic3d_ArrayOfPrimitives ) & thePrim , const Standard_Boolean theToEvalMinMax = Standard_True ) ;
## Error: token expected: ) but got: &!!!

proc marker*(this: var Graphic3dGroup; thePoint: Graphic3dVertex;
            theToEvalMinMax: bool = true) {.importcpp: "Marker",
                                        header: "Graphic3d_Group.hxx".}
proc setStencilTestOptions*(this: var Graphic3dGroup; theIsEnabled: bool) {.
    importcpp: "SetStencilTestOptions", header: "Graphic3d_Group.hxx".}
proc setFlippingOptions*(this: var Graphic3dGroup; theIsEnabled: bool;
                        theRefPlane: Ax2) {.importcpp: "SetFlippingOptions",
    header: "Graphic3d_Group.hxx".}
proc containsFacet*(this: Graphic3dGroup): bool {.noSideEffect,
    importcpp: "ContainsFacet", header: "Graphic3d_Group.hxx".}
proc isDeleted*(this: Graphic3dGroup): bool {.noSideEffect, importcpp: "IsDeleted",
    header: "Graphic3d_Group.hxx".}
proc isEmpty*(this: Graphic3dGroup): bool {.noSideEffect, importcpp: "IsEmpty",
                                        header: "Graphic3d_Group.hxx".}
proc minMaxValues*(this: Graphic3dGroup; theXMin: var float; theYMin: var float;
                  theZMin: var float; theXMax: var float; theYMax: var float;
                  theZMax: var float) {.noSideEffect, importcpp: "MinMaxValues",
                                     header: "Graphic3d_Group.hxx".}
proc setMinMaxValues*(this: var Graphic3dGroup; theXMin: float; theYMin: float;
                     theZMin: float; theXMax: float; theYMax: float; theZMax: float) {.
    importcpp: "SetMinMaxValues", header: "Graphic3d_Group.hxx".}
proc boundingBox*(this: Graphic3dGroup): Graphic3dBndBox4f {.noSideEffect,
    importcpp: "BoundingBox", header: "Graphic3d_Group.hxx".}
proc changeBoundingBox*(this: var Graphic3dGroup): var Graphic3dBndBox4f {.
    importcpp: "ChangeBoundingBox", header: "Graphic3d_Group.hxx".}
## !!!Ignored construct:  Structure ( ) const ;
## Error: identifier expected, but got: )!!!

proc setClosed*(this: var Graphic3dGroup; theIsClosed: bool) {.importcpp: "SetClosed",
    header: "Graphic3d_Group.hxx".}
proc isClosed*(this: Graphic3dGroup): bool {.noSideEffect, importcpp: "IsClosed",
    header: "Graphic3d_Group.hxx".}
## !!!Ignored construct:  ! @name obsolete methods public : ! Creates the string <AText> at position <APoint>.
## ! The 3D point of attachment is projected. The text is
## ! written in the plane of projection.
## ! The attributes are given with respect to the plane of
## ! projection.
## ! AHeight : Height of text.
## ! (Relative to the Normalized Projection
## ! Coordinates (NPC) Space).
## ! AAngle  : Orientation of the text
## ! (with respect to the horizontal). Standard_DEPRECATED ( Deprecated method Text() with obsolete arguments, use AddText() instead of it ) virtual void Text ( const Standard_CString AText , const Graphic3d_Vertex & APoint , const Standard_Real AHeight , const Standard_Real AAngle , const Graphic3d_TextPath ATp , const Graphic3d_HorizontalTextAlignment AHta , const Graphic3d_VerticalTextAlignment AVta , const Standard_Boolean EvalMinMax = Standard_True ) ;
## Error: identifier expected, but got: Deprecated method Text() with obsolete arguments, use AddText() instead of it!!!

## !!!Ignored construct:  ! Creates the string <AText> at position <APoint>.
## ! The 3D point of attachment is projected. The text is
## ! written in the plane of projection.
## ! The attributes are given with respect to the plane of
## ! projection.
## ! AHeight : Height of text.
## ! (Relative to the Normalized Projection
## ! Coordinates (NPC) Space).
## ! The other attributes have the following default values:
## ! AAngle  : PI / 2.
## ! ATp     : TP_RIGHT
## ! AHta    : HTA_LEFT
## ! AVta    : VTA_BOTTOM Standard_DEPRECATED ( Deprecated method Text() with obsolete arguments, use AddText() instead of it ) void Text ( const Standard_CString AText , const Graphic3d_Vertex & APoint , const Standard_Real AHeight , const Standard_Boolean EvalMinMax = Standard_True ) ;
## Error: identifier expected, but got: Deprecated method Text() with obsolete arguments, use AddText() instead of it!!!

## !!!Ignored construct:  ! Creates the string <AText> at position <APoint>.
## ! The 3D point of attachment is projected. The text is
## ! written in the plane of projection.
## ! The attributes are given with respect to the plane of
## ! projection.
## ! AHeight : Height of text.
## ! (Relative to the Normalized Projection
## ! Coordinates (NPC) Space).
## ! AAngle  : Orientation of the text
## ! (with respect to the horizontal). Standard_DEPRECATED ( Deprecated method Text() with obsolete arguments, use AddText() instead of it ) void Text ( const TCollection_ExtendedString & AText , const Graphic3d_Vertex & APoint , const Standard_Real AHeight , const Standard_Real AAngle , const Graphic3d_TextPath ATp , const Graphic3d_HorizontalTextAlignment AHta , const Graphic3d_VerticalTextAlignment AVta , const Standard_Boolean EvalMinMax = Standard_True ) ;
## Error: identifier expected, but got: Deprecated method Text() with obsolete arguments, use AddText() instead of it!!!

## !!!Ignored construct:  ! Creates the string <AText> at position <APoint>.
## ! The 3D point of attachment is projected. The text is
## ! written in the plane of projection.
## ! The attributes are given with respect to the plane of
## ! projection.
## ! AHeight : Height of text.
## ! (Relative to the Normalized Projection
## ! Coordinates (NPC) Space).
## ! The other attributes have the following default values:
## ! AAngle  : PI / 2.
## ! ATp     : TP_RIGHT
## ! AHta    : HTA_LEFT
## ! AVta    : VTA_BOTTOM Standard_DEPRECATED ( Deprecated method Text() with obsolete arguments, use AddText() instead of it ) void Text ( const TCollection_ExtendedString & AText , const Graphic3d_Vertex & APoint , const Standard_Real AHeight , const Standard_Boolean EvalMinMax = Standard_True ) ;
## Error: identifier expected, but got: Deprecated method Text() with obsolete arguments, use AddText() instead of it!!!

## !!!Ignored construct:  ! Creates the string <theText> at orientation <theOrientation> in 3D space. Standard_DEPRECATED ( Deprecated method Text() with obsolete arguments, use AddText() instead of it ) virtual void Text ( const Standard_CString theTextUtf , const gp_Ax2 & theOrientation , const Standard_Real theHeight , const Standard_Real theAngle , const Graphic3d_TextPath theTp , const Graphic3d_HorizontalTextAlignment theHTA , const Graphic3d_VerticalTextAlignment theVTA , const Standard_Boolean theToEvalMinMax = Standard_True , const Standard_Boolean theHasOwnAnchor = Standard_True ) ;
## Error: identifier expected, but got: Deprecated method Text() with obsolete arguments, use AddText() instead of it!!!

## !!!Ignored construct:  ! Creates the string <theText> at orientation <theOrientation> in 3D space. Standard_DEPRECATED ( Deprecated method Text() with obsolete arguments, use AddText() instead of it ) virtual void Text ( const TCollection_ExtendedString & theText , const gp_Ax2 & theOrientation , const Standard_Real theHeight , const Standard_Real theAngle , const Graphic3d_TextPath theTp , const Graphic3d_HorizontalTextAlignment theHTA , const Graphic3d_VerticalTextAlignment theVTA , const Standard_Boolean theToEvalMinMax = Standard_True , const Standard_Boolean theHasOwnAnchor = Standard_True ) ;
## Error: identifier expected, but got: Deprecated method Text() with obsolete arguments, use AddText() instead of it!!!

proc dumpJson*(this: Graphic3dGroup; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Graphic3d_Group.hxx".}
## !!!Ignored construct:  protected : ! Creates a group in the structure <AStructure>. Graphic3d_Group ( const Handle ( Graphic3d_Structure ) & theStructure ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( Graphic3d_Group , Standard_Transient ) #  _Graphic3d_Group_HeaderFile
## Error: expected ';'!!!













































