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
// package org.allbinary.graphics.color
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class ColorChangeEvent : AllBinaryEventObject {
    private BasicColor basicColor;

    // Java field initializers run after the base constructor
    private void initFieldsColorChangeEvent() {
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    }
    

    public ColorChangeEvent(JObject anyType) {
        base(anyType);
        this.initFieldsColorChangeEvent();
    }
    

    public virtual void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
    

    public virtual BasicColor getBasicColorP() {
        return this.basicColor;
    }
}

