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
// package org.allbinary.view.event
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class ViewPositionEventHandler : BasicEventHandler {
    private static ViewPositionEventHandler? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static ViewPositionEventHandler staticGet_SINGLETON() {
        if (!ViewPositionEventHandler.staticSet_SINGLETON) {
            ViewPositionEventHandler.staticSet_SINGLETON = true;
            ViewPositionEventHandler.SINGLETON = new ViewPositionEventHandler();
        }
        return ViewPositionEventHandler.SINGLETON;
    }
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsViewPositionEventHandler() {
    this.list = new BasicArrayListD();
    }
    

    public static ViewPositionEventHandler getInstance() {
        return ViewPositionEventHandler.staticGet_SINGLETON();
    }
    

    public ViewPositionEventHandler() {
        base();
        this.initFieldsViewPositionEventHandler();
    }
    

    public virtual void addListener(AllBinaryLayer layerInterface) {
        if (!this.list.contains(layerInterface)) {
            this.list.add(layerInterface);
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
                AllBinaryLayer layerInterface = ((AllBinaryLayer) this.list.objectArray[index]);
                layerInterface.onChangeEvent(((ViewPositionEvent) eventObject));
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        base.fireEvent(eventObject);
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        ViewPositionEventListenerInterface viewPositionEventListenerInterface = (((ViewPositionEventListenerInterface) eventListenerInterface));
        viewPositionEventListenerInterface.onChangeEvent(((ViewPositionEvent) eventObject));
    }
}

