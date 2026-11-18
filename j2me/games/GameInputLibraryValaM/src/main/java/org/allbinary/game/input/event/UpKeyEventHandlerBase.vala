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
// package org.allbinary.game.input.event
// import org.allbinary.game.input.PlayerGameInput
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class UpKeyEventHandlerBase : BasicEventHandler {
    private const string TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
    private const string LISTENER_LABEL = " PlayerGameInput Listener: ";
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsUpKeyEventHandlerBase() {
    this.list = new BasicArrayListD();
    }
    

    public UpKeyEventHandlerBase() {
        base();
        this.initFieldsUpKeyEventHandlerBase();
    }
    

    public virtual void addListener(PlayerGameInput playerGameInput) {
        if (!this.list.contains(playerGameInput)) {
            this.list.add(playerGameInput);
        }
    }
    

    public override void removeAllListeners() {
        this.list.clear();
        base.removeAllListeners();
    }
    

    public override void removeListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        this.list.remove(eventListenerInterface);
        base.removeListenerSingleThreaded(eventListenerInterface);
    }
    

    public override void removeListener(EventListenerInterface eventListenerInterface) {
        this.list.remove(eventListenerInterface);
        base.removeListener(eventListenerInterface);
    }
    

    public virtual void fireEventForInteger(int32? eventObject) {
        for (int32 index = this.list.size(); --index >= 0; ) {
            {
                PlayerGameInput playerGameInput = ((PlayerGameInput) this.list.objectArray[index]);
                playerGameInput.onUpKeyEvent(eventObject);
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        int32 index = 0;
        EventListenerInterface eventListenerInterface = null;
        while (index < this.eventListenerInterfaceList.size()) {
            {
                eventListenerInterface = ((EventListenerInterface) this.eventListenerInterfaceList.@get(index));
                this.processForInteger(eventObject, eventListenerInterface);
            } /* catch (Exception e): a thrown Java exception stops the program */
            index++;
        }
    }
    

    public virtual void processForInteger(int32? eventObject, EventListenerInterface eventListenerInterface) {
        UpKeyEventListenerInterface upKeyEventListenerInterface = ((UpKeyEventListenerInterface) eventListenerInterface);
        upKeyEventListenerInterface.onUpKeyEvent(eventObject);
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(base.toString());
        stringBuffer.append(UpKeyEventHandlerBase.TOTAL_LISTENERS);
        stringBuffer.appendint(this.list.size());
        for (int32 index = 0; index < this.list.size(); index++) {
            {
                EventListenerInterface eventListenerInterface = ((EventListenerInterface) this.list.@get(index));
                stringBuffer.append(UpKeyEventHandlerBase.LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        return stringBuffer.toString();
    }
}

