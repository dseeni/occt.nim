##  Created on: 2015-08-06
##  Created by: Ilya Novikov
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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

## ! Defines modifirs

type
  XCAFDimTolObjectsDimensionModif* {.size: sizeof(cint), importcpp: "XCAFDimTolObjects_DimensionModif", header: "XCAFDimTolObjects_DimensionModif.hxx".} = enum
    XCAFDimTolObjectsDimensionModifControlledRadius,
    XCAFDimTolObjectsDimensionModifSquare,
    XCAFDimTolObjectsDimensionModifStatisticalTolerance,
    XCAFDimTolObjectsDimensionModifContinuousFeature,
    XCAFDimTolObjectsDimensionModifTwoPointSize,
    XCAFDimTolObjectsDimensionModifLocalSizeDefinedBySphere,
    XCAFDimTolObjectsDimensionModifLeastSquaresAssociationCriterion,
    XCAFDimTolObjectsDimensionModifMaximumInscribedAssociation,
    XCAFDimTolObjectsDimensionModifMinimumCircumscribedAssociation,
    XCAFDimTolObjectsDimensionModifCircumferenceDiameter,
    XCAFDimTolObjectsDimensionModifAreaDiameter,
    XCAFDimTolObjectsDimensionModifVolumeDiameter,
    XCAFDimTolObjectsDimensionModifMaximumSize,
    XCAFDimTolObjectsDimensionModifMinimumSize,
    XCAFDimTolObjectsDimensionModifAverageSize,
    XCAFDimTolObjectsDimensionModifMedianSize,
    XCAFDimTolObjectsDimensionModifMidRangeSize,
    XCAFDimTolObjectsDimensionModifRangeOfSizes,
    XCAFDimTolObjectsDimensionModifAnyRestrictedPortionOfFeature,
    XCAFDimTolObjectsDimensionModifAnyCrossSection,
    XCAFDimTolObjectsDimensionModifSpecificFixedCrossSection,
    XCAFDimTolObjectsDimensionModifCommonTolerance,
    XCAFDimTolObjectsDimensionModifFreeStateCondition,
    XCAFDimTolObjectsDimensionModifBetween


