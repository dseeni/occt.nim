##  Created on: 2011-10-14
##  Created by: Roman KOZLOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

## !!!Ignored construct:  # __IVTKOCC_SHAPEMESHER_H__ [NewLine] # __IVTKOCC_SHAPEMESHER_H__ [NewLine] # < BRepAdaptor_HSurface . hxx > [NewLine] # < IVtkOCC_Shape . hxx > [NewLine] # < IVtk_IShapeMesher . hxx > [NewLine] # < TColgp_Array1OfPnt . hxx > [NewLine] # < TColgp_SequenceOfPnt . hxx > [NewLine] # < TColStd_Array1OfInteger . hxx > [NewLine] # < TopoDS . hxx > [NewLine] # < TopoDS_Edge . hxx > [NewLine] # < TopoDS_Face . hxx > [NewLine] # < TopoDS_Vertex . hxx > [NewLine] # < TopTools_IndexedDataMapOfShapeListOfShape . hxx > [NewLine] # < TopTools_ListOfShape . hxx > [NewLine] # < TopTools_ShapeMapHasher . hxx > [NewLine] typedef NCollection_DataMap < TopoDS_Shape , IVtk_MeshType , TopTools_ShapeMapHasher > [end of template] IVtk_ShapeTypeMap ;
## Error: expected ';'!!!

type
  IVtkPolyline* = NCollectionSequence[Pnt]
  IVtkPolylineList* = NCollectionList[IVtkPolyline]

discard "forward decl of IVtkOCC_ShapeMesher"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( IVtkOCC_ShapeMesher , IVtk_IShapeMesher ) ! @class IVtkOCC_ShapeMesher
## ! @brief OCC implementation of IMesher interface.
## !
## ! Mesher produces shape data using implementation of IShapeData interface for
## ! VTK and then result can be retrieved from this implementation as a vtkPolyData:
## ! @image html doc/img/image002.gif
## ! Then the resulting vtkPolyData can be used for initialization of VTK pipeline. class IVtkOCC_ShapeMesher : public IVtk_IShapeMesher { public : IVtkOCC_ShapeMesher ( const Standard_Real & theDevCoeff = 0.0001 , const Standard_Real & theDevAngle = 12.0 * M_PI / 180.0 , const Standard_Integer theNbUIsos = 1 , const Standard_Integer theNbVIsos = 1 ) : myDevCoeff ( theDevCoeff ) , myDevAngle ( theDevAngle ) , myDeflection ( 0.0 ) { myNbIsos [ 0 ] = theNbUIsos ; myNbIsos [ 1 ] = theNbVIsos ; } virtual ~ IVtkOCC_ShapeMesher ( ) { } ! Returns absolute deflection used by this algorithm.
## ! This value is calculated on the basis of the shape's bounding box.
## ! Zero might be returned in case if the underlying OCCT shape
## ! is empty or invalid. Thus check the returned value before
## ! passing it to OCCT meshing algorithms!
## ! @return absolute deflection value Standard_Real GetDeflection ( ) const ; ! Returns relative deviation coefficient used by this algorithm.
## ! @return relative deviation coefficient Standard_Real GetDeviationCoeff ( ) const { return myDevCoeff ; } ! Returns deviation angle used by this algorithm.
## ! This is the maximum allowed angle between the normals to the
## ! curve/surface and the normals to polyline/faceted representation.
## ! @return deviation angle (in radians) Standard_Real GetDeviationAngle ( ) const { return myDevAngle ; } protected : ! Executes the mesh generation algorithms. To be defined in implementation class. virtual void internalBuild ( ) ; private : ! Internal method, generates OCCT triangulation starting from TopoDS_Shape
## ! @see IVtkOCC_ShapeMesher::addEdge, IVtkOCC_ShapeMesher::addShadedFace void meshShape ( ) ; ! Extracts free vertices from the shape (i.e. those not belonging to any edge)
## ! and passes the geometry to IPolyData.
## ! Each vertex is associated with its sub-shape ID. void addFreeVertices ( ) ; ! Adds all the edges (free and non-free) to IPolyData. void addEdges ( ) ; ! Adds wireframe representations of all faces to IPolyData. void addWireFrameFaces ( ) ; ! Adds shaded representations of all faces to IPolyData. void addShadedFaces ( ) ; ! Adds the point coordinates, connectivity info and
## ! sub-shape ID for the OCCT vertex.
## !
## ! @param theVertex OCCT vertex to be added to the mesh
## ! @param theShapeId global point ID needed for connectivity data creation void addVertex ( const TopoDS_Vertex & theVertex , const IVtk_IdType theShapeId , const IVtk_MeshType theMeshType ) ; ! Adds the point coordinates and a polyline for the OCCT edge.
## ! Note that the edge should be triangulated in advance.
## !
## ! @param theEdge OCCT edge to be meshed
## ! @param theShapeId the edge's subshape ID
## ! @see IVtkOCC_ShapeMesher::meshShape void addEdge ( const TopoDS_Edge & theEdge , const IVtk_IdType theShapeId , const IVtk_MeshType theMeshType ) ; ! Generates wireframe representation of the given TopoDS_Face object
## ! with help of OCCT algorithms. The resulting polylines are passed to IPolyData
## ! interface and associated with the given sub-shape ID.
## ! @param [in] faceToMesh TopoDS_Face object to build wireframe representation for.
## ! @param [in] shapeId The face' sub-shape ID void addWFFace ( const TopoDS_Face & theFace , const IVtk_IdType theShapeId ) ; ! Creates shaded representation of the given TopoDS_Face object
## ! starting from OCCT triangulation that should be created in advance.
## ! The resulting triangles are passed to IPolyData
## ! interface and associated with the given sub-shape ID.
## ! @param [in] faceToMesh TopoDS_Face object to build shaded representation for.
## ! @param [in] shapeId The face' sub-shape ID
## ! @see IVtkOCC_ShapeMesher::meshShape, IVtkOCC_ShapeMesher::addEdge void addShadedFace ( const TopoDS_Face & theFace , const IVtk_IdType theShapeId ) ; ! Internal helper method that unpacks the input arrays of points and
## ! connectivity and creates the polyline using IPolyData interface.
## ! Optionally, the transformation specified through the last argument
## ! can be applied to each point's coordinates (noTransform == true).
## ! The polyline is associated with the given sub-shape ID. void processPolyline ( Standard_Integer theNbNodes , const TColgp_Array1OfPnt & thePoints , const TColStd_Array1OfInteger & thePointIds , const IVtk_IdType theOcctId , bool theNoTransform , gp_Trsf theTransformation , const IVtk_MeshType theMeshType ) ; ! Get the IShape as OCC implementation const IVtkOCC_Shape :: Handle GetShapeObj ( ) const ; public : typedef IVtk_IShapeMesher base_type ; static const char * get_type_name ( ) { return IVtkOCC_ShapeMesher ; } static const Handle ( Standard_Type ) & get_type_descriptor ( ) ; virtual const Handle ( Standard_Type ) & DynamicType ( ) const ; private : IVtk_ShapeTypeMap myEdgesTypes ; Standard_Real myDevCoeff ; Standard_Real myDevAngle ; mutable Standard_Real myDeflection ; Standard_Integer myNbIsos [ 2 ] ; } ;
## Error: expected ';'!!!














































