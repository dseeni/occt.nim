##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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

import
  ../TopoDS/TopoDS_Shape, ../Bnd/Bnd_Box2d, ../TopTools/TopTools_ShapeMapHasher,
  ../NCollection/NCollection_DataMap

type
  ShapeFix_DataMapOfShapeBox2d* = NCollection_DataMap[TopoDS_Shape, Bnd_Box2d,
      TopTools_ShapeMapHasher]
  ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d* = Iterator[TopoDS_Shape,
      Bnd_Box2d, TopTools_ShapeMapHasher]
