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
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class DownGameKeyEventHandlerBase : BasicEventHandler {
    private const string TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
    private const string LISTENER_LABEL = " PlayerGameInput Listener: ";
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsDownGameKeyEventHandlerBase() {
    this.list = new BasicArrayListD();
    }
    

    public DownGameKeyEventHandlerBase() {
        base();
        this.initFieldsDownGameKeyEventHandlerBase();
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
    

    public override void fireEvent(AllBinaryEventObject eventObject) {
        for (int32 index = this.list.size(); --index >= 0; ) {
            {
                PlayerGameInput playerGameInput = ((PlayerGameInput) this.list.objectArray[index]);
                playerGameInput.onDownGameKeyEvent(((GameKeyEvent) eventObject));
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        base.fireEvent(eventObject);
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        DownGameKeyEventListenerInterface downGameKeyEventListenerInterface = ((DownGameKeyEventListenerInterface) eventListenerInterface);
        downGameKeyEventListenerInterface.onDownGameKeyEvent(((GameKeyEvent) eventObject));
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(base.toString());
        stringBuffer.append(DownGameKeyEventHandlerBase.TOTAL_LISTENERS);
        stringBuffer.appendint(this.list.size());
        EventListenerInterface eventListenerInterface = null;
        int32 size = this.list.size();
        int32 index = 0;
        while (index < size) {
            {
                eventListenerInterface = ((EventListenerInterface) this.list.@get(index));
                stringBuffer.append(DownGameKeyEventHandlerBase.LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } /* catch (Exception e): a thrown Java exception stops the program */
            index++;
        }
        return stringBuffer.toString();
    }
}

