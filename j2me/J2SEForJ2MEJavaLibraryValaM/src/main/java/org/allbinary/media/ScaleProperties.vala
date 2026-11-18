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
// package org.allbinary.media
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels

public class ScaleProperties : JObject {
    public static ScaleProperties? instance;
    private static bool staticSet_instance = false;
    public static ScaleProperties staticGet_instance() {
        if (!ScaleProperties.staticSet_instance) {
            ScaleProperties.staticSet_instance = true;
            ScaleProperties.instance = new ScaleProperties();
        }
        return ScaleProperties.instance;
    }
    public float scaleX;
    public float scaleY;
    public int32 scaleWidth;
    public int32 scaleHeight;
    public bool shouldScale;

    // Java field initializers run after the base constructor
    private void initFieldsScaleProperties() {
    this.scaleX = 0.0;
    this.scaleY = 0.0;
    this.scaleWidth = 0;
    this.scaleHeight = 0;
    this.shouldScale = false;
    }

    public ScaleProperties() {
        base();
        this.initFieldsScaleProperties();
    }
    

    public override string toString() {
        return new StringMaker().append(CommonLabels.getInstance().COLON_SEP).appendboolean(this.shouldScale).append("scaleX: ").appendfloat(this.scaleX).append("scaleY: ").appendfloat(this.scaleY).append("scaleWidth: ").appendint(this.scaleWidth).append("scaleHeight: ").appendint(this.scaleHeight).toString();
    }
}

