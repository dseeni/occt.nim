##  Created on: 2014-12-18
##  Created by: Kirill Gavrilov
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

## !!!Ignored construct:  # _Graphic3d_ViewAffinity_HeaderFile [NewLine] # _Graphic3d_ViewAffinity_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] ! Structure display state. class Graphic3d_ViewAffinity : public Standard_Transient { public : ! Empty constructor. Graphic3d_ViewAffinity ( ) { SetVisible ( Standard_True ) ; } ! Return visibility flag. bool IsVisible ( const Standard_Integer theViewId ) const { const unsigned int aBit = 1 << theViewId ; return ( myMask & aBit ) != 0 ; } ! Setup visibility flag for all views. void SetVisible ( const Standard_Boolean theIsVisible ) { :: memset ( & myMask , theIsVisible ? 0xFF : 0x00 , sizeof ( myMask ) ) ; } ! Setup visibility flag. void SetVisible ( const Standard_Integer theViewId , const bool theIsVisible ) { const unsigned int aBit = 1 << theViewId ; if ( theIsVisible ) { myMask |= aBit ; } else { myMask &= ~ aBit ; } } ! Dumps the content of me into the stream void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const ; private : unsigned int myMask ; !< affinity mask public : public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return Graphic3d_ViewAffinity ; } static const Handle ( Standard_Type ) & get_type_descriptor ( ) ; virtual const Handle ( Standard_Type ) & DynamicType ( ) const ; } ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( Graphic3d_ViewAffinity , Standard_Transient ) #  _Graphic3d_ViewAffinity_HeaderFile
## Error: expected ';'!!!














































