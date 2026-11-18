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

public class DownKeyEventHandlerBase : BasicEventHandler {
    private const string TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
    private const string LISTENER_LABEL = " PlayerGameInput Listener: ";
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsDownKeyEventHandlerBase() {
    this.list = new BasicArrayListD();
    }
    

    public DownKeyEventHandlerBase() {
        base();
        this.initFieldsDownKeyEventHandlerBase();
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
    

    public virtual void fireEventI(int32? eventObject) {
        for (int32 index = this.list.size(); --index >= 0; ) {
            {
                PlayerGameInput playerGameInput = ((PlayerGameInput) this.list.objectArray[index]);
                playerGameInput.onDownKey(eventObject);
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        int32 index = 0;
        EventListenerInterface eventListenerInterface = null;
        while (index < this.eventListenerInterfaceList.size()) {
            {
                eventListenerInterface = ((EventListenerInterface) this.eventListenerInterfaceList.@get(index));
                this.processI(eventObject, eventListenerInterface);
            } /* catch (Exception e): a thrown Java exception stops the program */
            index++;
        }
    }
    

    public virtual void fireEventForGameKeyEvent(GameKeyEvent eventObject) {
        int32 size = this.list.size();
        for (int32 index = size; --index >= 0; ) {
            {
                PlayerGameInput playerGameInput = ((PlayerGameInput) this.list.objectArray[index]);
                playerGameInput.onDownKeyEvent(eventObject);
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        int32 index = 0;
        EventListenerInterface eventListenerInterface = null;
        while (index < this.eventListenerInterfaceList.size()) {
            {
                eventListenerInterface = ((EventListenerInterface) this.eventListenerInterfaceList.@get(index));
                this.processEvent(eventObject, eventListenerInterface);
            } /* catch (Exception e): a thrown Java exception stops the program */
            index++;
        }
    }
    

    public virtual void processI(int32? eventObject, EventListenerInterface eventListenerInterface) {
        DownKeyEventListenerInterface downKeyEventListenerInterface = ((DownKeyEventListenerInterface) eventListenerInterface);
        downKeyEventListenerInterface.onDownKey(eventObject);
    }
    

    public virtual void processEvent(GameKeyEvent eventObject, EventListenerInterface eventListenerInterface) {
        DownKeyEventListenerInterface downKeyEventListenerInterface = ((DownKeyEventListenerInterface) eventListenerInterface);
        downKeyEventListenerInterface.onDownKeyEvent(eventObject);
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(base.toString());
        stringBuffer.append(DownKeyEventHandlerBase.TOTAL_LISTENERS);
        stringBuffer.appendint(this.list.size());
        EventListenerInterface eventListenerInterface = null;
        for (int32 index = 0; index < this.list.size(); index++) {
            {
                eventListenerInterface = ((EventListenerInterface) this.list.@get(index));
                stringBuffer.append(DownKeyEventHandlerBase.LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        return stringBuffer.toString();
    }
}

