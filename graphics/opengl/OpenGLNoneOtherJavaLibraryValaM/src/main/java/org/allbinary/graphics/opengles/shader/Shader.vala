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
// package org.allbinary.graphics.opengles.shader
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil

public class Shader : JObject {
    public string shaderName;
    public BasicArrayList shaderStringList;
    public string shaderAsString;
    public int32 shaderHandle;

    // Java field initializers run after the base constructor
    private void initFieldsShader() {
    this.shaderName = StringUtil.getInstance().EMPTY_STRING;
    this.shaderStringList = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.shaderAsString = StringUtil.getInstance().EMPTY_STRING;
    this.shaderHandle = 0;
    }

    public Shader() {
        base();
        this.initFieldsShader();
    }
}

