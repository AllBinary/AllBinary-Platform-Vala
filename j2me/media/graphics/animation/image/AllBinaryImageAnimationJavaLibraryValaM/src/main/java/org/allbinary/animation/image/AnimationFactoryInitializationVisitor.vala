/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.image
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.math.PositionStrings
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps

public class AnimationFactoryInitializationVisitor : JObject {
    public int32 width;
    public int32 height;
    public int32 dx;
    public int32 dy;
    public int32 originalDx;
    public int32 originalDy;

    // Java field initializers run after the base constructor
    private void initFieldsAnimationFactoryInitializationVisitor() {
    this.width = 0;
    this.height = 0;
    this.dx = 0;
    this.dy = 0;
    this.originalDx = 0;
    this.originalDy = 0;
    }

    public AnimationFactoryInitializationVisitor() {
        base();
        this.initFieldsAnimationFactoryInitializationVisitor();
    }
    

    public virtual void visit() {
    }
    

    public override string toString() {
        CommonSeps commonSeps = CommonSeps.getInstance();
        CommonLabels commonLabels = CommonLabels.getInstance();
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(PositionStrings.getInstance().DX_LABEL).appendfloat(((float) (this.dx)));
        stringBuffer.append(PositionStrings.getInstance().DY_LABEL).appendfloat(((float) (this.dy)));
        stringBuffer.append(commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.width);
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.height);
        return stringBuffer.toString();
    }
}

