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
// package org.allbinary.input.motion.gesture.observer
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface

public class MotionEventFactory : JObject, AllBinaryEventObjectFactoryInterface {
    private static int32 index = 0;
    private JObject source;
    private int32 id;

    // Java field initializers run after the base constructor
    private void initFieldsMotionEventFactory() {
    
    
    }
    

    public MotionEventFactory(JObject source, int32 id) {
        base();
        this.initFieldsMotionEventFactory();
        this.source = source;
        this.id = id;
        MotionEventFactory.index = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId();
    }
    

    public virtual AllBinaryEventObject getInstance() {
        InputFactory inputFactory = InputFactory.getInstance();
        Input input = inputFactory.getInstanceById(MotionEventFactory.index++);
        if (input == inputFactory.NO_INPUT) {
            return new MotionGestureEvent(this.source, this.id, ((MotionGestureInput) TouchMotionGestureFactory.getInstance().NO_MOTION));
        } else {
            return new MotionGestureEvent(this.source, this.id, ((MotionGestureInput) input));
        }
    }
}

