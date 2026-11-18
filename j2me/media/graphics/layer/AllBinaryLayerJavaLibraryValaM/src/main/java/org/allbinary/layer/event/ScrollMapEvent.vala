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
// package org.allbinary.layer.event
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class ScrollMapEvent : AllBinaryEventObject {
    private int32 dx;
    private int32 dy;

    // Java field initializers run after the base constructor
    private void initFieldsScrollMapEvent() {
    this.dx = 0;
    this.dy = 0;
    }
    

    public ScrollMapEvent(JObject anyType) {
        base(anyType);
        this.initFieldsScrollMapEvent();
    }
    

    public virtual void setDx(int32 dx) {
        this.dx = dx;
    }
    

    public virtual int32 getDx() {
        return this.dx;
    }
    

    public virtual void setDy(int32 dy) {
        this.dy = dy;
    }
    

    public virtual int32 getDy() {
        return this.dy;
    }
    

    public virtual void setDxDy(int32 dx, int32 dy) {
        this.dx = dx;
        this.dy = dy;
    }
}

