// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles
// import java.nio.Buffer
// import java.nio.FloatBuffer
// import java.nio.IntBuffer
// import java.nio.ShortBuffer

public interface GL11Ext : JObject, GL {
    public const int32 GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES = 35742;
    public const int32 GL_MATRIX_INDEX_ARRAY_OES = 34884;
    public const int32 GL_MATRIX_INDEX_ARRAY_POINTER_OES = 34889;
    public const int32 GL_MATRIX_INDEX_ARRAY_SIZE_OES = 34886;
    public const int32 GL_MATRIX_INDEX_ARRAY_STRIDE_OES = 34888;
    public const int32 GL_MATRIX_INDEX_ARRAY_TYPE_OES = 34887;
    public const int32 GL_MATRIX_PALETTE_OES = 34880;
    public const int32 GL_MAX_PALETTE_MATRICES_OES = 34882;
    public const int32 GL_MAX_VERTEX_UNITS_OES = 34468;
    public const int32 GL_TEXTURE_CROP_RECT_OES = 35741;
    public const int32 GL_WEIGHT_ARRAY_BUFFER_BINDING_OES = 34974;
    public const int32 GL_WEIGHT_ARRAY_OES = 34477;
    public const int32 GL_WEIGHT_ARRAY_POINTER_OES = 34476;
    public const int32 GL_WEIGHT_ARRAY_SIZE_OES = 34475;
    public const int32 GL_WEIGHT_ARRAY_STRIDE_OES = 34474;
    public const int32 GL_WEIGHT_ARRAY_TYPE_OES = 34473;
    

    public abstract void glTexParameterfv(int32 target, int32 pname, float[] param, int32 offset);
    

    public abstract void glCurrentPaletteMatrixOES(int32 matrixpaletteindex);
    

    public abstract void glDrawTexfOES(float x, float y, float z, float width, float height);
    

    public abstract void glDrawTexfvOES_2(float[] coords, int32 offset);
    

    public abstract void glDrawTexfvOES_1(FloatBuffer coords);
    

    public abstract void glDrawTexiOES(int32 x, int32 y, int32 z, int32 width, int32 height);
    

    public abstract void glDrawTexivOES_2(int32[] coords, int32 offset);
    

    public abstract void glDrawTexivOES_1(IntBuffer coords);
    

    public abstract void glDrawTexsOES(int16 x, int16 y, int16 z, int16 width, int16 height);
    

    public abstract void glDrawTexsvOES_2(int16[] coords, int32 offset);
    

    public abstract void glDrawTexsvOES_1(ShortBuffer coords);
    

    public abstract void glDrawTexxOES(int32 x, int32 y, int32 z, int32 width, int32 height);
    

    public abstract void glDrawTexxvOES_2(int32[] coords, int32 offset);
    

    public abstract void glDrawTexxvOES_1(IntBuffer coords);
    

    public abstract void glEnable(int32 cap);
    

    public abstract void glEnableClientState(int32 array);
    

    public abstract void glLoadPaletteFromModelViewMatrixOES();
    

    public abstract void glMatrixIndexPointerOES_4_intintintBuffer(int32 size, int32 type, int32 stride, Buffer pointer);
    

    public abstract void glMatrixIndexPointerOES_4_intintintint(int32 size, int32 type, int32 stride, int32 offset);
    

    public abstract void glWeightPointerOES_4_intintintBuffer(int32 size, int32 type, int32 stride, Buffer pointer);
    

    public abstract void glWeightPointerOES_4_intintintint(int32 size, int32 type, int32 stride, int32 offset);
}

