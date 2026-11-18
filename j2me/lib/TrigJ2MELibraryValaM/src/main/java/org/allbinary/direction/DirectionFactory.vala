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
// import org.allbinary.string.CommonPhoneStrings
// import org.allbinary.string.CommonSeps

public class DirectionFactory : JObject {
    private static DirectionFactory? instance;
    private static bool staticSet_instance = false;
    private static DirectionFactory staticGet_instance() {
        if (!DirectionFactory.staticSet_instance) {
            DirectionFactory.staticSet_instance = true;
            DirectionFactory.instance = new DirectionFactory();
        }
        return DirectionFactory.instance;
    }
    public string NAME;
    public Direction LEFT;
    public Direction RIGHT;
    public Direction DOWN;
    public Direction UP;
    public Direction UP_LEFT;
    public Direction UP_RIGHT;
    public Direction DOWN_LEFT;
    public Direction DOWN_RIGHT;
    public Direction NOT_BORDERED_WITH;
    public Direction NO_DIRECTION;
    public Direction TOP;
    public Direction BOTTOM;
    public Direction ALL_DIRECTION;

    // Java field initializers run after the base constructor
    private void initFieldsDirectionFactory() {
    this.NAME = "DIRECTION";
    this.LEFT = new Direction(CommonPhoneStrings.getInstance().LEFT, "WEST", 0, 1);
    this.RIGHT = new Direction(CommonPhoneStrings.getInstance().RIGHT, "EAST", 1, 0);
    this.DOWN = new Direction(CommonPhoneStrings.getInstance().DOWN, "SOUTH", 2, 0);
    this.UP = new Direction(CommonPhoneStrings.getInstance().UP, "NORTH", 3, 0);
    
    
    
    
    this.NOT_BORDERED_WITH = new Direction("NOT_BORDERED_WITH", "NOT_BORDERED_WITH", 8, 0);
    this.NO_DIRECTION = new Direction("NO_DIRECTION", "NO_DIRECTION", 9, 0);
    this.TOP = new Direction("TOP", "TOP", 10, 0);
    this.BOTTOM = new Direction("BOTTOM", "BOTTOM", 11, 0);
    this.ALL_DIRECTION = new Direction("ALL_DIRECTION", "ALL_DIRECTION", 12, 0);
    }
    

    public static DirectionFactory getInstance() {
        return DirectionFactory.staticGet_instance();
    }
    

    public DirectionFactory() {
        base();
        this.initFieldsDirectionFactory();
        StringMaker stringBuffer = new StringMaker();
        CommonSeps commonSeps = CommonSeps.getInstance();
        this.UP_LEFT = new Direction("UP LEFT", stringBuffer.append(this.UP.getOtherName()).append(commonSeps.SPACE).append(this.LEFT.getOtherName()).toString(), 4, 0);
        stringBuffer.@delete(0, stringBuffer.length());
        this.UP_RIGHT = new Direction("UP RIGHT", stringBuffer.append(this.UP.getOtherName()).append(commonSeps.SPACE).append(this.RIGHT.getOtherName()).toString(), 5, 0);
        stringBuffer.@delete(0, stringBuffer.length());
        this.DOWN_LEFT = new Direction("DOWN LEFT", stringBuffer.append(this.DOWN.getOtherName()).append(commonSeps.SPACE).append(this.LEFT.getOtherName()).toString(), 6, 0);
        stringBuffer.@delete(0, stringBuffer.length());
        this.DOWN_RIGHT = new Direction("DOWN RIGHT", stringBuffer.append(this.DOWN.getOtherName()).append(commonSeps.SPACE).append(this.RIGHT.getOtherName()).toString(), 7, 0);
    }
}

