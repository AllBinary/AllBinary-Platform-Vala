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
// import jsinterop.annotations.JsType
// import org.allbinary.logic.string.StringMaker
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

public class BasicColor : JObject {
    private string name;
    private int32 value;
    private float redComponent;
    private float greenComponent;
    private float blueComponent;
    private float alphaComponent;
    public int16 red;
    public int16 green;
    public int16 blue;
    public int16 alpha;

    // Java field initializers run after the base constructor
    private void initFieldsBasicColor() {
    
    
    
    
    
    
    
    
    
    
    }
    

    public BasicColor(int32 alphaValue, int32 value, string name) {
        base();
        this.initFieldsBasicColor();
        this.name = name;
        int32 tempValue = 0;
        BasicColorUtil basicColorUtil = BasicColorUtil.getInstance();
        if (basicColorUtil.isAlpha) {
            if (basicColorUtil.ffOpaque) {
                tempValue = alphaValue | value;
            } else {
                tempValue = 0x00000000 | value;
            }
        } else {
            tempValue = value;
        }
        int32 alphaInt = ((tempValue >> 24) & 255);
        this.alpha = ((int16) (alphaInt));
        this.alphaComponent = (((float) (alphaInt))) / 255.0f;
        int32 redInt = ((tempValue >> 16) & 255);
        this.red = ((int16) (redInt));
        this.redComponent = (((float) (redInt))) / 255.0f;
        int32 greenInt = ((tempValue >> 8) & 255);
        this.green = ((int16) (greenInt));
        this.greenComponent = (((float) (greenInt))) / 255.0f;
        int32 blueInt = (tempValue & 255);
        this.blue = ((int16) (blueInt));
        this.blueComponent = (((float) (blueInt))) / 255.0f;
        this.value = tempValue;
    }
    

    public virtual int32 intValue() {
        return this.value;
    }
    

    public virtual int32 toInt() {
        return this.value;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("BasicColor: ");
        stringBuffer.append("Alpha: ");
        stringBuffer.appendshort(this.alpha);
        stringBuffer.append(" Red: ");
        stringBuffer.appendshort(this.red);
        stringBuffer.append(" Green: ");
        stringBuffer.appendshort(this.green);
        stringBuffer.append(" Blue: ");
        stringBuffer.appendshort(this.blue);
        stringBuffer.append(" Value: ");
        stringBuffer.appendint(this.value);
        return stringBuffer.toString();
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    public virtual float getRedComponent() {
        return this.redComponent;
    }
    

    public virtual float getGreenComponent() {
        return this.greenComponent;
    }
    

    public virtual float getBlueComponent() {
        return this.blueComponent;
    }
    

    public virtual float getAlphaComponent() {
        return this.alphaComponent;
    }
}

