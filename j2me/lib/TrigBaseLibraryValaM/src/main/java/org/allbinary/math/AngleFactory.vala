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
// package org.allbinary.math
// import jsinterop.annotations.JsType
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonPhoneStrings
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

public class AngleFactory : JObject {
    private static AngleFactory? instance;
    private static bool staticSet_instance = false;
    private static AngleFactory staticGet_instance() {
        if (!AngleFactory.staticSet_instance) {
            AngleFactory.staticSet_instance = true;
            AngleFactory.instance = new AngleFactory();
        }
        return AngleFactory.instance;
    }
    public LogUtil logUtil;
    public int16 TOTAL_ANGLE;
    public int16 QUARTER_TOTAL_ANGLE;
    private Angle[] angleArray;
    private int16 NEGATIVE_ONE;
    public NamedAngle NOT_ANGLE;
    public NamedAngle DOWN;
    public NamedAngle UP;
    public NamedAngle LEFT;
    public NamedAngle RIGHT;
    private FrameUtil frameUtil;

    // Java field initializers run after the base constructor
    private void initFieldsAngleFactory() {
    this.logUtil = LogUtil.getInstance();
    this.TOTAL_ANGLE = 360;
    this.QUARTER_TOTAL_ANGLE = 90;
    this.angleArray = new Angle[((int32) (this.TOTAL_ANGLE))];
    this.NEGATIVE_ONE = ((int16) (-1));
    this.NOT_ANGLE = new NamedAngle(this.NEGATIVE_ONE, CommonStrings.getInstance().EMPTY);
    
    
    
    
    this.frameUtil = FrameUtil.getInstance();
    }
    

    public static AngleFactory getInstance() {
        return AngleFactory.staticGet_instance();
    }
    

    public AngleFactory() {
        base();
        this.initFieldsAngleFactory();
        CommonPhoneStrings commonPhoneStrings = CommonPhoneStrings.getInstance();
        int16 total = ((int16) (this.angleArray.length));
        this.UP = new NamedAngle(((int16) (0)), commonPhoneStrings.UP);
        this.angleArray[0] = this.UP;
        for (int32 index = 1; index < 90; index++) {
            this.angleArray[index] = new Angle(((int16) (index)));
        }
        this.RIGHT = new NamedAngle(((int16) (90)), commonPhoneStrings.RIGHT);
        this.angleArray[90] = this.RIGHT;
        for (int32 index = 91; index < 180; index++) {
            this.angleArray[index] = new Angle(((int16) (index)));
        }
        this.DOWN = new NamedAngle(((int16) (180)), commonPhoneStrings.DOWN);
        this.angleArray[180] = this.DOWN;
        for (int32 index = 181; index < 270; index++) {
            this.angleArray[index] = new Angle(((int16) (index)));
        }
        this.LEFT = new NamedAngle(((int16) (270)), commonPhoneStrings.LEFT);
        this.angleArray[270] = this.LEFT;
        for (int32 index = 271; index < ((int32) (total)); index++) {
            this.angleArray[index] = new Angle(((int16) (index)));
        }
    }
    

    public virtual Angle getAt(int32 index) {
        int32 adjustedIndex = this.frameUtil.adjustAngleToFrameAngle(index);
        return this.angleArray[adjustedIndex];
    }
    

    public virtual Angle getClosestDirection(int32 angle) {
        if ((angle >= 315 && angle < 360) || (angle >= 0 && angle < 45)) {
            return this.UP;
        } else if (angle >= 45 && angle < 135) {
            return this.RIGHT;
        } else if (angle >= 135 && angle < 225) {
            return this.DOWN;
        } else if (angle >= 225 && angle < 315) {
            return this.LEFT;
        }
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual Angle getGeneralDirection() {
        return this.NOT_ANGLE;
    }
    

    public static void main(string[] args) {
        StringMaker stringMaker = new StringMaker();
        AngleFactory angleFactory = AngleFactory.getInstance();
        for (int32 index = 0; index < 360; index++) {
            stringMaker.appendint(index).append(CommonSeps.getInstance().FORWARD_SLASH).appendshort(angleFactory.getClosestDirection(index).getValue()).append(CommonSeps.getInstance().NEW_LINE);
        }
        LogUtil.getInstance().putF(stringMaker.toString(), JString.box("main"), "main");
    }
}

