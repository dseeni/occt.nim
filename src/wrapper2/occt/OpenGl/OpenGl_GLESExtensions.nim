type
  GLdouble* = cdouble
  GLclampd* = cdouble

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLREADBUFFERPROC ) ( GLenum src ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDRAWRANGEELEMENTSPROC ) ( GLenum mode , GLuint start , GLuint end , GLsizei count , GLenum type , const void * indices ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLTEXIMAGE3DPROC ) ( GLenum target , GLint level , GLint internalformat , GLsizei width , GLsizei height , GLsizei depth , GLint border , GLenum format , GLenum type , const void * pixels ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLTEXSUBIMAGE3DPROC ) ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLenum type , const void * pixels ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLCOPYTEXSUBIMAGE3DPROC ) ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLint x , GLint y , GLsizei width , GLsizei height ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLCOMPRESSEDTEXIMAGE3DPROC ) ( GLenum target , GLint level , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLint border , GLsizei imageSize , const void * data ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC ) ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint zoffset , GLsizei width , GLsizei height , GLsizei depth , GLenum format , GLsizei imageSize , const void * data ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGENQUERIESPROC ) ( GLsizei n , GLuint * ids ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDELETEQUERIESPROC ) ( GLsizei n , const GLuint * ids ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLboolean ( GL_APIENTRY * PFNGLISQUERYPROC ) ( GLuint id ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBEGINQUERYPROC ) ( GLenum target , GLuint id ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLENDQUERYPROC ) ( GLenum target ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETQUERYIVPROC ) ( GLenum target , GLenum pname , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETQUERYOBJECTUIVPROC ) ( GLuint id , GLenum pname , GLuint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLboolean ( GL_APIENTRY * PFNGLUNMAPBUFFERPROC ) ( GLenum target ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETBUFFERPOINTERVPROC ) ( GLenum target , GLenum pname , void * * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDRAWBUFFERSPROC ) ( GLsizei n , const GLenum * bufs ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORMMATRIX2X3FVPROC ) ( GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORMMATRIX3X2FVPROC ) ( GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORMMATRIX2X4FVPROC ) ( GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORMMATRIX4X2FVPROC ) ( GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORMMATRIX3X4FVPROC ) ( GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORMMATRIX4X3FVPROC ) ( GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBLITFRAMEBUFFERPROC ) ( GLint srcX0 , GLint srcY0 , GLint srcX1 , GLint srcY1 , GLint dstX0 , GLint dstY0 , GLint dstX1 , GLint dstY1 , GLbitfield mask , GLenum filter ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC ) ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLFRAMEBUFFERTEXTURELAYERPROC ) ( GLenum target , GLenum attachment , GLuint texture , GLint level , GLint layer ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void * ( GL_APIENTRY * PFNGLMAPBUFFERRANGEPROC ) ( GLenum target , GLintptr offset , GLsizeiptr length , GLbitfield access ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLFLUSHMAPPEDBUFFERRANGEPROC ) ( GLenum target , GLintptr offset , GLsizeiptr length ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBINDVERTEXARRAYPROC ) ( GLuint array ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDELETEVERTEXARRAYSPROC ) ( GLsizei n , const GLuint * arrays ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGENVERTEXARRAYSPROC ) ( GLsizei n , GLuint * arrays ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLboolean ( GL_APIENTRY * PFNGLISVERTEXARRAYPROC ) ( GLuint array ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETINTEGERI_VPROC ) ( GLenum target , GLuint index , GLint * data ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBEGINTRANSFORMFEEDBACKPROC ) ( GLenum primitiveMode ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLENDTRANSFORMFEEDBACKPROC ) ( void ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBINDBUFFERRANGEPROC ) ( GLenum target , GLuint index , GLuint buffer , GLintptr offset , GLsizeiptr size ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBINDBUFFERBASEPROC ) ( GLenum target , GLuint index , GLuint buffer ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLTRANSFORMFEEDBACKVARYINGSPROC ) ( GLuint program , GLsizei count , const GLchar * const * varyings , GLenum bufferMode ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETTRANSFORMFEEDBACKVARYINGPROC ) ( GLuint program , GLuint index , GLsizei bufSize , GLsizei * length , GLsizei * size , GLenum * type , GLchar * name ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLVERTEXATTRIBIPOINTERPROC ) ( GLuint index , GLint size , GLenum type , GLsizei stride , const void * pointer ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETVERTEXATTRIBIIVPROC ) ( GLuint index , GLenum pname , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETVERTEXATTRIBIUIVPROC ) ( GLuint index , GLenum pname , GLuint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLVERTEXATTRIBI4IPROC ) ( GLuint index , GLint x , GLint y , GLint z , GLint w ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLVERTEXATTRIBI4UIPROC ) ( GLuint index , GLuint x , GLuint y , GLuint z , GLuint w ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLVERTEXATTRIBI4IVPROC ) ( GLuint index , const GLint * v ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLVERTEXATTRIBI4UIVPROC ) ( GLuint index , const GLuint * v ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETUNIFORMUIVPROC ) ( GLuint program , GLint location , GLuint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLint ( GL_APIENTRY * PFNGLGETFRAGDATALOCATIONPROC ) ( GLuint program , const GLchar * name ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORM1UIPROC ) ( GLint location , GLuint v0 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORM2UIPROC ) ( GLint location , GLuint v0 , GLuint v1 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORM3UIPROC ) ( GLint location , GLuint v0 , GLuint v1 , GLuint v2 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORM4UIPROC ) ( GLint location , GLuint v0 , GLuint v1 , GLuint v2 , GLuint v3 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORM1UIVPROC ) ( GLint location , GLsizei count , const GLuint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORM2UIVPROC ) ( GLint location , GLsizei count , const GLuint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORM3UIVPROC ) ( GLint location , GLsizei count , const GLuint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORM4UIVPROC ) ( GLint location , GLsizei count , const GLuint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLCLEARBUFFERIVPROC ) ( GLenum buffer , GLint drawbuffer , const GLint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLCLEARBUFFERUIVPROC ) ( GLenum buffer , GLint drawbuffer , const GLuint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLCLEARBUFFERFVPROC ) ( GLenum buffer , GLint drawbuffer , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLCLEARBUFFERFIPROC ) ( GLenum buffer , GLint drawbuffer , GLfloat depth , GLint stencil ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef const GLubyte * ( GL_APIENTRY * PFNGLGETSTRINGIPROC ) ( GLenum name , GLuint index ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLCOPYBUFFERSUBDATAPROC ) ( GLenum readTarget , GLenum writeTarget , GLintptr readOffset , GLintptr writeOffset , GLsizeiptr size ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETUNIFORMINDICESPROC ) ( GLuint program , GLsizei uniformCount , const GLchar * const * uniformNames , GLuint * uniformIndices ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETACTIVEUNIFORMSIVPROC ) ( GLuint program , GLsizei uniformCount , const GLuint * uniformIndices , GLenum pname , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLuint ( GL_APIENTRY * PFNGLGETUNIFORMBLOCKINDEXPROC ) ( GLuint program , const GLchar * uniformBlockName ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETACTIVEUNIFORMBLOCKIVPROC ) ( GLuint program , GLuint uniformBlockIndex , GLenum pname , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC ) ( GLuint program , GLuint uniformBlockIndex , GLsizei bufSize , GLsizei * length , GLchar * uniformBlockName ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUNIFORMBLOCKBINDINGPROC ) ( GLuint program , GLuint uniformBlockIndex , GLuint uniformBlockBinding ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDRAWARRAYSINSTANCEDPROC ) ( GLenum mode , GLint first , GLsizei count , GLsizei instancecount ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDRAWELEMENTSINSTANCEDPROC ) ( GLenum mode , GLsizei count , GLenum type , const void * indices , GLsizei instancecount ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLsync ( GL_APIENTRY * PFNGLFENCESYNCPROC ) ( GLenum condition , GLbitfield flags ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLboolean ( GL_APIENTRY * PFNGLISSYNCPROC ) ( GLsync sync ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDELETESYNCPROC ) ( GLsync sync ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLenum ( GL_APIENTRY * PFNGLCLIENTWAITSYNCPROC ) ( GLsync sync , GLbitfield flags , GLuint64 timeout ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLWAITSYNCPROC ) ( GLsync sync , GLbitfield flags , GLuint64 timeout ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETINTEGER64VPROC ) ( GLenum pname , GLint64 * data ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETSYNCIVPROC ) ( GLsync sync , GLenum pname , GLsizei bufSize , GLsizei * length , GLint * values ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETINTEGER64I_VPROC ) ( GLenum target , GLuint index , GLint64 * data ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETBUFFERPARAMETERI64VPROC ) ( GLenum target , GLenum pname , GLint64 * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGENSAMPLERSPROC ) ( GLsizei count , GLuint * samplers ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDELETESAMPLERSPROC ) ( GLsizei count , const GLuint * samplers ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLboolean ( GL_APIENTRY * PFNGLISSAMPLERPROC ) ( GLuint sampler ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBINDSAMPLERPROC ) ( GLuint unit , GLuint sampler ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLSAMPLERPARAMETERIPROC ) ( GLuint sampler , GLenum pname , GLint param ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLSAMPLERPARAMETERIVPROC ) ( GLuint sampler , GLenum pname , const GLint * param ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLSAMPLERPARAMETERFPROC ) ( GLuint sampler , GLenum pname , GLfloat param ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLSAMPLERPARAMETERFVPROC ) ( GLuint sampler , GLenum pname , const GLfloat * param ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETSAMPLERPARAMETERIVPROC ) ( GLuint sampler , GLenum pname , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETSAMPLERPARAMETERFVPROC ) ( GLuint sampler , GLenum pname , GLfloat * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLVERTEXATTRIBDIVISORPROC ) ( GLuint index , GLuint divisor ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBINDTRANSFORMFEEDBACKPROC ) ( GLenum target , GLuint id ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDELETETRANSFORMFEEDBACKSPROC ) ( GLsizei n , const GLuint * ids ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGENTRANSFORMFEEDBACKSPROC ) ( GLsizei n , GLuint * ids ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLboolean ( GL_APIENTRY * PFNGLISTRANSFORMFEEDBACKPROC ) ( GLuint id ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPAUSETRANSFORMFEEDBACKPROC ) ( void ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLRESUMETRANSFORMFEEDBACKPROC ) ( void ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETPROGRAMBINARYPROC ) ( GLuint program , GLsizei bufSize , GLsizei * length , GLenum * binaryFormat , void * binary ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMBINARYPROC ) ( GLuint program , GLenum binaryFormat , const void * binary , GLsizei length ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMPARAMETERIPROC ) ( GLuint program , GLenum pname , GLint value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLINVALIDATEFRAMEBUFFERPROC ) ( GLenum target , GLsizei numAttachments , const GLenum * attachments ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLINVALIDATESUBFRAMEBUFFERPROC ) ( GLenum target , GLsizei numAttachments , const GLenum * attachments , GLint x , GLint y , GLsizei width , GLsizei height ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLTEXSTORAGE2DPROC ) ( GLenum target , GLsizei levels , GLenum internalformat , GLsizei width , GLsizei height ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLTEXSTORAGE3DPROC ) ( GLenum target , GLsizei levels , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETINTERNALFORMATIVPROC ) ( GLenum target , GLenum internalformat , GLenum pname , GLsizei bufSize , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDISPATCHCOMPUTEPROC ) ( GLuint num_groups_x , GLuint num_groups_y , GLuint num_groups_z ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDISPATCHCOMPUTEINDIRECTPROC ) ( GLintptr indirect ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDRAWARRAYSINDIRECTPROC ) ( GLenum mode , const void * indirect ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDRAWELEMENTSINDIRECTPROC ) ( GLenum mode , GLenum type , const void * indirect ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLFRAMEBUFFERPARAMETERIPROC ) ( GLenum target , GLenum pname , GLint param ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETFRAMEBUFFERPARAMETERIVPROC ) ( GLenum target , GLenum pname , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETPROGRAMINTERFACEIVPROC ) ( GLuint program , GLenum programInterface , GLenum pname , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLuint ( GL_APIENTRY * PFNGLGETPROGRAMRESOURCEINDEXPROC ) ( GLuint program , GLenum programInterface , const GLchar * name ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETPROGRAMRESOURCENAMEPROC ) ( GLuint program , GLenum programInterface , GLuint index , GLsizei bufSize , GLsizei * length , GLchar * name ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETPROGRAMRESOURCEIVPROC ) ( GLuint program , GLenum programInterface , GLuint index , GLsizei propCount , const GLenum * props , GLsizei bufSize , GLsizei * length , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLint ( GL_APIENTRY * PFNGLGETPROGRAMRESOURCELOCATIONPROC ) ( GLuint program , GLenum programInterface , const GLchar * name ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLUSEPROGRAMSTAGESPROC ) ( GLuint pipeline , GLbitfield stages , GLuint program ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLACTIVESHADERPROGRAMPROC ) ( GLuint pipeline , GLuint program ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLuint ( GL_APIENTRY * PFNGLCREATESHADERPROGRAMVPROC ) ( GLenum type , GLsizei count , const GLchar * const * strings ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBINDPROGRAMPIPELINEPROC ) ( GLuint pipeline ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDELETEPROGRAMPIPELINESPROC ) ( GLsizei n , const GLuint * pipelines ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGENPROGRAMPIPELINESPROC ) ( GLsizei n , GLuint * pipelines ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLboolean ( GL_APIENTRY * PFNGLISPROGRAMPIPELINEPROC ) ( GLuint pipeline ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETPROGRAMPIPELINEIVPROC ) ( GLuint pipeline , GLenum pname , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM1IPROC ) ( GLuint program , GLint location , GLint v0 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM2IPROC ) ( GLuint program , GLint location , GLint v0 , GLint v1 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM3IPROC ) ( GLuint program , GLint location , GLint v0 , GLint v1 , GLint v2 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM4IPROC ) ( GLuint program , GLint location , GLint v0 , GLint v1 , GLint v2 , GLint v3 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM1UIPROC ) ( GLuint program , GLint location , GLuint v0 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM2UIPROC ) ( GLuint program , GLint location , GLuint v0 , GLuint v1 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM3UIPROC ) ( GLuint program , GLint location , GLuint v0 , GLuint v1 , GLuint v2 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM4UIPROC ) ( GLuint program , GLint location , GLuint v0 , GLuint v1 , GLuint v2 , GLuint v3 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM1FPROC ) ( GLuint program , GLint location , GLfloat v0 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM2FPROC ) ( GLuint program , GLint location , GLfloat v0 , GLfloat v1 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM3FPROC ) ( GLuint program , GLint location , GLfloat v0 , GLfloat v1 , GLfloat v2 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM4FPROC ) ( GLuint program , GLint location , GLfloat v0 , GLfloat v1 , GLfloat v2 , GLfloat v3 ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM1IVPROC ) ( GLuint program , GLint location , GLsizei count , const GLint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM2IVPROC ) ( GLuint program , GLint location , GLsizei count , const GLint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM3IVPROC ) ( GLuint program , GLint location , GLsizei count , const GLint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM4IVPROC ) ( GLuint program , GLint location , GLsizei count , const GLint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM1UIVPROC ) ( GLuint program , GLint location , GLsizei count , const GLuint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM2UIVPROC ) ( GLuint program , GLint location , GLsizei count , const GLuint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM3UIVPROC ) ( GLuint program , GLint location , GLsizei count , const GLuint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM4UIVPROC ) ( GLuint program , GLint location , GLsizei count , const GLuint * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM1FVPROC ) ( GLuint program , GLint location , GLsizei count , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM2FVPROC ) ( GLuint program , GLint location , GLsizei count , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM3FVPROC ) ( GLuint program , GLint location , GLsizei count , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORM4FVPROC ) ( GLuint program , GLint location , GLsizei count , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORMMATRIX2FVPROC ) ( GLuint program , GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORMMATRIX3FVPROC ) ( GLuint program , GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORMMATRIX4FVPROC ) ( GLuint program , GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC ) ( GLuint program , GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC ) ( GLuint program , GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC ) ( GLuint program , GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC ) ( GLuint program , GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC ) ( GLuint program , GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC ) ( GLuint program , GLint location , GLsizei count , GLboolean transpose , const GLfloat * value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLVALIDATEPROGRAMPIPELINEPROC ) ( GLuint pipeline ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETPROGRAMPIPELINEINFOLOGPROC ) ( GLuint pipeline , GLsizei bufSize , GLsizei * length , GLchar * infoLog ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBINDIMAGETEXTUREPROC ) ( GLuint unit , GLuint texture , GLint level , GLboolean layered , GLint layer , GLenum access , GLenum format ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETBOOLEANI_VPROC ) ( GLenum target , GLuint index , GLboolean * data ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLMEMORYBARRIERPROC ) ( GLbitfield barriers ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLMEMORYBARRIERBYREGIONPROC ) ( GLbitfield barriers ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLTEXSTORAGE2DMULTISAMPLEPROC ) ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height , GLboolean fixedsamplelocations ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETMULTISAMPLEFVPROC ) ( GLenum pname , GLuint index , GLfloat * val ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLSAMPLEMASKIPROC ) ( GLuint maskNumber , GLbitfield mask ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETTEXLEVELPARAMETERIVPROC ) ( GLenum target , GLint level , GLenum pname , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETTEXLEVELPARAMETERFVPROC ) ( GLenum target , GLint level , GLenum pname , GLfloat * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBINDVERTEXBUFFERPROC ) ( GLuint bindingindex , GLuint buffer , GLintptr offset , GLsizei stride ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLVERTEXATTRIBFORMATPROC ) ( GLuint attribindex , GLint size , GLenum type , GLboolean normalized , GLuint relativeoffset ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLVERTEXATTRIBIFORMATPROC ) ( GLuint attribindex , GLint size , GLenum type , GLuint relativeoffset ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLVERTEXATTRIBBINDINGPROC ) ( GLuint attribindex , GLuint bindingindex ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLVERTEXBINDINGDIVISORPROC ) ( GLuint bindingindex , GLuint divisor ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * GLDEBUGPROC ) ( GLenum source , GLenum type , GLuint id , GLenum severity , GLsizei length , const GLchar * message , const void * userParam ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBLENDBARRIERPROC ) ( void ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLCOPYIMAGESUBDATAPROC ) ( GLuint srcName , GLenum srcTarget , GLint srcLevel , GLint srcX , GLint srcY , GLint srcZ , GLuint dstName , GLenum dstTarget , GLint dstLevel , GLint dstX , GLint dstY , GLint dstZ , GLsizei srcWidth , GLsizei srcHeight , GLsizei srcDepth ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDEBUGMESSAGECONTROLPROC ) ( GLenum source , GLenum type , GLenum severity , GLsizei count , const GLuint * ids , GLboolean enabled ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDEBUGMESSAGEINSERTPROC ) ( GLenum source , GLenum type , GLuint id , GLenum severity , GLsizei length , const GLchar * buf ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDEBUGMESSAGECALLBACKPROC ) ( GLDEBUGPROC callback , const void * userParam ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLuint ( GL_APIENTRY * PFNGLGETDEBUGMESSAGELOGPROC ) ( GLuint count , GLsizei bufSize , GLenum * sources , GLenum * types , GLuint * ids , GLenum * severities , GLsizei * lengths , GLchar * messageLog ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPUSHDEBUGGROUPPROC ) ( GLenum source , GLuint id , GLsizei length , const GLchar * message ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPOPDEBUGGROUPPROC ) ( void ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLOBJECTLABELPROC ) ( GLenum identifier , GLuint name , GLsizei length , const GLchar * label ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETOBJECTLABELPROC ) ( GLenum identifier , GLuint name , GLsizei bufSize , GLsizei * length , GLchar * label ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLOBJECTPTRLABELPROC ) ( const void * ptr , GLsizei length , const GLchar * label ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETOBJECTPTRLABELPROC ) ( const void * ptr , GLsizei bufSize , GLsizei * length , GLchar * label ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETPOINTERVPROC ) ( GLenum pname , void * * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLENABLEIPROC ) ( GLenum target , GLuint index ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDISABLEIPROC ) ( GLenum target , GLuint index ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBLENDEQUATIONIPROC ) ( GLuint buf , GLenum mode ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBLENDEQUATIONSEPARATEIPROC ) ( GLuint buf , GLenum modeRGB , GLenum modeAlpha ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBLENDFUNCIPROC ) ( GLuint buf , GLenum src , GLenum dst ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLBLENDFUNCSEPARATEIPROC ) ( GLuint buf , GLenum srcRGB , GLenum dstRGB , GLenum srcAlpha , GLenum dstAlpha ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLCOLORMASKIPROC ) ( GLuint index , GLboolean r , GLboolean g , GLboolean b , GLboolean a ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLboolean ( GL_APIENTRY * PFNGLISENABLEDIPROC ) ( GLenum target , GLuint index ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDRAWELEMENTSBASEVERTEXPROC ) ( GLenum mode , GLsizei count , GLenum type , const void * indices , GLint basevertex ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC ) ( GLenum mode , GLuint start , GLuint end , GLsizei count , GLenum type , const void * indices , GLint basevertex ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC ) ( GLenum mode , GLsizei count , GLenum type , const void * indices , GLsizei instancecount , GLint basevertex ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLFRAMEBUFFERTEXTUREPROC ) ( GLenum target , GLenum attachment , GLuint texture , GLint level ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPRIMITIVEBOUNDINGBOXPROC ) ( GLfloat minX , GLfloat minY , GLfloat minZ , GLfloat minW , GLfloat maxX , GLfloat maxY , GLfloat maxZ , GLfloat maxW ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef GLenum ( GL_APIENTRY * PFNGLGETGRAPHICSRESETSTATUSPROC ) ( void ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLREADNPIXELSPROC ) ( GLint x , GLint y , GLsizei width , GLsizei height , GLenum format , GLenum type , GLsizei bufSize , void * data ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETNUNIFORMFVPROC ) ( GLuint program , GLint location , GLsizei bufSize , GLfloat * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETNUNIFORMIVPROC ) ( GLuint program , GLint location , GLsizei bufSize , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETNUNIFORMUIVPROC ) ( GLuint program , GLint location , GLsizei bufSize , GLuint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLMINSAMPLESHADINGPROC ) ( GLfloat value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLPATCHPARAMETERIPROC ) ( GLenum pname , GLint value ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLTEXPARAMETERIIVPROC ) ( GLenum target , GLenum pname , const GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLTEXPARAMETERIUIVPROC ) ( GLenum target , GLenum pname , const GLuint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETTEXPARAMETERIIVPROC ) ( GLenum target , GLenum pname , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETTEXPARAMETERIUIVPROC ) ( GLenum target , GLenum pname , GLuint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLSAMPLERPARAMETERIIVPROC ) ( GLuint sampler , GLenum pname , const GLint * param ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLSAMPLERPARAMETERIUIVPROC ) ( GLuint sampler , GLenum pname , const GLuint * param ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETSAMPLERPARAMETERIIVPROC ) ( GLuint sampler , GLenum pname , GLint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLGETSAMPLERPARAMETERIUIVPROC ) ( GLuint sampler , GLenum pname , GLuint * params ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLTEXBUFFERPROC ) ( GLenum target , GLenum internalformat , GLuint buffer ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLTEXBUFFERRANGEPROC ) ( GLenum target , GLenum internalformat , GLuint buffer , GLintptr offset , GLsizeiptr size ) ;
## Error: token expected: :: but got: *!!!

## !!!Ignored construct:  typedef void ( GL_APIENTRY * PFNGLTEXSTORAGE3DMULTISAMPLEPROC ) ( GLenum target , GLsizei samples , GLenum internalformat , GLsizei width , GLsizei height , GLsizei depth , GLboolean fixedsamplelocations ) ;
## Error: token expected: :: but got: *!!!
