// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles
// import java.nio.Buffer
// import java.nio.FloatBuffer
// import java.nio.IntBuffer

public interface GL10 : JObject, GL {
    public const int32 GL_ADD = 260;
    public const int32 GL_ALIASED_LINE_WIDTH_RANGE = 33902;
    public const int32 GL_ALIASED_POINT_SIZE_RANGE = 33901;
    public const int32 GL_ALPHA = 6406;
    public const int32 GL_ALPHA_BITS = 3413;
    public const int32 GL_ALPHA_TEST = 3008;
    public const int32 GL_ALWAYS = 519;
    public const int32 GL_AMBIENT = 4608;
    public const int32 GL_AMBIENT_AND_DIFFUSE = 5634;
    public const int32 GL_AND = 5377;
    public const int32 GL_AND_INVERTED = 5380;
    public const int32 GL_AND_REVERSE = 5378;
    public const int32 GL_BACK = 1029;
    public const int32 GL_BLEND = 3042;
    public const int32 GL_BLUE_BITS = 3412;
    public const int32 GL_BYTE = 5120;
    public const int32 GL_CCW = 2305;
    public const int32 GL_CLAMP_TO_EDGE = 33071;
    public const int32 GL_CLEAR = 5376;
    public const int32 GL_COLOR_ARRAY = 32886;
    public const int32 GL_COLOR_BUFFER_BIT = 16384;
    public const int32 GL_COLOR_LOGIC_OP = 3058;
    public const int32 GL_COLOR_MATERIAL = 2903;
    public const int32 GL_COMPRESSED_TEXTURE_FORMATS = 34467;
    public const int32 GL_CONSTANT_ATTENUATION = 4615;
    public const int32 GL_COPY = 5379;
    public const int32 GL_COPY_INVERTED = 5388;
    public const int32 GL_CULL_FACE = 2884;
    public const int32 GL_CW = 2304;
    public const int32 GL_DECAL = 8449;
    public const int32 GL_DECR = 7683;
    public const int32 GL_DEPTH_BITS = 3414;
    public const int32 GL_DEPTH_BUFFER_BIT = 256;
    public const int32 GL_DEPTH_TEST = 2929;
    public const int32 GL_DIFFUSE = 4609;
    public const int32 GL_DITHER = 3024;
    public const int32 GL_DONT_CARE = 4352;
    public const int32 GL_DST_ALPHA = 772;
    public const int32 GL_DST_COLOR = 774;
    public const int32 GL_EMISSION = 5632;
    public const int32 GL_EQUAL = 514;
    public const int32 GL_EQUIV = 5385;
    public const int32 GL_EXP = 2048;
    public const int32 GL_EXP2 = 2049;
    public const int32 GL_EXTENSIONS = 7939;
    public const int32 GL_FALSE = 0;
    public const int32 GL_FASTEST = 4353;
    public const int32 GL_FIXED = 5132;
    public const int32 GL_FLAT = 7424;
    public const int32 GL_FLOAT = 5126;
    public const int32 GL_FOG = 2912;
    public const int32 GL_FOG_COLOR = 2918;
    public const int32 GL_FOG_DENSITY = 2914;
    public const int32 GL_FOG_END = 2916;
    public const int32 GL_FOG_HINT = 3156;
    public const int32 GL_FOG_MODE = 2917;
    public const int32 GL_FOG_START = 2915;
    public const int32 GL_FRONT = 1028;
    public const int32 GL_FRONT_AND_BACK = 1032;
    public const int32 GL_GEQUAL = 518;
    public const int32 GL_GREATER = 516;
    public const int32 GL_GREEN_BITS = 3411;
    public const int32 GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = 35739;
    public const int32 GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = 35738;
    public const int32 GL_INCR = 7682;
    public const int32 GL_INVALID_ENUM = 1280;
    public const int32 GL_INVALID_OPERATION = 1282;
    public const int32 GL_INVALID_VALUE = 1281;
    public const int32 GL_INVERT = 5386;
    public const int32 GL_KEEP = 7680;
    public const int32 GL_LEQUAL = 515;
    public const int32 GL_LESS = 513;
    public const int32 GL_LIGHT_MODEL_AMBIENT = 2899;
    public const int32 GL_LIGHT_MODEL_TWO_SIDE = 2898;
    public const int32 GL_LIGHT0 = 16384;
    public const int32 GL_LIGHT1 = 16385;
    public const int32 GL_LIGHT2 = 16386;
    public const int32 GL_LIGHT3 = 16387;
    public const int32 GL_LIGHT4 = 16388;
    public const int32 GL_LIGHT5 = 16389;
    public const int32 GL_LIGHT6 = 16390;
    public const int32 GL_LIGHT7 = 16391;
    public const int32 GL_LIGHTING = 2896;
    public const int32 GL_LINE_LOOP = 2;
    public const int32 GL_LINE_SMOOTH = 2848;
    public const int32 GL_LINE_SMOOTH_HINT = 3154;
    public const int32 GL_LINE_STRIP = 3;
    public const int32 GL_LINEAR = 9729;
    public const int32 GL_LINEAR_ATTENUATION = 4616;
    public const int32 GL_LINEAR_MIPMAP_LINEAR = 9987;
    public const int32 GL_LINEAR_MIPMAP_NEAREST = 9985;
    public const int32 GL_LINES = 1;
    public const int32 GL_LUMINANCE = 6409;
    public const int32 GL_LUMINANCE_ALPHA = 6410;
    public const int32 GL_MAX_ELEMENTS_INDICES = 33001;
    public const int32 GL_MAX_ELEMENTS_VERTICES = 33000;
    public const int32 GL_MAX_LIGHTS = 3377;
    public const int32 GL_MAX_MODELVIEW_STACK_DEPTH = 3382;
    public const int32 GL_MAX_PROJECTION_STACK_DEPTH = 3384;
    public const int32 GL_MAX_TEXTURE_SIZE = 3379;
    public const int32 GL_MAX_TEXTURE_STACK_DEPTH = 3385;
    public const int32 GL_MAX_TEXTURE_UNITS = 34018;
    public const int32 GL_MAX_VIEWPORT_DIMS = 3386;
    public const int32 GL_MODELVIEW = 5888;
    public const int32 GL_MODULATE = 8448;
    public const int32 GL_MULTISAMPLE = 32925;
    public const int32 GL_NAND = 5390;
    public const int32 GL_NEAREST = 9728;
    public const int32 GL_NEAREST_MIPMAP_LINEAR = 9986;
    public const int32 GL_NEAREST_MIPMAP_NEAREST = 9984;
    public const int32 GL_NEVER = 512;
    public const int32 GL_NICEST = 4354;
    public const int32 GL_NO_ERROR = 0;
    public const int32 GL_NOOP = 5381;
    public const int32 GL_NOR = 5384;
    public const int32 GL_NORMAL_ARRAY = 32885;
    public const int32 GL_NORMALIZE = 2977;
    public const int32 GL_NOTEQUAL = 517;
    public const int32 GL_NUM_COMPRESSED_TEXTURE_FORMATS = 34466;
    public const int32 GL_ONE = 1;
    public const int32 GL_ONE_MINUS_DST_ALPHA = 773;
    public const int32 GL_ONE_MINUS_DST_COLOR = 775;
    public const int32 GL_ONE_MINUS_SRC_ALPHA = 771;
    public const int32 GL_ONE_MINUS_SRC_COLOR = 769;
    public const int32 GL_OR = 5383;
    public const int32 GL_OR_INVERTED = 5389;
    public const int32 GL_OR_REVERSE = 5387;
    public const int32 GL_OUT_OF_MEMORY = 1285;
    public const int32 GL_PACK_ALIGNMENT = 3333;
    public const int32 GL_PALETTE4_R5_G6_B5_OES = 35730;
    public const int32 GL_PALETTE4_RGB5_A1_OES = 35732;
    public const int32 GL_PALETTE4_RGB8_OES = 35728;
    public const int32 GL_PALETTE4_RGBA4_OES = 35731;
    public const int32 GL_PALETTE4_RGBA8_OES = 35729;
    public const int32 GL_PALETTE8_R5_G6_B5_OES = 35735;
    public const int32 GL_PALETTE8_RGB5_A1_OES = 35737;
    public const int32 GL_PALETTE8_RGB8_OES = 35733;
    public const int32 GL_PALETTE8_RGBA4_OES = 35736;
    public const int32 GL_PALETTE8_RGBA8_OES = 35734;
    public const int32 GL_PERSPECTIVE_CORRECTION_HINT = 3152;
    public const int32 GL_POINT_SMOOTH = 2832;
    public const int32 GL_POINT_SMOOTH_HINT = 3153;
    public const int32 GL_POINTS = 0;
    public const int32 GL_POINT_FADE_THRESHOLD_SIZE = 33064;
    public const int32 GL_POINT_SIZE = 2833;
    public const int32 GL_POLYGON_OFFSET_FILL = 32823;
    public const int32 GL_POLYGON_SMOOTH_HINT = 3155;
    public const int32 GL_POSITION = 4611;
    public const int32 GL_PROJECTION = 5889;
    public const int32 GL_QUADRATIC_ATTENUATION = 4617;
    public const int32 GL_RED_BITS = 3410;
    public const int32 GL_RENDERER = 7937;
    public const int32 GL_REPEAT = 10497;
    public const int32 GL_REPLACE = 7681;
    public const int32 GL_RESCALE_NORMAL = 32826;
    public const int32 GL_RGB = 6407;
    public const int32 GL_RGBA = 6408;
    public const int32 GL_SAMPLE_ALPHA_TO_COVERAGE = 32926;
    public const int32 GL_SAMPLE_ALPHA_TO_ONE = 32927;
    public const int32 GL_SAMPLE_COVERAGE = 32928;
    public const int32 GL_SCISSOR_TEST = 3089;
    public const int32 GL_SET = 5391;
    public const int32 GL_SHININESS = 5633;
    public const int32 GL_SHORT = 5122;
    public const int32 GL_SMOOTH = 7425;
    public const int32 GL_SMOOTH_LINE_WIDTH_RANGE = 2850;
    public const int32 GL_SMOOTH_POINT_SIZE_RANGE = 2834;
    public const int32 GL_SPECULAR = 4610;
    public const int32 GL_SPOT_CUTOFF = 4614;
    public const int32 GL_SPOT_DIRECTION = 4612;
    public const int32 GL_SPOT_EXPONENT = 4613;
    public const int32 GL_SRC_ALPHA = 770;
    public const int32 GL_SRC_ALPHA_SATURATE = 776;
    public const int32 GL_SRC_COLOR = 768;
    public const int32 GL_STACK_OVERFLOW = 1283;
    public const int32 GL_STACK_UNDERFLOW = 1284;
    public const int32 GL_STENCIL_BITS = 3415;
    public const int32 GL_STENCIL_BUFFER_BIT = 1024;
    public const int32 GL_STENCIL_TEST = 2960;
    public const int32 GL_SUBPIXEL_BITS = 3408;
    public const int32 GL_TEXTURE = 5890;
    public const int32 GL_TEXTURE_2D = 3553;
    public const int32 GL_TEXTURE_COORD_ARRAY = 32888;
    public const int32 GL_TEXTURE_ENV = 8960;
    public const int32 GL_TEXTURE_ENV_COLOR = 8705;
    public const int32 GL_TEXTURE_ENV_MODE = 8704;
    public const int32 GL_TEXTURE_MAG_FILTER = 10240;
    public const int32 GL_TEXTURE_MIN_FILTER = 10241;
    public const int32 GL_TEXTURE_WRAP_S = 10242;
    public const int32 GL_TEXTURE_WRAP_T = 10243;
    public const int32 GL_TEXTURE0 = 33984;
    public const int32 GL_TEXTURE1 = 33985;
    public const int32 GL_TEXTURE2 = 33986;
    public const int32 GL_TEXTURE3 = 33987;
    public const int32 GL_TEXTURE4 = 33988;
    public const int32 GL_TEXTURE5 = 33989;
    public const int32 GL_TEXTURE6 = 33990;
    public const int32 GL_TEXTURE7 = 33991;
    public const int32 GL_TEXTURE8 = 33992;
    public const int32 GL_TEXTURE9 = 33993;
    public const int32 GL_TEXTURE10 = 33994;
    public const int32 GL_TEXTURE11 = 33995;
    public const int32 GL_TEXTURE12 = 33996;
    public const int32 GL_TEXTURE13 = 33997;
    public const int32 GL_TEXTURE14 = 33998;
    public const int32 GL_TEXTURE15 = 33999;
    public const int32 GL_TEXTURE16 = 34000;
    public const int32 GL_TEXTURE17 = 34001;
    public const int32 GL_TEXTURE18 = 34002;
    public const int32 GL_TEXTURE19 = 34003;
    public const int32 GL_TEXTURE20 = 34004;
    public const int32 GL_TEXTURE21 = 34005;
    public const int32 GL_TEXTURE22 = 34006;
    public const int32 GL_TEXTURE23 = 34007;
    public const int32 GL_TEXTURE24 = 34008;
    public const int32 GL_TEXTURE25 = 34009;
    public const int32 GL_TEXTURE26 = 34010;
    public const int32 GL_TEXTURE27 = 34011;
    public const int32 GL_TEXTURE28 = 34012;
    public const int32 GL_TEXTURE29 = 34013;
    public const int32 GL_TEXTURE30 = 34014;
    public const int32 GL_TEXTURE31 = 34015;
    public const int32 GL_TRIANGLE_FAN = 6;
    public const int32 GL_TRIANGLE_STRIP = 5;
    public const int32 GL_TRIANGLES = 4;
    public const int32 GL_TRUE = 1;
    public const int32 GL_UNPACK_ALIGNMENT = 3317;
    public const int32 GL_UNSIGNED_BYTE = 5121;
    public const int32 GL_UNSIGNED_SHORT = 5123;
    public const int32 GL_UNSIGNED_SHORT_4_4_4_4 = 32819;
    public const int32 GL_UNSIGNED_SHORT_5_5_5_1 = 32820;
    public const int32 GL_UNSIGNED_SHORT_5_6_5 = 33635;
    public const int32 GL_VENDOR = 7936;
    public const int32 GL_VERSION = 7938;
    public const int32 GL_VERTEX_ARRAY = 32884;
    public const int32 GL_XOR = 5382;
    public const int32 GL_ZERO = 0;
    

