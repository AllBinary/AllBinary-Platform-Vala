/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2011 AllBinary 
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
// package org.allbinary.graphics.displayable

public class BaseScalable : JObject, ScalableListener {

    public BaseScalable() {
        base();
    }
    

    public virtual float getRatio(float ratio) {
        return 1.0f;
    }
    

    public virtual int32 getLeft(int32 xOffset) {
        return -1;
    }
    

    public virtual int32 getTop(int32 yOffset) {
        return -1;
    }
    

    public virtual void scale(float ratio) {
    }
}

