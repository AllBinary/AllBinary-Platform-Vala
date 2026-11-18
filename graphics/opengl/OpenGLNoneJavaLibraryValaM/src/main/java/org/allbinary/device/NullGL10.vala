/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
 *  
 * By agreeing to this license you and any business entity you represent are 
 * legally bound to the AllBinary Open License Version 1 legal agreement. 
 *  
 * You may obtain the AllBinary Open License Version 1 legal agreement from 
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
 *  
 * Created By: Travis Berthelot 
 *   
 */
// Generated Code Do Not Modify
// package org.allbinary.device
// import javax.microedition.khronos.opengles.GL10
// import java.nio.Buffer
// import java.nio.FloatBuffer
// import java.nio.IntBuffer
// import org.allbinary.logic.string.StringUtil

public class NullGL10 : JObject, GL10, GL {
    public static NullGL10? NULL_GL10;
    private static bool staticSet_NULL_GL10 = false;
    public static NullGL10 staticGet_NULL_GL10() {
        if (!NullGL10.staticSet_NULL_GL10) {
            NullGL10.staticSet_NULL_GL10 = true;
            NullGL10.NULL_GL10 = new NullGL10();
        }
        return NullGL10.NULL_GL10;
    }

    public NullGL10() {
        base();
    }
    

    public virtual void glActiveTexture(int32 texture) {
        return;
    }
    

    public virtual void glAlphaFunc(int32 func, float @ref) {
        return;
    }
    

    public virtual void glBindTexture(int32 target, int32 texture) {
        return;
    }
    

    public virtual void glBlendFunc(int32 sfactor, int32 dfactor) {
        return;
    }
    

    public virtual void glClear(int32 mask) {
        return;
    }
    

    public virtual void glClearColor(float red, float green, float blue, float alpha) {
        return;
    }
    

    public virtual void glClearDepthf(float depth) {
        return;
    }
    

    public virtual void glClearStencil(int32 s) {
        return;
    }
    

    public virtual void glClientActiveTexture(int32 texture) {
        return;
    }
    

    public virtual void glColor4f(float red, float green, float blue, float alpha) {
        return;
    }
    

    public virtual void glColorMask(bool red, bool green, bool blue, bool alpha) {
        return;
    }
    

    public virtual void glColorPointer(int32 size, int32 type, int32 stride, Buffer pointer) {
        return;
    }
    

    public virtual void glCompressedTexImage2D(int32 target, int32 level, int32 internalformat, int32 width, int32 height, int32 border, int32 imageSize, Buffer data) {
        return;
    }
    

    public virtual void glCompressedTexSubImage2D(int32 target, int32 level, int32 xoffset, int32 yoffset, int32 width, int32 height, int32 format, int32 imageSize, Buffer data) {
        return;
    }
    

    public virtual void glCopyTexImage2D(int32 target, int32 level, int32 internalformat, int32 x, int32 y, int32 width, int32 height, int32 border) {
        return;
    }
    

    public virtual void glCopyTexSubImage2D(int32 target, int32 level, int32 xoffset, int32 yoffset, int32 x, int32 y, int32 width, int32 height) {
        return;
    }
    

    public virtual void glCullFace(int32 mode) {
        return;
    }
    

    public virtual void glDeleteTextures_3(int32 n, int32[] textures, int32 offset) {
        return;
    }
    

    public virtual void glDeleteTextures_2(int32 n, IntBuffer textures) {
        return;
    }
    

    public virtual void glDepthFunc(int32 func) {
        return;
    }
    

    public virtual void glDepthMask(bool flag) {
        return;
    }
    

    public virtual void glDepthRangef(float zNear, float zFar) {
        return;
    }
    

    public virtual void glDisable(int32 cap) {
        return;
    }
    

    public virtual void glDisableClientState(int32 array) {
        return;
    }
    

    public virtual void glDrawArrays(int32 mode, int32 first, int32 count) {
        return;
    }
    

    public virtual void glDrawElements(int32 mode, int32 count, int32 type, Buffer indices) {
        return;
    }
    

    public virtual void glEnable(int32 cap) {
        return;
    }
    

    public virtual void glEnableClientState(int32 array) {
        return;
    }
    

    public virtual void glFinish() {
        return;
    }
    

    public virtual void glFlush() {
        return;
    }
    

    public virtual void glFogf(int32 pname, float param) {
        return;
    }
    

    public virtual void glFogfv_3(int32 pname, float[] @params, int32 offset) {
        return;
    }
    

    public virtual void glFogfv_2(int32 pname, FloatBuffer @params) {
        return;
    }
    

    public virtual void glFrontFace(int32 mode) {
        return;
    }
    

    public virtual void glFrustumf(float left, float right, float bottom, float top, float zNear, float zFar) {
        return;
    }
    

    public virtual void glGenTextures_3(int32 n, int32[] textures, int32 offset) {
        return;
    }
    

    public virtual void glGenTextures_2(int32 n, IntBuffer textures) {
        return;
    }
    

    public virtual int32 glGetError() {
        return 0;
    }
    

    public virtual void glGetIntegerv_3(int32 pname, int32[] @params, int32 offset) {
        return;
    }
    

    public virtual void glGetIntegerv_2(int32 pname, IntBuffer @params) {
        return;
    }
    

