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
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.math.PositionStrings
// import org.allbinary.string.CommonSeps

public class GPoint : JObject {
    private const string POINT_LABEL = "Point: ";
    private int32 x;
    private int32 y;
    private int32 z;

    // Java field initializers run after the base constructor
    private void initFieldsGPoint() {
    
    
    
    }
    

    public static GPoint getInstance1(GPoint point) {
        return new GPoint(point.getX(), point.getY(), point.getZ());
    }
    

    public GPoint(int32 x, int32 y, int32 z) {
        base();
        this.initFieldsGPoint();
        this.x = x;
        this.y = y;
        this.z = z;
    }
    

    public virtual int32 getX() {
        return this.x;
    }
    

    public virtual int32 getY() {
        return this.y;
    }
    

    public virtual int32 getZ() {
        return this.z;
    }
    

    public virtual int32 getRawX() {
        return this.x;
    }
    

    public virtual int32 getRawY() {
        return this.y;
    }
    

    public virtual int32 getRawZ() {
        return this.z;
    }
    

    public override string toString() {
        return GPoint.toStringStatic(this.getX(), this.getY(), this.getZ());
    }
    

    public static string toStringStatic(int32 x, int32 y, int32 z) {
        StringMaker stringBuffer = new StringMaker();
        PositionStrings positionStrings = PositionStrings.getInstance();
        stringBuffer.append(GPoint.POINT_LABEL);
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.appendint(x);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.appendint(y);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.appendint(z);
        return stringBuffer.toString();
    }
}

