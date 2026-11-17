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
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor

public class AngleInfo : JObject {
    private const string ANGLE = "Angle: ";
    private AngleIncrementInfo angleIncrementInfo;
    private int16 angle;
    private FrameUtil frameUtil;

    // Java field initializers run after the base constructor
    private void initFieldsAngleInfo() {
    
    this.angle = 0;
    this.frameUtil = FrameUtil.getInstance();
    }
    

    public static AngleInfo getInstance1(int16 angleIncrement) {
        return new AngleInfo(AngleIncrementInfoFactory.getInstance().getAt(angleIncrement));
    }
    

    public AngleInfo(AngleIncrementInfo angleIncrementInfo) {
        base();
        this.initFieldsAngleInfo();
        this.angleIncrementInfo = angleIncrementInfo;
    }
    

    public virtual void adjustAngle(int32 frame) {
        int32 newAngle = ((int32) (this.angleIncrementInfo.getAngleIncrement())) * frame - 90;
        this.setAngle(((int16) (this.frameUtil.adjustAngleToFrameAngle(newAngle))));
    }
    

    public virtual int16 getAngle() {
        return this.angle;
    }
    

    public virtual void setAngle(int16 angle) {
        this.angle = angle;
    }
    

    public virtual AngleIncrementInfo getAngleIncrementInfo() {
        return this.angleIncrementInfo;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(AngleInfo.ANGLE);
        stringBuffer.appendshort(this.angle);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(StringUtil.getInstance().toString1(this.getAngleIncrementInfo()));
        return stringBuffer.toString();
    }
}

