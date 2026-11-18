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
// package org.allbinary.graphics
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps

public class Rectangle : JObject {
    private GPoint point;
    private int32 width;
    private int32 height;

    // Java field initializers run after the base constructor
    private void initFieldsRectangle() {
    
    
    
    }
    

    public Rectangle(GPoint point, int32 width, int32 height) {
        base();
        this.initFieldsRectangle();
        this.point = point;
        this.width = width;
        this.height = height;
    }
    

    public virtual GPoint getPoint() {
        return this.point;
    }
    

    public virtual void setPoint(GPoint point) {
        this.point = point;
    }
    

    public virtual int32 getMaxX() {
        return this.point.getX() + this.width;
    }
    

    public virtual int32 getMaxY() {
        return this.point.getY() + this.height;
    }
    

    public virtual int32 getWidth() {
        return this.width;
    }
    

    public virtual void setWidth(int32 width) {
        this.width = width;
    }
    

    public virtual int32 getHeight() {
        return this.height;
    }
    

    public virtual void setHeight(int32 height) {
        this.height = height;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(this.getPoint().toString());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(CommonLabels.getInstance().WIDTH_LABEL);
        stringBuffer.appendint(this.getWidth());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(CommonLabels.getInstance().HEIGHT_LABEL);
        stringBuffer.appendint(this.getHeight());
        stringBuffer.append(" MaxX: ");
        stringBuffer.appendint(this.getMaxX());
        stringBuffer.append(" MaxY: ");
        stringBuffer.appendint(this.getMaxY());
        return stringBuffer.toString();
    }
}

