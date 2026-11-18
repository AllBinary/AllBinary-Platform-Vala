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
// import org.allbinary.logic.NullUtil

public class ModelViewProjection : JObject {
    private static ModelViewProjection? instance;
    private static bool staticSet_instance = false;
    private static ModelViewProjection staticGet_instance() {
        if (!ModelViewProjection.staticSet_instance) {
            ModelViewProjection.staticSet_instance = true;
            ModelViewProjection.instance = new ModelViewProjection();
        }
        return ModelViewProjection.instance;
    }

    public ModelViewProjection() {
        base();
    }
    

    public static ModelViewProjection getInstance() {
        return ModelViewProjection.staticGet_instance();
    }
    

    public virtual float[] @get() {
        return NullUtil.getInstance().NULL_FLOAT_ARRAY;
    }
}

