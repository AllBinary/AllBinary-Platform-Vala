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
// package org.allbinary.direction
// import org.allbinary.logic.string.StringMaker

public class Direction : JObject {
    private static Direction[]? directionArray;
    private static bool staticSet_directionArray = false;
    private static Direction[] staticGet_directionArray() {
        if (!Direction.staticSet_directionArray) {
            Direction.staticSet_directionArray = true;
            Direction.directionArray = new Direction[13];
        }
        return Direction.directionArray;
    }
    private string name;
    private string otherName;
    private int32 value;
    private int32 frameFactor;

    // Java field initializers run after the base constructor
    private void initFieldsDirection() {
    
    
    
    
    }
    

    public Direction(string name, string otherName, int32 value, int32 frameFactor) {
        base();
        this.initFieldsDirection();
        this.name = name;
        this.otherName = otherName;
        this.value = value;
        this.frameFactor = frameFactor;
        Direction.staticGet_directionArray()[value] = this;
    }
    

    public static Direction getInstance1(int32 direction) {
        return Direction.staticGet_directionArray()[direction];
    }
    

    public virtual int32 getValue() {
        return this.value;
    }
    

    public virtual int32 getFrameFactor() {
        return this.frameFactor;
    }
    

    public virtual string getOtherName() {
        return this.otherName;
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("Direction: ");
        stringBuffer.append(this.getName());
        stringBuffer.append(" Or: ");
        stringBuffer.append(this.getOtherName());
        stringBuffer.append(" Value: ");
        stringBuffer.appendint(this.value);
        return stringBuffer.toString();
    }
}

