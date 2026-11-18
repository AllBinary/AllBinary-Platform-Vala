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

public class TrackballMotionGestureFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!TrackballMotionGestureFactory.staticSet_instance) {
            TrackballMotionGestureFactory.staticSet_instance = true;
            TrackballMotionGestureFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return TrackballMotionGestureFactory.instance;
    }
    public MotionGestureInput LEFT;
    public MotionGestureInput RIGHT;
    public MotionGestureInput UP;
    public MotionGestureInput DOWN;

    // Java field initializers run after the base constructor
    private void initFieldsTrackballMotionGestureFactory() {
    
    
    
    
    }
    

    public static TrackballMotionGestureFactory getInstance() {
        if (TrackballMotionGestureFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            TrackballMotionGestureFactory.instance = new TrackballMotionGestureFactory();
        }
        return ((TrackballMotionGestureFactory) TrackballMotionGestureFactory.staticGet_instance());
    }
    

    public TrackballMotionGestureFactory() {
        base();
        this.initFieldsTrackballMotionGestureFactory();
        int32 MAX_ = InputFactory.getInstance().MAX_;
        this.LEFT = new MotionGestureInput(MAX_ - 26, "L Trackball");
        this.RIGHT = new MotionGestureInput(MAX_ - 27, "R Trackball");
        this.UP = new MotionGestureInput(MAX_ - 28, "Up Trackball");
        this.DOWN = new MotionGestureInput(MAX_ - 29, "D Trackball");
    }
}

