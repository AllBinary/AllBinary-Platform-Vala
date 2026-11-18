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
// package org.allbinary.layer
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

public class Layer : JObject {
    public static int32?? ID;
    private static bool staticSet_ID = false;
    public static int32? staticGet_ID() {
        if (!Layer.staticSet_ID) {
            Layer.staticSet_ID = true;
            Layer.ID = SmallIntegerSingletonFactory.getInstance().getAt(0);
        }
        return Layer.ID;
    }
    public LogUtil logUtil;
    public int32 x;
    public int32 y;
    public int32 z;
    private int32 width;
    private int32 height;
    private bool visible;

    // Java field initializers run after the base constructor
    private void initFieldsLayer() {
    this.logUtil = LogUtil.getInstance();
    this.x = 0;
    this.y = 0;
    this.z = 3;
    this.width = 0;
    this.height = 0;
    this.visible = true;
    }
    

    public Layer(int32 width, int32 height) {
        base();
        this.initFieldsLayer();
        this.setLayerWidth(width);
        this.setLayerHeight(height);
    }
    

    public virtual void setPosition(int32 x, int32 y, int32 z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }
    

    public virtual void moveDXY(int32 dx, int32 dy) {
        this.x += dx;
        this.y += dy;
    }
    

    public virtual void moveDXYZ(int32 dx, int32 dy, int32 dz) {
        this.x += dx;
        this.y += dy;
        this.z += dz;
    }
    

    public virtual int32 getXP() {
        return this.x;
    }
    

    public virtual int32 getYP() {
        return this.y;
    }
    

    public virtual int32 getZP() {
        return this.z;
    }
    

    public virtual int32 getWidth() {
        return this.width;
    }
    

    public virtual int32 getHeight() {
        return this.height;
    }
    

    public virtual int64 getDepth() {
        return 0;
    }
    

    public virtual void setVisible(bool visible) {
        this.visible = visible;
    }
    

    public virtual bool isVisible() {
        return this.visible;
    }
    

    public virtual void paint(Graphics graphics) {
        CommonStrings commonStrings = CommonStrings.getInstance();
        CanvasStrings canvasStrings = CanvasStrings.getInstance();
        this.logUtil.putF(commonStrings.NOT_IMPLEMENTED, this, canvasStrings.PAINT);
    }
    

    public virtual void setLayerWidth(int32 width) {
        if (width < 0) {
            JSystem.fatal(new JException("IllegalArgumentException", ""));
        }
        this.width = width;
    }
    

    public virtual void setLayerHeight(int32 height) {
        if (height < 0) {
            JSystem.fatal(new JException("IllegalArgumentException", ""));
        }
        this.height = height;
    }
    

    public virtual void toStringAppend(StringMaker stringBuffer) {
    }
}

