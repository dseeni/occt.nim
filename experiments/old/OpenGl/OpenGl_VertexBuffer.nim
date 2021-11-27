##  Created by: Kirill GAVRILOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _OpenGl_VertexBuffer_H__ [NewLine] # _OpenGl_VertexBuffer_H__ [NewLine] # < OpenGl_GlCore20 . hxx > [NewLine] # < OpenGl_Resource . hxx > [NewLine] # < OpenGl_Context . hxx > [NewLine] # < OpenGl_ShaderProgram . hxx > [NewLine] # < Graphic3d_IndexBuffer . hxx > [NewLine] ! Vertex Buffer Object - is a general storage object for vertex attributes (position, normal, color).
## ! Notice that you should use OpenGl_IndexBuffer specialization for array of indices. class OpenGl_VertexBuffer : public OpenGl_Resource { public : ! Helpful constants static const GLuint NO_BUFFER = 0 ; public : ! Create uninitialized VBO. OpenGl_VertexBuffer ( ) ; ! Destroy object. virtual ~ OpenGl_VertexBuffer ( ) ; virtual GLenum GetTarget ( ) const ; ! Return TRUE if this is a virtual (for backward compatibility) VBO object. virtual bool IsVirtual ( ) const { return false ; } ! @return true if current object was initialized inline bool IsValid ( ) const { return myBufferId != NO_BUFFER ; } ! @return the number of components per generic vertex attribute. inline GLuint GetComponentsNb ( ) const { return myComponentsNb ; } ! @return number of vertex attributes / number of vertices specified within ::Init() inline GLsizei GetElemsNb ( ) const { return myElemsNb ; } ! Overrides the number of vertex attributes / number of vertexes.
## ! It is up to user specifying this number correct (e.g. below initial value)! void SetElemsNb ( GLsizei theNbElems ) { myElemsNb = theNbElems ; } ! @return data type of each component in the array. inline GLenum GetDataType ( ) const { return myDataType ; } ! @return offset to data, NULL by default inline GLubyte * GetDataOffset ( ) const { return myOffset ; } ! Creates VBO name (id) if not yet generated.
## ! Data should be initialized by another method. virtual bool Create ( const Handle ( OpenGl_Context ) & theGlCtx ) ; ! Destroy object - will release GPU memory if any. virtual void Release ( OpenGl_Context * theGlCtx ) ; ! Bind this VBO. virtual void Bind ( const Handle ( OpenGl_Context ) & theGlCtx ) const ; ! Unbind this VBO. virtual void Unbind ( const Handle ( OpenGl_Context ) & theGlCtx ) const ; ! Notice that VBO will be unbound after this call.
## ! @param theComponentsNb - specifies the number of components per generic vertex attribute; must be 1, 2, 3, or 4;
## ! @param theElemsNb      - elements count;
## ! @param theData         - pointer to GLfloat data (vertices/normals etc.). bool Init ( const Handle ( OpenGl_Context ) & theGlCtx , const GLuint theComponentsNb , const GLsizei theElemsNb , const GLfloat * theData ) { return init ( theGlCtx , theComponentsNb , theElemsNb , theData , GL_FLOAT ) ; } ! Notice that VBO will be unbound after this call.
## ! @param theComponentsNb - specifies the number of components per generic vertex attribute; must be 1, 2, 3, or 4;
## ! @param theElemsNb      - elements count;
## ! @param theData         - pointer to GLuint data (indices etc.). bool Init ( const Handle ( OpenGl_Context ) & theGlCtx , const GLuint theComponentsNb , const GLsizei theElemsNb , const GLuint * theData ) { return init ( theGlCtx , theComponentsNb , theElemsNb , theData , GL_UNSIGNED_INT ) ; } ! Notice that VBO will be unbound after this call.
## ! @param theComponentsNb - specifies the number of components per generic vertex attribute; must be 1, 2, 3, or 4;
## ! @param theElemsNb      - elements count;
## ! @param theData         - pointer to GLushort data (indices etc.). bool Init ( const Handle ( OpenGl_Context ) & theGlCtx , const GLuint theComponentsNb , const GLsizei theElemsNb , const GLushort * theData ) { return init ( theGlCtx , theComponentsNb , theElemsNb , theData , GL_UNSIGNED_SHORT ) ; } ! Notice that VBO will be unbound after this call.
## ! @param theComponentsNb - specifies the number of components per generic vertex attribute; must be 1, 2, 3, or 4;
## ! @param theElemsNb      - elements count;
## ! @param theData         - pointer to GLubyte data (indices/colors etc.). bool Init ( const Handle ( OpenGl_Context ) & theGlCtx , const GLuint theComponentsNb , const GLsizei theElemsNb , const GLubyte * theData ) { return init ( theGlCtx , theComponentsNb , theElemsNb , theData , GL_UNSIGNED_BYTE ) ; } ! Notice that VBO will be unbound after this call.
## ! Function replaces portion of data within this VBO using glBufferSubData().
## ! The VBO should be initialized before call.
## ! @param theElemFrom - element id from which replace buffer data (>=0);
## ! @param theElemsNb  - elements count (theElemFrom + theElemsNb <= GetElemsNb());
## ! @param theData     - pointer to GLfloat data. bool SubData ( const Handle ( OpenGl_Context ) & theGlCtx , const GLsizei theElemFrom , const GLsizei theElemsNb , const GLfloat * theData ) { return subData ( theGlCtx , theElemFrom , theElemsNb , theData , GL_FLOAT ) ; } ! Read back buffer sub-range.
## ! Notice that VBO will be unbound after this call.
## ! Function reads portion of data from this VBO using glGetBufferSubData().
## ! @param theElemFrom [in] element id from which replace buffer data (>=0);
## ! @param theElemsNb  [in] elements count (theElemFrom + theElemsNb <= GetElemsNb());
## ! @param theData    [out] destination pointer to GLfloat data. bool GetSubData ( const Handle ( OpenGl_Context ) & theGlCtx , const GLsizei theElemFrom , const GLsizei theElemsNb , GLfloat * theData ) { return getSubData ( theGlCtx , theElemFrom , theElemsNb , theData , GL_FLOAT ) ; } ! Notice that VBO will be unbound after this call.
## ! Function replaces portion of data within this VBO using glBufferSubData().
## ! The VBO should be initialized before call.
## ! @param theElemFrom element id from which replace buffer data (>=0);
## ! @param theElemsNb  elements count (theElemFrom + theElemsNb <= GetElemsNb());
## ! @param theData     pointer to GLuint data. bool SubData ( const Handle ( OpenGl_Context ) & theGlCtx , const GLsizei theElemFrom , const GLsizei theElemsNb , const GLuint * theData ) { return subData ( theGlCtx , theElemFrom , theElemsNb , theData , GL_UNSIGNED_INT ) ; } ! Read back buffer sub-range.
## ! Notice that VBO will be unbound after this call.
## ! Function reads portion of data from this VBO using glGetBufferSubData().
## ! @param theElemFrom [in] element id from which replace buffer data (>=0);
## ! @param theElemsNb  [in] elements count (theElemFrom + theElemsNb <= GetElemsNb());
## ! @param theData    [out] destination pointer to GLuint data. bool GetSubData ( const Handle ( OpenGl_Context ) & theGlCtx , const GLsizei theElemFrom , const GLsizei theElemsNb , GLuint * theData ) { return getSubData ( theGlCtx , theElemFrom , theElemsNb , theData , GL_UNSIGNED_INT ) ; } ! Notice that VBO will be unbound after this call.
## ! Function replaces portion of data within this VBO using glBufferSubData().
## ! The VBO should be initialized before call.
## ! @param theElemFrom element id from which replace buffer data (>=0);
## ! @param theElemsNb  elements count (theElemFrom + theElemsNb <= GetElemsNb());
## ! @param theData     pointer to GLushort data. bool SubData ( const Handle ( OpenGl_Context ) & theGlCtx , const GLsizei theElemFrom , const GLsizei theElemsNb , const GLushort * theData ) { return subData ( theGlCtx , theElemFrom , theElemsNb , theData , GL_UNSIGNED_SHORT ) ; } ! Read back buffer sub-range.
## ! Notice that VBO will be unbound after this call.
## ! Function reads portion of data from this VBO using glGetBufferSubData().
## ! @param theElemFrom [in] element id from which replace buffer data (>=0);
## ! @param theElemsNb  [in] elements count (theElemFrom + theElemsNb <= GetElemsNb());
## ! @param theData    [out] destination pointer to GLushort data. bool GetSubData ( const Handle ( OpenGl_Context ) & theGlCtx , const GLsizei theElemFrom , const GLsizei theElemsNb , GLushort * theData ) { return getSubData ( theGlCtx , theElemFrom , theElemsNb , theData , GL_UNSIGNED_SHORT ) ; } ! Notice that VBO will be unbound after this call.
## ! Function replaces portion of data within this VBO using glBufferSubData().
## ! The VBO should be initialized before call.
## ! @param theElemFrom element id from which replace buffer data (>=0);
## ! @param theElemsNb  elements count (theElemFrom + theElemsNb <= GetElemsNb());
## ! @param theData     pointer to GLubyte data. bool SubData ( const Handle ( OpenGl_Context ) & theGlCtx , const GLsizei theElemFrom , const GLsizei theElemsNb , const GLubyte * theData ) { return subData ( theGlCtx , theElemFrom , theElemsNb , theData , GL_UNSIGNED_BYTE ) ; } ! Read back buffer sub-range.
## ! Notice that VBO will be unbound after this call.
## ! Function reads portion of data from this VBO using glGetBufferSubData().
## ! @param theElemFrom [in] element id from which replace buffer data (>=0);
## ! @param theElemsNb  [in] elements count (theElemFrom + theElemsNb <= GetElemsNb());
## ! @param theData    [out] destination pointer to GLubyte data. bool GetSubData ( const Handle ( OpenGl_Context ) & theGlCtx , const GLsizei theElemFrom , const GLsizei theElemsNb , GLubyte * theData ) { return getSubData ( theGlCtx , theElemFrom , theElemsNb , theData , GL_UNSIGNED_BYTE ) ; } ! Bind this VBO to active GLSL program. void BindVertexAttrib ( const Handle ( OpenGl_Context ) & theGlCtx , const GLuint theAttribLoc ) const ; ! Unbind any VBO from active GLSL program. void UnbindVertexAttrib ( const Handle ( OpenGl_Context ) & theGlCtx , const GLuint theAttribLoc ) const ; ! Bind this VBO and enable specified attribute in OpenGl_Context::ActiveProgram() or FFP.
## ! @param theGlCtx - handle to bound GL context;
## ! @param theMode  - array mode (GL_VERTEX_ARRAY, GL_NORMAL_ARRAY, GL_COLOR_ARRAY, GL_INDEX_ARRAY, GL_TEXTURE_COORD_ARRAY). void BindAttribute ( const Handle ( OpenGl_Context ) & theCtx , const Graphic3d_TypeOfAttribute theMode ) const { if ( IsValid ( ) ) { Bind ( theCtx ) ; bindAttribute ( theCtx , theMode , static_cast < GLint > ( myComponentsNb ) , myDataType , 0 , myOffset ) ; } } ! Unbind this VBO and disable specified attribute in OpenGl_Context::ActiveProgram() or FFP.
## ! @param theCtx handle to bound GL context
## ! @param theMode  array mode void UnbindAttribute ( const Handle ( OpenGl_Context ) & theCtx , const Graphic3d_TypeOfAttribute theMode ) const { if ( IsValid ( ) ) { Unbind ( theCtx ) ; unbindAttribute ( theCtx , theMode ) ; } } public : ! @name advanced methods ! Returns estimated GPU memory usage for holding data without considering overheads and allocation alignment rules. virtual Standard_Size EstimatedDataSize ( ) const { return IsValid ( ) ? sizeOfGlType ( myDataType ) * myComponentsNb * myElemsNb : 0 ; } ! @return size of specified GL type static size_t sizeOfGlType ( const GLenum theType ) { switch ( theType ) { case GL_BYTE : case GL_UNSIGNED_BYTE : return sizeof ( GLubyte ) ; case GL_SHORT : case GL_UNSIGNED_SHORT : return sizeof ( GLushort ) ; # GL_INT [NewLine] case GL_INT : # [NewLine] case GL_UNSIGNED_INT : return sizeof ( GLuint ) ; case GL_FLOAT : return sizeof ( GLfloat ) ; # GL_DOUBLE [NewLine] case GL_DOUBLE : return sizeof ( GLdouble ) ; # [NewLine] default : return 0 ; } } ! Initialize buffer with new data. virtual bool init ( const Handle ( OpenGl_Context ) & theGlCtx , const GLuint theComponentsNb , const GLsizei theElemsNb , const void * theData , const GLenum theDataType , const GLsizei theStride ) ; ! Initialize buffer with new data. bool init ( const Handle ( OpenGl_Context ) & theGlCtx , const GLuint theComponentsNb , const GLsizei theElemsNb , const void * theData , const GLenum theDataType ) { return init ( theGlCtx , theComponentsNb , theElemsNb , theData , theDataType , GLsizei ( theComponentsNb ) * GLsizei ( sizeOfGlType ( theDataType ) ) ) ; } ! Update part of the buffer with new data. virtual bool subData ( const Handle ( OpenGl_Context ) & theGlCtx , const GLsizei theElemFrom , const GLsizei theElemsNb , const void * theData , const GLenum theDataType ) ; ! Read back buffer sub-range. virtual bool getSubData ( const Handle ( OpenGl_Context ) & theGlCtx , const GLsizei theElemFrom , const GLsizei theElemsNb , void * theData , const GLenum theDataType ) ; ! Setup array pointer - either for active GLSL program OpenGl_Context::ActiveProgram()
## ! or for FFP using bindFixed() when no program bound. static void bindAttribute ( const Handle ( OpenGl_Context ) & theGlCtx , const Graphic3d_TypeOfAttribute theMode , const GLint theNbComp , const GLenum theDataType , const GLsizei theStride , const GLvoid * theOffset ) ; ! Disable GLSL array pointer - either for active GLSL program OpenGl_Context::ActiveProgram()
## ! or for FFP using unbindFixed() when no program bound. static void unbindAttribute ( const Handle ( OpenGl_Context ) & theGlCtx , const Graphic3d_TypeOfAttribute theMode ) ; private : # ! defined ( GL_ES_VERSION_2_0 ) [NewLine] ! Setup FFP array pointer. static void bindFixed ( const Handle ( OpenGl_Context ) & theGlCtx , const Graphic3d_TypeOfAttribute theMode , const GLint theNbComp , const GLenum theDataType , const GLsizei theStride , const GLvoid * theOffset ) ; ! Disable FFP array pointer. static void unbindFixed ( const Handle ( OpenGl_Context ) & theGlCtx , const Graphic3d_TypeOfAttribute theMode ) ; ! Disable FFP color array pointer. static void unbindFixedColor ( const Handle ( OpenGl_Context ) & theCtx ) ; # [NewLine] public : ! @name methods for interleaved attributes array ! @return true if buffer contains per-vertex color attribute virtual bool HasColorAttribute ( ) const ; ! @return true if buffer contains per-vertex normal attribute virtual bool HasNormalAttribute ( ) const ; ! Bind all vertex attributes to active program OpenGl_Context::ActiveProgram() or for FFP.
## ! Default implementation does nothing. virtual void BindAllAttributes ( const Handle ( OpenGl_Context ) & theGlCtx ) const ; ! Bind vertex position attribute only. Default implementation does nothing. virtual void BindPositionAttribute ( const Handle ( OpenGl_Context ) & theGlCtx ) const ; ! Unbind all vertex attributes. Default implementation does nothing. virtual void UnbindAllAttributes ( const Handle ( OpenGl_Context ) & theGlCtx ) const ; ! Dumps the content of me into the stream virtual void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const ; protected : GLubyte * myOffset ; !< offset to data GLuint myBufferId ; !< VBO name (index) GLuint myComponentsNb ; !< Number of components per generic vertex attribute, must be 1, 2, 3, or 4 GLsizei myElemsNb ; !< Number of vertex attributes / number of vertices GLenum myDataType ; !< Data type (GL_FLOAT, GL_UNSIGNED_INT, GL_UNSIGNED_BYTE etc.) public : public : typedef OpenGl_Resource base_type ; static const char * get_type_name ( ) { return OpenGl_VertexBuffer ; } static const Handle ( Standard_Type ) & get_type_descriptor ( ) ; virtual const Handle ( Standard_Type ) & DynamicType ( ) const ;  Type definition } ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( OpenGl_VertexBuffer , OpenGl_Resource ) # < OpenGl_VertexBuffer . lxx > [NewLine] #  _OpenGl_VertexBuffer_H__
## Error: expected ';'!!!













































