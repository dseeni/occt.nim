##  Copyright (c) 2015 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _ShapePersistent_Geom_HeaderFile [NewLine] # _ShapePersistent_Geom_HeaderFile [NewLine] # < Standard_NotImplemented . hxx > [NewLine] # < Standard_NullObject . hxx > [NewLine] # < StdObjMgt_WriteData . hxx > [NewLine] # < StdObjMgt_SharedObject . hxx > [NewLine] # < StdObjMgt_TransientPersistentMap . hxx > [NewLine] # < StdObject_gp_Vectors . hxx > [NewLine] # < StdObject_gp_Axes . hxx > [NewLine] # < StdObject_gp_Curves . hxx > [NewLine] # < StdObject_gp_Surfaces . hxx > [NewLine] # < StdObject_gp_Trsfs . hxx > [NewLine] # < Geom_CartesianPoint . hxx > [NewLine] # < Geom_Direction . hxx > [NewLine] # < Geom_VectorWithMagnitude . hxx > [NewLine] # < Geom_Axis1Placement . hxx > [NewLine] # < Geom_Axis2Placement . hxx > [NewLine] # < Geom_Transformation . hxx > [NewLine] # < Geom_Curve . hxx > [NewLine] # < Geom_Surface . hxx > [NewLine] class ShapePersistent_Geom : public StdObjMgt_SharedObject { public : class Geometry : public StdObjMgt_Persistent { public : ! Read persistent data from a file. virtual void Read ( StdObjMgt_ReadData & theReadData ) ; ! Write persistent data to a file. virtual void Write ( StdObjMgt_WriteData & theWriteData ) const ; ! Gets persistent objects virtual void PChildren ( SequenceOfPersistent & theChildren ) const ; ! Returns persistent type name virtual Standard_CString PName ( ) const { return PGeom_Geometry ; } } ; protected : template < class Transient > [end of template] struct geometryBase : public DelayedBase < Geometry , Transient > [end of template] { ! Write persistent data to a file. virtual void Write ( StdObjMgt_WriteData & ) const { Standard_NotImplemented :: Raise ( ShapePersistent_Geom::geometryBase::Write - not implemented ) ; } ! Gets persistent child objects virtual void PChildren ( StdObjMgt_Persistent :: SequenceOfPersistent & ) const { } ! Returns persistent type name virtual Standard_CString PName ( ) const { Standard_NotImplemented :: Raise ( ShapePersistent_Geom::geometryBase::PName - not implemented ) ; return  ; } } ; template < class Base , class PData > [end of template] class subBase : public Base { public : ! Read persistent data from a file. virtual void Read ( StdObjMgt_ReadData & theReadData ) { PData ( ) . Read ( theReadData ) ; } ! Write persistent data to a file. virtual void Write ( StdObjMgt_WriteData & theWriteData ) const { PData ( ) . Write ( theWriteData ) ; } ! Gets persistent child objects virtual void PChildren ( StdObjMgt_Persistent :: SequenceOfPersistent & ) const { Standard_NotImplemented :: Raise ( ShapePersistent_Geom::subBase::PChildren - not implemented ) ; } ! Returns persistent type name virtual Standard_CString PName ( ) const { Standard_NotImplemented :: Raise ( ShapePersistent_Geom::subBase::PName - not implemented ) ; return  ; } } ; template < class Base , class GpData > [end of template] struct subBase_gp : public Base { public : ! Read persistent data from a file. virtual void Read ( StdObjMgt_ReadData & ) { } ! Write persistent data to a file. virtual void Write ( StdObjMgt_WriteData & ) const { } ! Gets persistent child objects virtual void PChildren ( StdObjMgt_Persistent :: SequenceOfPersistent & ) const { } ! Returns persistent type name virtual Standard_CString PName ( ) const { Standard_NotImplemented :: Raise ( ShapePersistent_Geom::subBase_gp::PName - not implemented ) ; return  ; } } ; template < class Base > [end of template] struct subBase_empty : Base { ! Returns persistent type name virtual Standard_CString PName ( ) const { Standard_NotImplemented :: Raise ( ShapePersistent_Geom::subBase_empty::PName - not implemented ) ; return  ; } } ; template < class Base , class Target , class Data = void > [end of template] class instance : public Base { public : ! Read persistent data from a file. virtual void Read ( StdObjMgt_ReadData & theReadData ) { Data aData ; theReadData >> aData ; this -> myTransient = new Target ( aData ) ; } ! Gets persistent child objects virtual void PChildren ( StdObjMgt_Persistent :: SequenceOfPersistent & ) const { } ! Write persistent data to a file. virtual void Write ( StdObjMgt_WriteData & ) const { Standard_NotImplemented :: Raise ( ShapePersistent_Geom::instance::Write - not implemented ) ; } ! Returns persistent type name virtual Standard_CString PName ( ) const { Standard_NotImplemented :: Raise ( ShapePersistent_Geom::instance::PName - not implemented ) ; return  ; } } ; private : typedef geometryBase < Geom_Geometry > [end of template] basic ; public : typedef subBase_empty < basic > [end of template] Point ; typedef instance < Point , Geom_CartesianPoint , gp_Pnt > [end of template] CartesianPoint ; typedef subBase_gp < basic , gp_Vec > [end of template] Vector ; typedef instance < Vector , Geom_Direction , gp_Dir > [end of template] Direction ; typedef instance < Vector , Geom_VectorWithMagnitude , gp_Vec > [end of template] VectorWithMagnitude ; typedef subBase_gp < basic , gp_Ax1 > [end of template] AxisPlacement ; typedef instance < AxisPlacement , Geom_Axis1Placement , gp_Ax1 > [end of template] Axis1Placement ; typedef instance < AxisPlacement , Geom_Axis2Placement > [end of template] Axis2Placement ; typedef instance < SharedBase < Geom_Transformation > [end of template] , Geom_Transformation , gp_Trsf > [end of template] Transformation ; typedef geometryBase < Geom_Curve > [end of template] Curve ; typedef geometryBase < Geom_Surface > [end of template] Surface ; public : ! Create a persistent object for a curve static opencascade :: handle < Curve > [end of template] Translate ( const opencascade :: handle < Geom_Curve > [end of template] & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ; ! Create a persistent object for a curve static opencascade :: handle < Surface > [end of template] Translate ( const opencascade :: handle < Geom_Surface > [end of template] & theSurf , StdObjMgt_TransientPersistentMap & theMap ) ; } ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Point
## =======================================================================