    public abstract void glActiveTexture(int32 texture);
    

    public abstract void glAlphaFunc(int32 func, float @ref);
    

    public abstract void glBindTexture(int32 target, int32 texture);
    

    public abstract void glBlendFunc(int32 sfactor, int32 dfactor);
    

    public abstract void glClear(int32 mask);
    

    public abstract void glClearColor(float red, float green, float blue, float alpha);
    

    public abstract void glClearDepthf(float depth);
    

    public abstract void glClearStencil(int32 s);
    

    public abstract void glClientActiveTexture(int32 texture);
    

    public abstract void glColor4f(float red, float green, float blue, float alpha);
    

    public abstract void glColorMask(bool red, bool green, bool blue, bool alpha);
    

    public abstract void glColorPointer(int32 size, int32 type, int32 stride, Buffer pointer);
    

    public abstract void glCompressedTexImage2D(int32 target, int32 level, int32 internalformat, int32 width, int32 height, int32 border, int32 imageSize, Buffer data);
    

    public abstract void glCompressedTexSubImage2D(int32 target, int32 level, int32 xoffset, int32 yoffset, int32 width, int32 height, int32 format, int32 imageSize, Buffer data);
    

    public abstract void glCopyTexImage2D(int32 target, int32 level, int32 internalformat, int32 x, int32 y, int32 width, int32 height, int32 border);
    

