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
// import org.allbinary.game.input.CompleteMotionGestureInputEvent
// import org.allbinary.util.BasicArrayList

public class MotionGestureToMotionGestureActionAssociation : JObject {
    private BasicArrayList list;
    private CompleteMotionGestureInputEvent motionGestureAction;

    // Java field initializers run after the base constructor
    private void initFieldsMotionGestureToMotionGestureActionAssociation() {
    
    
    }
    

    public MotionGestureToMotionGestureActionAssociation(BasicArrayList list, CompleteMotionGestureInputEvent commandAction) {
        base();
        this.initFieldsMotionGestureToMotionGestureActionAssociation();
        this.list = list;
        this.motionGestureAction = commandAction;
    }
    

    public virtual BasicArrayList getMotionGesture() {
        return this.list;
    }
    

    public virtual void setMotionGestures(BasicArrayList list) {
        this.list = list;
    }
    

    public virtual CompleteMotionGestureInputEvent getCommandAction() {
        return this.motionGestureAction;
    }
    

    public virtual void setMotionGestureAction(CompleteMotionGestureInputEvent commandAction) {
        this.motionGestureAction = commandAction;
    }
    

    public virtual bool isMotionGestureArrayEquals(BasicArrayList aList) {
        int32 size = aList.size();
        if (this.list.size() != size) {
            return false;
        }
        for (int32 i = size - 1; i >= 0; i--) {
            if (aList.objectArray[i] != this.list.objectArray[i]) {
                return false;
            }
        }
        return true;
    }
}

