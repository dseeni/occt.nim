##  Created on: 1994-05-31
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

## !!!Ignored construct:  # _IGESSelect_ModelModifier_HeaderFile [NewLine] # _IGESSelect_ModelModifier_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < IFSelect_Modifier . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] class IGESData_IGESModel ;
## Error: expected ';'!!!

discard "forward decl of IGESData_Protocol"
discard "forward decl of IFSelect_ContextModif"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CopyTool"
discard "forward decl of IGESSelect_ModelModifier"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( IGESSelect_ModelModifier , IFSelect_Modifier ) class IGESSelect_ModelModifier : public IFSelect_Modifier { public : ! The inherited Perform does the required cast (and refuses to
## ! go further if cast has failed) then calls the instantiated
## ! Performing void Perform ( IFSelect_ContextModif & ctx , const Handle ( Interface_InterfaceModel ) & target , const Handle ( Interface_Protocol ) & protocol , Interface_CopyTool & TC ) const ; ! Specific Perform with Protocol. It is defined to let the
## ! Protocol unused and to call Performing without Protocol
## ! (most current case). It can be redefined if specific action
## ! requires Protocol. virtual void PerformProtocol ( IFSelect_ContextModif & ctx , const Handle ( IGESData_IGESModel ) & target , const Handle ( IGESData_Protocol ) & proto , Interface_CopyTool & TC ) const ; ! Specific Perform, without Protocol. If Performing with
## ! Protocol is redefined, Performing without Protocol must
## ! though be defined to do nothing (not called, but demanded
## ! by the linker) virtual void Performing ( IFSelect_ContextModif & ctx , const Handle ( IGESData_IGESModel ) & target , Interface_CopyTool & TC ) const = 0 ; public : typedef IFSelect_Modifier base_type ; static const char * get_type_name ( ) { return IGESSelect_ModelModifier ; ( IGESSelect_ModelModifier , IFSelect_Modifier ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < IGESSelect_ModelModifier > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : ! Calls inherited Initialize, transmits to it the information
## ! <maychangegraph> IGESSelect_ModelModifier ( const Standard_Boolean maychangegraph ) ; private : } ;
## Error: expected ';'!!!














































