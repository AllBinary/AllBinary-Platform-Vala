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
// package org.allbinary.input.motion.gesture
// import org.allbinary.game.input.InputFactory
// import org.allbinary.logic.NullUtil

public class TouchMotionGestureFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!TouchMotionGestureFactory.staticSet_instance) {
            TouchMotionGestureFactory.staticSet_instance = true;
            TouchMotionGestureFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return TouchMotionGestureFactory.instance;
    }
    public MotionGestureInput LEFT;
    public MotionGestureInput RIGHT;
    public MotionGestureInput UP;
    public MotionGestureInput DOWN;
    public MotionGestureInput PRESSED;
    public MotionGestureInput RELEASED;
    public MotionGestureInput DIAGONAL_DOWN_RIGHT;
    public MotionGestureInput DIAGONAL_DOWN_LEFT;
    public MotionGestureInput DIAGONAL_UP_RIGHT;
    public MotionGestureInput DIAGONAL_UP_LEFT;
    public MotionGestureInput SCROLL_UP;
    public MotionGestureInput SCROLL_DOWN;
    public MotionGestureInput NO_MOTION;
    public MotionGestureInput LAST_MOTION;

    // Java field initializers run after the base constructor
    private void initFieldsTouchMotionGestureFactory() {
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }
    

    public static TouchMotionGestureFactory getInstance() {
        if (TouchMotionGestureFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            TouchMotionGestureFactory.instance = new TouchMotionGestureFactory();
        }
        return ((TouchMotionGestureFactory) TouchMotionGestureFactory.staticGet_instance());
    }
    

    public TouchMotionGestureFactory() {
        base();
        this.initFieldsTouchMotionGestureFactory();
        int32 MAX_ = InputFactory.getInstance().MAX_;
        this.LEFT = new MotionGestureInput(MAX_ - 3, "Left Touch");
        this.RIGHT = new MotionGestureInput(MAX_ - 4, "Right Touch");
        this.UP = new MotionGestureInput(MAX_ - 5, "Up Touch");
        this.DOWN = new MotionGestureInput(MAX_ - 6, "Down Touch");
        this.PRESSED = new MotionGestureInput(MAX_ - 7, "Screen Press");
        this.RELEASED = new MotionGestureInput(MAX_ - 8, "Released");
        this.DIAGONAL_DOWN_RIGHT = new MotionGestureInput(MAX_ - 9, "Diagonal Dn R");
        this.DIAGONAL_DOWN_LEFT = new MotionGestureInput(MAX_ - 10, "Diagonal Dn L");
        this.DIAGONAL_UP_RIGHT = new MotionGestureInput(MAX_ - 11, "Diagonal Up R");
        this.DIAGONAL_UP_LEFT = new MotionGestureInput(MAX_ - 12, "Diagonal Up L");
        this.SCROLL_UP = new MotionGestureInput(MAX_ - 13, "Scroll Up");
        this.SCROLL_DOWN = new MotionGestureInput(MAX_ - 14, "Scroll Down");
        this.NO_MOTION = new MotionGestureInput(MAX_ - 2, "No Motion");
        this.LAST_MOTION = new MotionGestureInput(MAX_ - 19, "Last Motion");
    }
}

