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
// import org.allbinary.game.input.CompleteMotionGestureInputEventHandler
// import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
// import org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener
// import org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation
// import org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration
// import org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList

public class ResolveCompleteMotionGestureListener : JObject, CompleteMotionGestureListenerInterface {
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsResolveCompleteMotionGestureListener() {
    this.logUtil = LogUtil.getInstance();
    }
    

    public ResolveCompleteMotionGestureListener() {
        base();
        this.initFieldsResolveCompleteMotionGestureListener();
        CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF("MotionGesture to CompleteMotionGesture Reciever", this, commonStrings.CONSTRUCTOR);
        CompleteMotionGestureInputEventHandler.getInstance().addListener(new GameKeyFromMotionGestureEventListener());
    }
    

    public virtual void onMotionGestureCompleted(BasicArrayList list) {
        MotionGestureConfiguration configuration = MotionGestureConfigurationFactory.getInstance();
        BasicArrayList commandActionsList = configuration.getAssociateCommandActionsList();
        int32 size = commandActionsList.size();
        for (int32 index = size - 1; index >= 0; index--) {
            MotionGestureToMotionGestureActionAssociation association = ((MotionGestureToMotionGestureActionAssociation) commandActionsList.objectArray[index]);
            if (association.isMotionGestureArrayEquals(list) == true) {
                GameKeyCompleteMotionGestureInputEvent completeMotionGestureInputEvent = ((GameKeyCompleteMotionGestureInputEvent) association.getCommandAction());
                CompleteMotionGestureInputEventHandler.getInstance().fireEvent(completeMotionGestureInputEvent);
                break;
            }
        }
    }
}