    public abstract void glCopyTexSubImage2D(int32 target, int32 level, int32 xoffset, int32 yoffset, int32 x, int32 y, int32 width, int32 height);
    

    public abstract void glCullFace(int32 mode);
    

    public abstract void glDeleteTextures_3(int32 n, int32[] textures, int32 offset);
    

    public abstract void glDeleteTextures_2(int32 n, IntBuffer textures);
    

    public abstract void glDepthFunc(int32 func);
    

    public abstract void glDepthMask(bool flag);
    

    public abstract void glDepthRangef(float zNear, float zFar);
    

    public abstract void glDisable(int32 cap);
    

    public abstract void glDisableClientState(int32 array);
    

    public abstract void glDrawArrays(int32 mode, int32 first, int32 count);
    

    public abstract void glDrawElements(int32 mode, int32 count, int32 type, Buffer indices);
    

    public abstract void glEnable(int32 cap);
    

    public abstract void glEnableClientState(int32 array);
    

    public abstract void glFinish();
    

    public abstract void glFlush();
    

    public abstract void glFogf(int32 pname, float param);
    

    public abstract void glFogfv_3(int32 pname, float[] @params, int32 offset);
    

    public abstract void glFogfv_2(int32 pname, FloatBuffer @params);
    

    public abstract void glFrontFace(int32 mode);
    