    public virtual string glGetString(int32 name) {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public virtual void glHint(int32 target, int32 mode) {
        return;
    }
    

    public virtual void glLightModelf(int32 pname, float param) {
        return;
    }
    

    public virtual void glLightModelfv_3(int32 pname, float[] @params, int32 offset) {
        return;
    }
    

    public virtual void glLightModelfv_2(int32 pname, FloatBuffer @params) {
        return;
    }
    

    public virtual void glLightf(int32 light, int32 pname, float param) {
        return;
    }
    

    public virtual void glLightfv_4(int32 light, int32 pname, float[] @params, int32 offset) {
        return;
    }
    

    public virtual void glLightfv_3(int32 light, int32 pname, FloatBuffer @params) {
        return;
    }
    

    public virtual void glLineWidth(float width) {
        return;
    }
    

    public virtual void glLoadIdentity() {
        return;
    }
    

    public virtual void glLoadMatrixf_2(float[] m, int32 offset) {
        return;
    }
    

    public virtual void glLoadMatrixf_1(FloatBuffer m) {
        return;
    }
    

    public virtual void glLogicOp(int32 opcode) {
        return;
    }
    

    public virtual void glMaterialf(int32 face, int32 pname, float param) {
        return;
    }
    

    public virtual void glMaterialfv_4(int32 face, int32 pname, float[] @params, int32 offset) {
        return;
    }
    

    public virtual void glMaterialfv_3(int32 face, int32 pname, FloatBuffer @params) {
        return;
    }
    

    public virtual void glMatrixMode(int32 mode) {
        return;
    }
    

    public virtual void glMultMatrixf_2(float[] m, int32 offset) {
        return;
    }
    

    public virtual void glMultMatrixf_1(FloatBuffer m) {
        return;
    }
    

    public virtual void glMultiTexCoord4f(int32 target, float s, float t, float r, float q) {
        return;
    }
    

    public virtual void glNormal3f(float nx, float ny, float nz) {
        return;
    }
    

    public virtual void glNormalPointer(int32 type, int32 stride, Buffer pointer) {
        return;
    }
    

    public virtual void glOrthof(float left, float right, float bottom, float top, float zNear, float zFar) {
        return;
    }
    

    public virtual void glPixelStorei(int32 pname, int32 param) {
        return;
    }
    

    public virtual void glPointSize(float size) {
        return;
    }
    

    public virtual void glPolygonOffset(float factor, float units) {
        return;
    }
    

    public virtual void glPopMatrix() {
        return;
    }
    

    public virtual void glPushMatrix() {
        return;
    }
    

    public virtual void glReadPixels(int32 x, int32 y, int32 width, int32 height, int32 format, int32 type, Buffer pixels) {
        return;
    }
    

    public virtual void glRotatef(float angle, float x, float y, float z) {
        return;
    }
    

    public virtual void glRotatex(int32 angle, int32 x, int32 y, int32 z) {
        return;
    }
    

    public virtual void glSampleCoverage(float value, bool invert) {
        return;
    }
    

    public virtual void glScalef(float x, float y, float z) {
        return;
    }
    

    public virtual void glScalex(int32 x, int32 y, int32 z) {
        return;
    }
    

    public virtual void glScissor(int32 x, int32 y, int32 width, int32 height) {
        return;
    }
    

    public virtual void glShadeModel(int32 mode) {
        return;
    }
    

    public virtual void glStencilFunc(int32 func, int32 @ref, int32 mask) {
        return;
    }
    

    public virtual void glStencilMask(int32 mask) {
        return;
    }
    

    public virtual void glStencilOp(int32 fail, int32 zfail, int32 zpass) {
        return;
    }
    

    public virtual void glTexCoordPointer(int32 size, int32 type, int32 stride, Buffer pointer) {
        return;
    }
    

    public virtual void glTexEnvf(int32 target, int32 pname, float param) {
        return;
    }
    

    public virtual void glTexEnvfv_4(int32 target, int32 pname, float[] @params, int32 offset) {
        return;
    }
    

    public virtual void glTexEnvfv_3(int32 target, int32 pname, FloatBuffer @params) {
        return;
    }
    

    public virtual void glTexImage2D(int32 target, int32 level, int32 internalformat, int32 width, int32 height, int32 border, int32 format, int32 type, Buffer pixels) {
        return;
    }
    

    public virtual void glTexParameterf(int32 target, int32 pname, float param) {
        return;
    }
    

    public virtual void glTexParameteri(int32 target, int32 pname, int32 param) {
        return;
    }
    

    public virtual void glTexSubImage2D(int32 target, int32 level, int32 xoffset, int32 yoffset, int32 width, int32 height, int32 format, int32 type, Buffer pixels) {
        return;
    }
    

    public virtual void glTranslatef(float x, float y, float z) {
        return;
    }
    

    public virtual void glVertexPointer(int32 size, int32 type, int32 stride, Buffer pointer) {
        return;
    }
    

    public virtual void glViewport(int32 x, int32 y, int32 width, int32 height) {
        return;
    }
    

    public virtual void glBegin(int32 i) {
        return;
    }
    

    public virtual void glEnd() {
        return;
    }
    

    public virtual void glVertex3f(float f, float f2, float f3) {
        return;
    }
    

    public virtual void glPolygonMode(int32 i, int32 i1) {
        return;
    }
}

