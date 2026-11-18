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
// package org.allbinary.input.motion

public class AllMotionRecognizer : JObject {
    private static int32 index = 0;
    private int32 id;

    // Java field initializers run after the base constructor
    private void initFieldsAllMotionRecognizer() {
    
    }
    

    public AllMotionRecognizer() {
        base();
        this.initFieldsAllMotionRecognizer();
        this.id = AllMotionRecognizer.index++;
    }
    

    public virtual void processStartMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
    }
    

    public virtual void processEndMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
    }
    

    public virtual void processDraggedMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
    }
    

    public virtual void processMovedMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
    }
    

    public virtual void processScrolledMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
    }
    

    public virtual int32 getId() {
        return this.id;
    }
}

