##  Created on: 1992-02-03
##  Created by: Christian CAILLET
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

## !!!Ignored construct:  # _Interface_GlobalNodeOfReaderLib_HeaderFile [NewLine] # _Interface_GlobalNodeOfReaderLib_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] class Interface_ReaderModule ;
## Error: expected ';'!!!

discard "forward decl of Interface_Protocol"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ReaderLib"
discard "forward decl of Interface_NodeOfReaderLib"
discard "forward decl of Interface_GlobalNodeOfReaderLib"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( Interface_GlobalNodeOfReaderLib , Standard_Transient ) class Interface_GlobalNodeOfReaderLib : public Standard_Transient { public : ! Creates an empty GlobalNode, with no Next Interface_GlobalNodeOfReaderLib ( ) ; ! Adds a Module bound with a Protocol to the list : does
## ! nothing if already in the list, THAT IS, Same Type (exact
## ! match) and Same State (that is, IsEqual is not required)
## ! Once added, stores its attached Protocol in correspondance void Add ( const Handle ( Interface_ReaderModule ) & amodule , const Handle ( Interface_Protocol ) & aprotocol ) ; ! Returns the Module stored in a given GlobalNode const Handle ( Interface_ReaderModule ) & Module ( ) const ; ! Returns the attached Protocol stored in a given GlobalNode const Handle ( Interface_Protocol ) & Protocol ( ) const ; ! Returns the Next GlobalNode. If none is defined, returned
## ! value is a Null Handle const Handle ( Interface_GlobalNodeOfReaderLib ) & Next ( ) const ; public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return Interface_GlobalNodeOfReaderLib ; ( Interface_GlobalNodeOfReaderLib , Standard_Transient ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < Interface_GlobalNodeOfReaderLib > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : private : Handle ( Interface_ReaderModule ) themod ; Handle ( Interface_Protocol ) theprot ; Handle ( Interface_GlobalNodeOfReaderLib ) thenext ; } ;
## Error: expected ';'!!!













































