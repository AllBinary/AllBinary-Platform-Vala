// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles
// import java.nio.Buffer
// import java.nio.FloatBuffer
// import java.nio.IntBuffer

public interface GL11 : JObject, GL10 {
    public const int32 GL_ACTIVE_TEXTURE = 34016;
    public const int32 GL_ADD_SIGNED = 34164;
    public const int32 GL_ALPHA_SCALE = 3356;
    public const int32 GL_ALPHA_TEST_FUNC = 3009;
    public const int32 GL_ALPHA_TEST_REF = 3010;
    public const int32 GL_ARRAY_BUFFER = 34962;
    public const int32 GL_ARRAY_BUFFER_BINDING = 34964;
    public const int32 GL_BLEND_DST = 3040;
    public const int32 GL_BLEND_SRC = 3041;
    public const int32 GL_BUFFER_ACCESS = 35003;
    public const int32 GL_BUFFER_SIZE = 34660;
    public const int32 GL_BUFFER_USAGE = 34661;
    public const int32 GL_CLIENT_ACTIVE_TEXTURE = 34017;
    public const int32 GL_CLIP_PLANE0 = 12288;
    public const int32 GL_CLIP_PLANE1 = 12289;
    public const int32 GL_CLIP_PLANE2 = 12290;
    public const int32 GL_CLIP_PLANE3 = 12291;
    public const int32 GL_CLIP_PLANE4 = 12292;
    public const int32 GL_CLIP_PLANE5 = 12293;
    public const int32 GL_COLOR_ARRAY_BUFFER_BINDING = 34968;
    public const int32 GL_COLOR_ARRAY_POINTER = 32912;
    public const int32 GL_COLOR_ARRAY_SIZE = 32897;
    public const int32 GL_COLOR_ARRAY_STRIDE = 32899;
    public const int32 GL_COLOR_ARRAY_TYPE = 32898;
    public const int32 GL_COLOR_CLEAR_VALUE = 3106;
    public const int32 GL_COLOR_WRITEMASK = 3107;
    public const int32 GL_COMBINE = 34160;
    public const int32 GL_COMBINE_ALPHA = 34162;
    public const int32 GL_COMBINE_RGB = 34161;
    public const int32 GL_CONSTANT = 34166;
    public const int32 GL_COORD_REPLACE_OES = 34914;
    public const int32 GL_CULL_FACE_MODE = 2885;
    public const int32 GL_CURRENT_COLOR = 2816;
    public const int32 GL_CURRENT_NORMAL = 2818;
    public const int32 GL_CURRENT_TEXTURE_COORDS = 2819;
    public const int32 GL_DEPTH_CLEAR_VALUE = 2931;
    public const int32 GL_DEPTH_FUNC = 2932;
    public const int32 GL_DEPTH_RANGE = 2928;
    public const int32 GL_DEPTH_WRITEMASK = 2930;
    public const int32 GL_DOT3_RGB = 34478;
    public const int32 GL_DOT3_RGBA = 34479;
    public const int32 GL_DYNAMIC_DRAW = 35048;
    public const int32 GL_ELEMENT_ARRAY_BUFFER = 34963;
    public const int32 GL_ELEMENT_ARRAY_BUFFER_BINDING = 34965;
    public const int32 GL_FRONT_FACE = 2886;
    public const int32 GL_GENERATE_MIPMAP = 33169;
    public const int32 GL_GENERATE_MIPMAP_HINT = 33170;
    public const int32 GL_INTERPOLATE = 34165;
    public const int32 GL_LINE_WIDTH = 2849;
    public const int32 GL_LOGIC_OP_MODE = 3056;
    public const int32 GL_MATRIX_MODE = 2976;
    public const int32 GL_MAX_CLIP_PLANES = 3378;
    public const int32 GL_MODELVIEW_MATRIX = 2982;
    public const int32 GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES = 35213;
    public const int32 GL_MODELVIEW_STACK_DEPTH = 2979;
    public const int32 GL_NORMAL_ARRAY_BUFFER_BINDING = 34967;
    public const int32 GL_NORMAL_ARRAY_POINTER = 32911;
    public const int32 GL_NORMAL_ARRAY_STRIDE = 32895;
    public const int32 GL_NORMAL_ARRAY_TYPE = 32894;
    public const int32 GL_OPERAND0_ALPHA = 34200;
    public const int32 GL_OPERAND0_RGB = 34192;
    public const int32 GL_OPERAND1_ALPHA = 34201;
    public const int32 GL_OPERAND1_RGB = 34193;
    public const int32 GL_OPERAND2_ALPHA = 34202;
    public const int32 GL_OPERAND2_RGB = 34194;
    public const int32 GL_POINT_DISTANCE_ATTENUATION = 33065;
    public new const int32 GL_POINT_FADE_THRESHOLD_SIZE = 33064;
    public new const int32 GL_POINT_SIZE = 2833;
    public const int32 GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES = 35743;
    public const int32 GL_POINT_SIZE_ARRAY_OES = 35740;
    public const int32 GL_POINT_SIZE_ARRAY_POINTER_OES = 35212;
    public const int32 GL_POINT_SIZE_ARRAY_STRIDE_OES = 35211;
    public const int32 GL_POINT_SIZE_ARRAY_TYPE_OES = 35210;
    public const int32 GL_POINT_SIZE_MAX = 33063;
    public const int32 GL_POINT_SIZE_MIN = 33062;
    public const int32 GL_POINT_SPRITE_OES = 34913;
    public const int32 GL_POLYGON_OFFSET_FACTOR = 32824;
    public const int32 GL_POLYGON_OFFSET_UNITS = 10752;
    public const int32 GL_PREVIOUS = 34168;
    public const int32 GL_PRIMARY_COLOR = 34167;
    public const int32 GL_PROJECTION_MATRIX = 2983;
    public const int32 GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES = 35214;
    public const int32 GL_PROJECTION_STACK_DEPTH = 2980;
    public const int32 GL_RGB_SCALE = 34163;
    public const int32 GL_SAMPLE_BUFFERS = 32936;
    public const int32 GL_SAMPLE_COVERAGE_INVERT = 32939;
    public const int32 GL_SAMPLE_COVERAGE_VALUE = 32938;
    public const int32 GL_SAMPLES = 32937;
    public const int32 GL_SCISSOR_BOX = 3088;
    public const int32 GL_SHADE_MODEL = 2900;
    public const int32 GL_SRC0_ALPHA = 34184;
    public const int32 GL_SRC0_RGB = 34176;
    public const int32 GL_SRC1_ALPHA = 34185;
    public const int32 GL_SRC1_RGB = 34177;
    public const int32 GL_SRC2_ALPHA = 34186;
    public const int32 GL_SRC2_RGB = 34178;
    public const int32 GL_STATIC_DRAW = 35044;
    public const int32 GL_STENCIL_CLEAR_VALUE = 2961;
    public const int32 GL_STENCIL_FAIL = 2964;
    public const int32 GL_STENCIL_FUNC = 2962;
    public const int32 GL_STENCIL_PASS_DEPTH_FAIL = 2965;
    public const int32 GL_STENCIL_PASS_DEPTH_PASS = 2966;
    public const int32 GL_STENCIL_REF = 2967;
    public const int32 GL_STENCIL_VALUE_MASK = 2963;
    public const int32 GL_STENCIL_WRITEMASK = 2968;
    public const int32 GL_SUBTRACT = 34023;
    public const int32 GL_TEXTURE_BINDING_2D = 32873;
    public const int32 GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 34970;
    public const int32 GL_TEXTURE_COORD_ARRAY_POINTER = 32914;
    public const int32 GL_TEXTURE_COORD_ARRAY_SIZE = 32904;
    public const int32 GL_TEXTURE_COORD_ARRAY_STRIDE = 32906;
    public const int32 GL_TEXTURE_COORD_ARRAY_TYPE = 32905;
    public const int32 GL_TEXTURE_MATRIX = 2984;
    public const int32 GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES = 35215;
    public const int32 GL_TEXTURE_STACK_DEPTH = 2981;
    public const int32 GL_VERTEX_ARRAY_BUFFER_BINDING = 34966;
    public const int32 GL_VERTEX_ARRAY_POINTER = 32910;
    public const int32 GL_VERTEX_ARRAY_SIZE = 32890;
    public const int32 GL_VERTEX_ARRAY_STRIDE = 32892;
    public const int32 GL_VERTEX_ARRAY_TYPE = 32891;
    public const int32 GL_VIEWPORT = 2978;
    public const int32 GL_WRITE_ONLY = 35001;
    

