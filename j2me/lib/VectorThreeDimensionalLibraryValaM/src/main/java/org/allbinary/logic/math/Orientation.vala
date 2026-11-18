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
// package org.allbinary.logic.math
// import org.allbinary.logic.string.StringMaker

public class Orientation : JObject {
    public static Orientation? NONE;
    private static bool staticSet_NONE = false;
    public static Orientation staticGet_NONE() {
        if (!Orientation.staticSet_NONE) {
            Orientation.staticSet_NONE = true;
            Orientation.NONE = new Orientation(0, 0, 0);
        }
        return Orientation.NONE;
    }
    private static Orientation? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static Orientation staticGet_SINGLETON() {
        if (!Orientation.staticSet_SINGLETON) {
            Orientation.staticSet_SINGLETON = true;
            Orientation.SINGLETON = new Orientation(0, 0, 0);
        }
        return Orientation.SINGLETON;
    }
    public BasicDecimal yaw;
    public BasicDecimal pitch;
    public BasicDecimal roll;

    // Java field initializers run after the base constructor
    private void initFieldsOrientation() {
    this.yaw = new BasicDecimal(0);
    this.pitch = new BasicDecimal(0);
    this.roll = new BasicDecimal(0);
    }
    

    public static Orientation getInstance3(int32 yaw, int32 pitch, int32 roll) {
        Orientation.staticGet_SINGLETON().yaw.setint(yaw);
        Orientation.staticGet_SINGLETON().pitch.setint(pitch);
        Orientation.staticGet_SINGLETON().roll.setint(roll);
        return Orientation.staticGet_SINGLETON();
    }
    

    public Orientation(int32 yaw, int32 pitch, int32 roll) {
        base();
        this.initFieldsOrientation();
        this.yaw.setint(yaw);
        this.pitch.setint(pitch);
        this.roll.setint(roll);
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("Y: ");
        stringBuffer.append(this.yaw.toString());
        stringBuffer.append(" P: ");
        stringBuffer.append(this.pitch.toString());
        stringBuffer.append(" R: ");
        stringBuffer.append(this.roll.toString());
        return stringBuffer.toString();
    }
}

