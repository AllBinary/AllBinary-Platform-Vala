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
// package org.allbinary.input.gyro
// import org.allbinary.game.input.InputFactory
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.logic.NullUtil

public class OrientationMotionGestureFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!OrientationMotionGestureFactory.staticSet_instance) {
            OrientationMotionGestureFactory.staticSet_instance = true;
            OrientationMotionGestureFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return OrientationMotionGestureFactory.instance;
    }
    public MotionGestureInput LEFT;
    public MotionGestureInput RIGHT;
    public MotionGestureInput UP;
    public MotionGestureInput DOWN;
    public MotionGestureInput ROLL_LEFT;
    public MotionGestureInput ROLL_RIGHT;

    // Java field initializers run after the base constructor
    private void initFieldsOrientationMotionGestureFactory() {
    
    
    
    
    
    
    }
    

    public static OrientationMotionGestureFactory getInstance() {
        if (OrientationMotionGestureFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            OrientationMotionGestureFactory.instance = new OrientationMotionGestureFactory();
        }
        return ((OrientationMotionGestureFactory) OrientationMotionGestureFactory.staticGet_instance());
    }
    

    public OrientationMotionGestureFactory() {
        base();
        this.initFieldsOrientationMotionGestureFactory();
        int32 MAX_ = InputFactory.getInstance().MAX_;
        this.LEFT = new MotionGestureInput(MAX_ - 20, "Left Orient");
        this.RIGHT = new MotionGestureInput(MAX_ - 21, "Right Orient");
        this.UP = new MotionGestureInput(MAX_ - 22, "Up Orient");
        this.DOWN = new MotionGestureInput(MAX_ - 23, "Down Orient");
        this.ROLL_LEFT = new MotionGestureInput(MAX_ - 24, "Roll Left");
        this.ROLL_RIGHT = new MotionGestureInput(MAX_ - 25, "Roll Right");
    }
}

