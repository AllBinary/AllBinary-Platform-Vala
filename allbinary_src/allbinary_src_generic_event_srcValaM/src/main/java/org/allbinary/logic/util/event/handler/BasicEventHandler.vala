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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class BasicEventHandler : JObject, BasicEventHandlerInterface {
    public const string PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization";
    public LogUtil logUtil;
    private BasicArrayList eventListenerInterfaceList;

    // Java field initializers run after the base constructor
    private void initFieldsBasicEventHandler() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    public BasicEventHandler() {
        base();
        this.initFieldsBasicEventHandler();
        this.eventListenerInterfaceList = new BasicArrayListD();
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        string LISTENER = " Listener: ";
        stringBuffer.append("Total Listeners: ");
        stringBuffer.appendint(this.eventListenerInterfaceList.size());
        EventListenerInterface eventListenerInterface = null;
        int32 index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            {
                eventListenerInterface = ((EventListenerInterface) this.eventListenerInterfaceList.objectArray[index]);
                stringBuffer.append(LISTENER);
                stringBuffer.append(StringUtil.getInstance().toString1(eventListenerInterface));
            } /* catch (Exception e): a thrown Java exception stops the program */
            index++;
        }
        return stringBuffer.toString();
    }
    

    public virtual void removeAllListeners() {
        this.eventListenerInterfaceList = new BasicArrayListD();
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
        int32 index = 0;
        EventListenerInterface eventListenerInterface = null;
        while (index < this.eventListenerInterfaceList.size()) {
            {
                eventListenerInterface = ((EventListenerInterface) this.eventListenerInterfaceList.objectArray[index]);
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
}