    public abstract void glBindBuffer(int32 target, int32 buffer);
    

    public abstract void glBufferData(int32 target, int32 size, Buffer data, int32 usage);
    

    public abstract void glBufferSubData(int32 target, int32 offset, int32 size, Buffer data);
    

    public abstract void glClipPlanef_3(int32 plane, float[] equation, int32 offset);
    

    public abstract void glClipPlanef_2(int32 plane, FloatBuffer equation);
    

    public abstract void glColor4ub(int8 red, int8 green, int8 blue, int8 alpha);
    

    public abstract void glColorPointer(int32 size, int32 type, int32 stride, int32 offset);
    

    public abstract void glDeleteBuffers_3(int32 n, int32[] buffers, int32 offset);
    

    public abstract void glDeleteBuffers_2(int32 n, IntBuffer buffers);
    

    public abstract void glDrawElements(int32 mode, int32 count, int32 type, int32 offset);
    

    public abstract void glGenBuffers_3(int32 n, int32[] buffers, int32 offset);
    

    public abstract void glGenBuffers_2(int32 n, IntBuffer buffers);
    

    public abstract void glGetBufferParameteriv_4(int32 target, int32 pname, int32[] @params, int32 offset);
    

    public abstract void glGetBufferParameteriv_3(int32 target, int32 pname, IntBuffer @params);
    

