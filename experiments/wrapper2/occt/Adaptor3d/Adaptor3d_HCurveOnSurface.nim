##  Created on: 1992-10-08
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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

## !!!Ignored construct:  # _Adaptor3d_HCurveOnSurface_HeaderFile [NewLine] # _Adaptor3d_HCurveOnSurface_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Adaptor3d_CurveOnSurface . hxx > [NewLine] # < Adaptor3d_HCurve . hxx > [NewLine] class Standard_OutOfRange ;
## Error: expected ';'!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_CurveOnSurface"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_HCurveOnSurface"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( Adaptor3d_HCurveOnSurface , Adaptor3d_HCurve ) class Adaptor3d_HCurveOnSurface : public Adaptor3d_HCurve { public : ! Creates an empty GenHCurve. Adaptor3d_HCurveOnSurface ( ) ; ! Creates a GenHCurve from a Curve Adaptor3d_HCurveOnSurface ( const Adaptor3d_CurveOnSurface & C ) ; ! Sets the field of the GenHCurve. void Set ( const Adaptor3d_CurveOnSurface & C ) ; ! Returns the curve used to create the GenHCurve.
## ! This is redefined from HCurve, cannot be inline. const Adaptor3d_Curve & Curve ( ) const ; ! Returns the curve used to create the GenHCurve.
## ! This is redefined from HCurve, cannot be inline. Adaptor3d_Curve & GetCurve ( ) ; ! Returns the curve used to create the GenHCurve. Adaptor3d_CurveOnSurface & ChangeCurve ( ) ; public : typedef Adaptor3d_HCurve base_type ; static const char * get_type_name ( ) { return Adaptor3d_HCurveOnSurface ; ( Adaptor3d_HCurveOnSurface , Adaptor3d_HCurve ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < Adaptor3d_HCurveOnSurface > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : Adaptor3d_CurveOnSurface myCurve ; private : } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # TheCurve Adaptor3d_CurveOnSurface [NewLine] # TheCurve_hxx < Adaptor3d_CurveOnSurface . hxx > [NewLine] # Adaptor3d_GenHCurve Adaptor3d_HCurveOnSurface [NewLine] # Adaptor3d_GenHCurve_hxx < Adaptor3d_HCurveOnSurface . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve Handle ( Adaptor3d_HCurveOnSurface ) [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _Adaptor3d_HCurveOnSurface_HeaderFile
## Error: did not expect <!!!














































