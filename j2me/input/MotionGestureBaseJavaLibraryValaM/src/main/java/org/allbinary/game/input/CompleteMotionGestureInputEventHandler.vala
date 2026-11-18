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
// package org.allbinary.game.input
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class CompleteMotionGestureInputEventHandler : BasicEventHandler {
    private static CompleteMotionGestureInputEventHandler? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static CompleteMotionGestureInputEventHandler staticGet_SINGLETON() {
        if (!CompleteMotionGestureInputEventHandler.staticSet_SINGLETON) {
            CompleteMotionGestureInputEventHandler.staticSet_SINGLETON = true;
            CompleteMotionGestureInputEventHandler.SINGLETON = new CompleteMotionGestureInputEventHandler();
        }
        return CompleteMotionGestureInputEventHandler.SINGLETON;
    }
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsCompleteMotionGestureInputEventHandler() {
    this.list = new BasicArrayListD();
    }
    

    public static CompleteMotionGestureInputEventHandler getInstance() {
        return CompleteMotionGestureInputEventHandler.staticGet_SINGLETON();
    }
    

    public CompleteMotionGestureInputEventHandler() {
        base();
        this.initFieldsCompleteMotionGestureInputEventHandler();
    }
    

    public virtual void addListener(CompleteMotionGestureInputEventListener completeMotionGestureInputEventListener) {
        if (!this.list.contains(completeMotionGestureInputEventListener)) {
            this.list.add(completeMotionGestureInputEventListener);
        }
    }
    

    public override void removeAllListeners() {
        this.list.clear();
        base.removeAllListeners();
    }
    

    public override void removeListener(EventListenerInterface eventListenerInterface) {
        this.list.remove(eventListenerInterface);
        base.removeListener(eventListenerInterface);
    }
    

    public override void fireEvent(AllBinaryEventObject eventObject) {
        for (int32 index = this.list.size(); --index >= 0; ) {
            {
                CompleteMotionGestureInputEventListener completeMotionGestureInputEventListener = ((CompleteMotionGestureInputEventListener) this.list.objectArray[index]);
                completeMotionGestureInputEventListener.onCompleteMotionGestureInputEvent(((CompleteMotionGestureInputEvent) eventObject));
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        base.fireEvent(eventObject);
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        CompleteMotionGestureInputEventListenerInterface completeMotionGestureInputEventListenerInterface = ((CompleteMotionGestureInputEventListenerInterface) eventListenerInterface);
        completeMotionGestureInputEventListenerInterface.onCompleteMotionGestureInputEvent(((CompleteMotionGestureInputEvent) eventObject));
    }
}

