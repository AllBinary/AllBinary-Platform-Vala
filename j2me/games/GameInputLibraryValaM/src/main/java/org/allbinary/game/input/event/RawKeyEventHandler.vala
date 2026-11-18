/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.input.event
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class RawKeyEventHandler : JObject {
    private static RawKeyEventHandler? instance;
    private static bool staticSet_instance = false;
    private static RawKeyEventHandler staticGet_instance() {
        if (!RawKeyEventHandler.staticSet_instance) {
            RawKeyEventHandler.staticSet_instance = true;
            RawKeyEventHandler.instance = new RawKeyEventHandler();
        }
        return RawKeyEventHandler.instance;
    }
    private const string TOTAL_LISTENERS = "Total Listeners: ";
    private const string LISTENER_LABEL = " Listener: ";
    public LogUtil logUtil;
    public BasicArrayList eventListenerInterfaceList;

    // Java field initializers run after the base constructor
    private void initFieldsRawKeyEventHandler() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    public static RawKeyEventHandler getInstance() {
        return RawKeyEventHandler.staticGet_instance();
    }
    

    public RawKeyEventHandler() {
        base();
        this.initFieldsRawKeyEventHandler();
        this.eventListenerInterfaceList = new BasicArrayListD();
    }
    

    public virtual void removeAllListeners() {
        this.eventListenerInterfaceList = new BasicArrayListD();
    }
    

    public virtual void addListeners(BasicArrayList vector) {
        RawKeyEventListener eventListenerInterface = null;
        int32 size = vector.size();
        for (int32 index = 0; index < size; index++) {
            eventListenerInterface = ((RawKeyEventListener) vector.@get(index));
            this.addListener(eventListenerInterface);
        }
    }
    

    public virtual void addListenerSingleThreaded(RawKeyEventListener eventListenerInterface) {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    public virtual void addListener(RawKeyEventListener eventListenerInterface) {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    public virtual void removeListenerSingleThreaded(RawKeyEventListener eventListenerInterface) {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    public virtual void removeListener(RawKeyEventListener eventListenerInterface) {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    public virtual void fireEvent(int32 keyCode, int32 deviceId, bool repeated) {
        RawKeyEventListener eventListenerInterface = null;
        int32 index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            {
                eventListenerInterface = ((RawKeyEventListener) this.eventListenerInterfaceList.@get(index));
                this.process(keyCode, deviceId, repeated, eventListenerInterface);
            } /* catch (Exception e): a thrown Java exception stops the program */
            index++;
        }
    }
    

    public virtual void process(int32 keyCode, int32 deviceId, bool repeated, RawKeyEventListener eventListenerInterface) {
        eventListenerInterface.onEventRaw(keyCode, deviceId, repeated);
    }
    

    public virtual BasicArrayList getEventListenerInterfaceListP() {
        return this.eventListenerInterfaceList;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(RawKeyEventHandler.TOTAL_LISTENERS);
        stringBuffer.appendint(this.eventListenerInterfaceList.size());
        RawKeyEventListener eventListenerInterface = null;
        int32 index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            {
                eventListenerInterface = ((RawKeyEventListener) this.eventListenerInterfaceList.@get(index));
                stringBuffer.append(RawKeyEventHandler.LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } /* catch (Exception e): a thrown Java exception stops the program */
            index++;
        }
        return stringBuffer.toString();
    }
}

