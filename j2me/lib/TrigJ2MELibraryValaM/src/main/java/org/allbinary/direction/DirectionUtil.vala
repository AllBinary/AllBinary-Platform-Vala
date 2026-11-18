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
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory

public class DirectionUtil : JObject {
    private static DirectionUtil? instance;
    private static bool staticSet_instance = false;
    private static DirectionUtil staticGet_instance() {
        if (!DirectionUtil.staticSet_instance) {
            DirectionUtil.staticSet_instance = true;
            DirectionUtil.instance = new DirectionUtil();
        }
        return DirectionUtil.instance;
    }
    private Angle[] directionArray;
    private Angle[] directionArray2;

    // Java field initializers run after the base constructor
    private void initFieldsDirectionUtil() {
    this.directionArray = new Angle[10];
    this.directionArray2 = new Angle[10];
    }
    

    public static DirectionUtil getInstance() {
        return DirectionUtil.staticGet_instance();
    }
    

    public DirectionUtil() {
        base();
        this.initFieldsDirectionUtil();
        AngleFactory angleFactory = AngleFactory.getInstance();
        DirectionFactory directionFactory = DirectionFactory.getInstance();
        this.directionArray[directionFactory.LEFT.getValue()] = angleFactory.LEFT;
        this.directionArray[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT;
        this.directionArray[directionFactory.UP.getValue()] = angleFactory.UP;
        this.directionArray[directionFactory.DOWN.getValue()] = angleFactory.DOWN;
        this.directionArray2[directionFactory.LEFT.getValue()] = angleFactory.LEFT;
        this.directionArray2[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT;
        this.directionArray2[directionFactory.UP.getValue()] = angleFactory.UP;
        this.directionArray2[directionFactory.DOWN.getValue()] = angleFactory.DOWN;
    }
    

    public virtual Angle getAngle(Direction direction) {
        return this.directionArray2[direction.getValue()];
    }
    

    public virtual Angle getFrameAngle(Direction direction) {
        return this.directionArray[direction.getValue()];
    }
}

