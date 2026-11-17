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
// package org.allbinary.logic.util.event.handler
// import jsinterop.annotations.JsType
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

public class BasicEventHandler : JObject, BasicEventHandlerInterface {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private EventStrings eventStrings;
    public BasicArrayList eventListenerInterfaceList;

    // Java field initializers run after the base constructor
    private void initFieldsBasicEventHandler() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.eventStrings = EventStrings.getInstance();
    
    }
    

    public BasicEventHandler() {
        base();
        this.initFieldsBasicEventHandler();
        this.eventListenerInterfaceList = new BasicArrayListD();
    }
    

    public virtual void removeAllListeners() {
        this.eventListenerInterfaceList = new BasicArrayListD();
    }
    

    public virtual void addListeners(BasicArrayList vector) {
        EventListenerInterface eventListenerInterface = null;
        int32 size = vector.size();
        for (int32 index = 0; index < size; index++) {
            eventListenerInterface = ((EventListenerInterface) vector.@get(index));
            this.addListenerInterface(eventListenerInterface);
        }
    }
    

    public virtual void removeListeners(BasicArrayList vector) {
        EventListenerInterface eventListenerInterface = null;
        int32 size = vector.size();
        for (int32 index = 0; index < size; index++) {
            eventListenerInterface = ((EventListenerInterface) vector.@get(index));
            this.removeListener(eventListenerInterface);
        }
    }
    

    public virtual void addListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    public virtual void addListenerInterface(EventListenerInterface eventListenerInterface) {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    public virtual void removeListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    public virtual void removeListener(EventListenerInterface eventListenerInterface) {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    public virtual void fireEvent(AllBinaryEventObject eventObject) {
        EventListenerInterface eventListenerInterface = null;
        int32 index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            {
                eventListenerInterface = ((EventListenerInterface) this.eventListenerInterfaceList.@get(index));
                this.process(eventObject, eventListenerInterface);
            } /* catch (Exception e): a thrown Java exception stops the program */
            index++;
        }
    }
    

    public virtual void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        eventListenerInterface.onEvent(eventObject);
    }
    

    public virtual BasicArrayList getEventListenerInterfaceListP() {
        return this.eventListenerInterfaceList;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(this.eventStrings.TOTAL_LISTENERS);
        stringBuffer.appendint(this.eventListenerInterfaceList.size());
        EventListenerInterface eventListenerInterface = null;
        int32 index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            {
                eventListenerInterface = ((EventListenerInterface) this.eventListenerInterfaceList.@get(index));
                stringBuffer.append(this.eventStrings.LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } /* catch (Exception e): a thrown Java exception stops the program */
            index++;
        }
        return stringBuffer.toString();
    }
}