    public abstract void glGetClipPlanef_3(int32 pname, float[] eqn, int32 offset);
    

    public abstract void glGetClipPlanef_2(int32 pname, FloatBuffer eqn);
    

    public abstract void glGetFloatv_3(int32 pname, float[] @params, int32 offset);
    

    public abstract void glGetFloatv_2(int32 pname, FloatBuffer @params);
    

    public abstract void glGetLightfv_4(int32 light, int32 pname, float[] @params, int32 offset);
    

    public abstract void glGetLightfv_3(int32 light, int32 pname, FloatBuffer @params);
    

    public abstract void glGetMaterialfv_4(int32 face, int32 pname, float[] @params, int32 offset);
    

    public abstract void glGetMaterialfv_3(int32 face, int32 pname, FloatBuffer @params);
    

    public abstract void glGetTexEnviv_4(int32 env, int32 pname, int32[] @params, int32 offset);
    

    public abstract void glGetTexEnviv_3(int32 env, int32 pname, IntBuffer @params);
    

    public abstract void glGetTexParameterfv_4(int32 target, int32 pname, float[] @params, int32 offset);
    

    public abstract void glGetTexParameterfv_3(int32 target, int32 pname, FloatBuffer @params);
    

    public abstract void glGetTexParameteriv_4(int32 target, int32 pname, int32[] @params, int32 offset);
    

    public abstract void glGetTexParameteriv_3(int32 target, int32 pname, IntBuffer @params);
    

    public abstract bool glIsBuffer(int32 buffer);
    

    public abstract bool glIsEnabled(int32 cap);
    

    public abstract bool glIsTexture(int32 texture);
    

    public abstract void glNormalPointer(int32 type, int32 stride, int32 offset);
    

    public abstract void glPointParameterf(int32 pname, float param);
    

    public abstract void glPointParameterfv_3(int32 pname, float[] @params, int32 offset);
    

    public abstract void glPointParameterfv_2(int32 pname, FloatBuffer @params);
    

    public abstract void glTexCoordPointer(int32 size, int32 type, int32 stride, int32 offset);
    

    public abstract void glTexEnvi(int32 target, int32 pname, int32 param);
    

    public abstract void glTexEnviv_4(int32 target, int32 pname, int32[] @params, int32 offset);
    

    public abstract void glTexEnviv_3(int32 target, int32 pname, IntBuffer @params);
    

    public abstract void glTexParameterfv_4(int32 target, int32 pname, float[] @params, int32 offset);
    

    public abstract void glTexParameterfv_3(int32 target, int32 pname, FloatBuffer @params);
    

    public abstract void glTexParameteriv_4(int32 target, int32 pname, int32[] @params, int32 offset);
    

    public abstract void glTexParameteriv_3(int32 target, int32 pname, IntBuffer @params);
    

    public abstract void glVertexPointer(int32 size, int32 type, int32 stride, int32 offset);
}