## !!!Ignored construct:  template < > [end of template] inline Standard_CString ShapePersistent_Geom :: subBase_empty < ShapePersistent_Geom :: basic > :: PName ( ) const { return PGeom_Point ; } =======================================================================
##  CartesianPoint
## ======================================================================= template < > inline Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom :: Point , Geom_CartesianPoint , gp_Pnt > :: PName ( ) const { return PGeom_CartesianPoint ; } template < > inline void ShapePersistent_Geom :: instance < ShapePersistent_Geom :: Point , Geom_CartesianPoint , gp_Pnt > :: Write ( StdObjMgt_WriteData & theWriteData ) const { opencascade :: handle < Geom_CartesianPoint > [end of template] aMyGeom = opencascade :: handle < Geom_CartesianPoint > [end of template] :: DownCast ( myTransient ) ; theWriteData << aMyGeom -> Pnt ( ) ; } =======================================================================
##  Vector
## ======================================================================= template < > inline Standard_CString ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: basic , gp_Vec > :: PName ( ) const { return PGeom_Vector ; } =======================================================================
##  Direction
## ======================================================================= template < > inline Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom :: Direction , Geom_Direction , gp_Dir > :: PName ( ) const { return PGeom_Direction ; } template < > inline void ShapePersistent_Geom :: instance < ShapePersistent_Geom :: Direction , Geom_Direction , gp_Dir > :: Write ( StdObjMgt_WriteData & theWriteData ) const { opencascade :: handle < Geom_Direction > [end of template] aMyGeom = opencascade :: handle < Geom_Direction > [end of template] :: DownCast ( myTransient ) ; theWriteData << aMyGeom -> Dir ( ) ; } =======================================================================
##  VectorWithMagnitude
## ======================================================================= template < > inline Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom :: VectorWithMagnitude , Geom_VectorWithMagnitude , gp_Vec > :: PName ( ) const { return PGeom_VectorWithMagnitude ; } template < > inline void ShapePersistent_Geom :: instance < ShapePersistent_Geom :: VectorWithMagnitude , Geom_VectorWithMagnitude , gp_Vec > :: Write ( StdObjMgt_WriteData & theWriteData ) const { opencascade :: handle < Geom_VectorWithMagnitude > [end of template] aMyGeom = opencascade :: handle < Geom_VectorWithMagnitude > [end of template] :: DownCast ( myTransient ) ; theWriteData << aMyGeom -> Vec ( ) ; } =======================================================================
##  AxisPlacement
## ======================================================================= template < > inline Standard_CString ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: basic , gp_Ax1 > :: PName ( ) const { return PGeom_AxisPlacement ; } =======================================================================
##  Axis1Placement
## ======================================================================= template < > inline Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom :: Axis1Placement , Geom_Axis1Placement , gp_Ax1 > :: PName ( ) const { return PGeom_Axis1Placement ; } template < > inline void ShapePersistent_Geom :: instance < ShapePersistent_Geom :: Axis1Placement , Geom_Axis1Placement , gp_Ax1 > :: Write ( StdObjMgt_WriteData & theWriteData ) const { opencascade :: handle < Geom_Axis1Placement > [end of template] aMyGeom = opencascade :: handle < Geom_Axis1Placement > [end of template] :: DownCast ( myTransient ) ; write ( theWriteData , aMyGeom -> Ax1 ( ) ) ; } =======================================================================
##  Axis2Placement
## ======================================================================= template < > inline Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom :: AxisPlacement , Geom_Axis2Placement > :: PName ( ) const { return PGeom_Axis2Placement ; } template < > inline void ShapePersistent_Geom :: instance < ShapePersistent_Geom :: AxisPlacement , Geom_Axis2Placement > :: Read ( StdObjMgt_ReadData & theReadData ) { gp_Ax1 anAxis ; gp_Dir anXDirection ; theReadData >> anAxis >> anXDirection ; myTransient = new Geom_Axis2Placement ( anAxis . Location ( ) , anAxis . Direction ( ) , anXDirection ) ; } template < > inline void ShapePersistent_Geom :: instance < ShapePersistent_Geom :: AxisPlacement , Geom_Axis2Placement > :: Write ( StdObjMgt_WriteData & theWriteData ) const { opencascade :: handle < Geom_Axis2Placement > [end of template] aMyGeom = opencascade :: handle < Geom_Axis2Placement > [end of template] :: DownCast ( myTransient ) ; const gp_Ax1 & anAxis = aMyGeom -> Axis ( ) ; const gp_Dir & anXDirection = aMyGeom -> Direction ( ) ; write ( theWriteData , anAxis ) << anXDirection ; } =======================================================================
##  Transformation
## ======================================================================= template < > inline Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom :: Transformation , Geom_Transformation , gp_Trsf > :: PName ( ) const { return PGeom_Transformation ; } template < > inline void ShapePersistent_Geom :: instance < ShapePersistent_Geom :: Transformation , Geom_Transformation , gp_Trsf > :: Write ( StdObjMgt_WriteData & theWriteData ) const { theWriteData << myTransient -> Trsf ( ) ; } =======================================================================
##  Geometry
## ======================================================================= template < > inline Standard_CString ShapePersistent_Geom :: geometryBase < Geom_Geometry > :: PName ( ) const { return PGeom_Geometry ; } =======================================================================
##  Curve
## ======================================================================= template < > inline Standard_CString ShapePersistent_Geom :: geometryBase < Geom_Curve > :: PName ( ) const { return PGeom_Curve ; } =======================================================================
##  Surface
## ======================================================================= template < > inline Standard_CString ShapePersistent_Geom :: geometryBase < Geom_Surface > :: PName ( ) const { return PGeom_Surface ; } # [NewLine]
## Error: token expected: ( but got: <!!!


