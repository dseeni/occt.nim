##  Created on: 1996-12-16
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1996-1999 Matra Datavision
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

## !!!Ignored construct:  # _BiTgte_HCurveOnEdge_HeaderFile [NewLine] # _BiTgte_HCurveOnEdge_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < BiTgte_CurveOnEdge . hxx > [NewLine] # < Adaptor3d_HCurve . hxx > [NewLine] class Standard_OutOfRange ;
## Error: expected ';'!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BiTgte_CurveOnEdge"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of BiTgte_HCurveOnEdge"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( BiTgte_HCurveOnEdge , Adaptor3d_HCurve ) class BiTgte_HCurveOnEdge : public Adaptor3d_HCurve { public : ! Creates an empty GenHCurve. BiTgte_HCurveOnEdge ( ) ; ! Creates a GenHCurve from a Curve BiTgte_HCurveOnEdge ( const BiTgte_CurveOnEdge & C ) ; ! Sets the field of the GenHCurve. void Set ( const BiTgte_CurveOnEdge & C ) ; ! Returns the curve used to create the GenHCurve.
## ! This is redefined from HCurve, cannot be inline. const Adaptor3d_Curve & Curve ( ) const ; ! Returns the curve used to create the GenHCurve.
## ! This is redefined from HCurve, cannot be inline. Adaptor3d_Curve & GetCurve ( ) ; ! Returns the curve used to create the GenHCurve. BiTgte_CurveOnEdge & ChangeCurve ( ) ; public : typedef Adaptor3d_HCurve base_type ; static const char * get_type_name ( ) { return BiTgte_HCurveOnEdge ; ( BiTgte_HCurveOnEdge , Adaptor3d_HCurve ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < BiTgte_HCurveOnEdge > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : BiTgte_CurveOnEdge myCurve ; private : } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # TheCurve BiTgte_CurveOnEdge [NewLine] # TheCurve_hxx < BiTgte_CurveOnEdge . hxx > [NewLine] # Adaptor3d_GenHCurve BiTgte_HCurveOnEdge [NewLine] # Adaptor3d_GenHCurve_hxx < BiTgte_HCurveOnEdge . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve Handle ( BiTgte_HCurveOnEdge ) [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _BiTgte_HCurveOnEdge_HeaderFile
## Error: did not expect <!!!














