    public abstract void glFrustumf(float left, float right, float bottom, float top, float zNear, float zFar);
    

    public abstract void glGenTextures_3(int32 n, int32[] textures, int32 offset);
    

    public abstract void glGenTextures_2(int32 n, IntBuffer textures);
    

    public abstract int32 glGetError();
    

    public abstract void glGetIntegerv_3(int32 pname, int32[] @params, int32 offset);
    

    public abstract void glGetIntegerv_2(int32 pname, IntBuffer @params);
    

    public abstract string glGetString(int32 name);
    

    public abstract void glHint(int32 target, int32 mode);
    

    public abstract void glLightModelf(int32 pname, float param);
    

    public abstract void glLightModelfv_3(int32 pname, float[] @params, int32 offset);
    

    public abstract void glLightModelfv_2(int32 pname, FloatBuffer @params);
    

    public abstract void glLightf(int32 light, int32 pname, float param);
    

    public abstract void glLightfv_4(int32 light, int32 pname, float[] @params, int32 offset);
    

    public abstract void glLightfv_3(int32 light, int32 pname, FloatBuffer @params);
    

    public abstract void glLineWidth(float width);
    

    public abstract void glLoadIdentity();
    

    public abstract void glLoadMatrixf_2(float[] m, int32 offset);
    

