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
// package org.allbinary.android.input.motion.event
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class AnalogControllerConfigurationEventHandler : BasicEventHandler {
    private static AnalogControllerConfigurationEventHandler? instance;
    private static bool staticSet_instance = false;
    private static AnalogControllerConfigurationEventHandler staticGet_instance() {
        if (!AnalogControllerConfigurationEventHandler.staticSet_instance) {
            AnalogControllerConfigurationEventHandler.staticSet_instance = true;
            AnalogControllerConfigurationEventHandler.instance = new AnalogControllerConfigurationEventHandler();
        }
        return AnalogControllerConfigurationEventHandler.instance;
    }
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsAnalogControllerConfigurationEventHandler() {
    this.list = new BasicArrayListD();
    }
    

    public static AnalogControllerConfigurationEventHandler getInstance() {
        return AnalogControllerConfigurationEventHandler.staticGet_instance();
    }
    

    public AnalogControllerConfigurationEventHandler() {
        base();
        this.initFieldsAnalogControllerConfigurationEventHandler();
    }
    

    public virtual void addListener(AnalogControllerConfigurationEventListenerInterface analogControllerConfigurationEventListenerInterface) {
        if (!this.list.contains(analogControllerConfigurationEventListenerInterface)) {
            this.list.add(analogControllerConfigurationEventListenerInterface);
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
                AnalogControllerConfigurationEventListenerInterface playerGameInput = ((AnalogControllerConfigurationEventListenerInterface) this.list.objectArray[index]);
                playerGameInput.onAnalogControllerConfigurationEvent(((AnalogControllerConfigurationEvent) eventObject));
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        base.fireEvent(eventObject);
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        AnalogControllerConfigurationEventListenerInterface analogControllerConfigurationEventListenerInterface = (((AnalogControllerConfigurationEventListenerInterface) eventListenerInterface));
        analogControllerConfigurationEventListenerInterface.onAnalogControllerConfigurationEvent(((AnalogControllerConfigurationEvent) eventObject));
    }
}