    public abstract void glLoadMatrixf_1(FloatBuffer m);
    

    public abstract void glLogicOp(int32 opcode);
    

    public abstract void glMaterialf(int32 face, int32 pname, float param);
    

    public abstract void glMaterialfv_4(int32 face, int32 pname, float[] @params, int32 offset);
    

    public abstract void glMaterialfv_3(int32 face, int32 pname, FloatBuffer @params);
    

    public abstract void glMatrixMode(int32 mode);
    

    public abstract void glMultMatrixf_2(float[] m, int32 offset);
    

    public abstract void glMultMatrixf_1(FloatBuffer m);
    

    public abstract void glMultiTexCoord4f(int32 target, float s, float t, float r, float q);
    

    public abstract void glNormal3f(float nx, float ny, float nz);
    

    public abstract void glNormalPointer(int32 type, int32 stride, Buffer pointer);
    

    public abstract void glOrthof(float left, float right, float bottom, float top, float zNear, float zFar);
    

    public abstract void glPixelStorei(int32 pname, int32 param);
    

    public abstract void glPointSize(float size);
    

    public abstract void glPolygonOffset(float factor, float units);
    

    public abstract void glPopMatrix();
    

    public abstract void glPushMatrix();
    

    public abstract void glReadPixels(int32 x, int32 y, int32 width, int32 height, int32 format, int32 type, Buffer pixels);
    

    public abstract void glRotatef(float angle, float x, float y, float z);
    

    public abstract void glRotatex(int32 angle, int32 x, int32 y, int32 z);
    

    public abstract void glSampleCoverage(float value, bool invert);
    

    public abstract void glScalef(float x, float y, float z);
    

    public abstract void glScalex(int32 x, int32 y, int32 z);
    

    public abstract void glScissor(int32 x, int32 y, int32 width, int32 height);
    

    public abstract void glShadeModel(int32 mode);
    

    public abstract void glStencilFunc(int32 func, int32 @ref, int32 mask);
    

    public abstract void glStencilMask(int32 mask);
    

    public abstract void glStencilOp(int32 fail, int32 zfail, int32 zpass);
    

    public abstract void glTexCoordPointer(int32 size, int32 type, int32 stride, Buffer pointer);
    

    public abstract void glTexEnvf(int32 target, int32 pname, float param);
    

    public abstract void glTexEnvfv_4(int32 target, int32 pname, float[] @params, int32 offset);
    

    public abstract void glTexEnvfv_3(int32 target, int32 pname, FloatBuffer @params);
    

    public abstract void glTexImage2D(int32 target, int32 level, int32 internalformat, int32 width, int32 height, int32 border, int32 format, int32 type, Buffer pixels);
    

    public abstract void glTexParameterf(int32 target, int32 pname, float param);
    

    public abstract void glTexParameteri(int32 target, int32 pname, int32 param);
    

    public abstract void glTexSubImage2D(int32 target, int32 level, int32 xoffset, int32 yoffset, int32 width, int32 height, int32 format, int32 type, Buffer pixels);
    

    public abstract void glTranslatef(float x, float y, float z);
    

    public abstract void glVertexPointer(int32 size, int32 type, int32 stride, Buffer pointer);
    

    public abstract void glViewport(int32 x, int32 y, int32 width, int32 height);
    

    public abstract void glBegin(int32 i);
    

    public abstract void glEnd();
    

    public abstract void glVertex3f(float f, float f2, float f3);
    

    public abstract void glPolygonMode(int32 i, int32 i1);
}

