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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class PressGameKeyEventHandler : BasicEventHandler {
    private static PressGameKeyEventHandler? instance;
    private static bool staticSet_instance = false;
    private static PressGameKeyEventHandler staticGet_instance() {
        if (!PressGameKeyEventHandler.staticSet_instance) {
            PressGameKeyEventHandler.staticSet_instance = true;
            PressGameKeyEventHandler.instance = new PressGameKeyEventHandler();
        }
        return PressGameKeyEventHandler.instance;
    }
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsPressGameKeyEventHandler() {
    this.list = new BasicArrayListD();
    }
    

    public static PressGameKeyEventHandler getInstance() {
        return PressGameKeyEventHandler.staticGet_instance();
    }
    

    public PressGameKeyEventHandler() {
        base();
        this.initFieldsPressGameKeyEventHandler();
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
    

    public override void removeListener(EventListenerInterface eventListenerInterface) {
        this.list.remove(eventListenerInterface);
        base.removeListener(eventListenerInterface);
    }
    

    public override void fireEvent(AllBinaryEventObject eventObject) {
        for (int32 index = this.list.size(); --index >= 0; ) {
            {
                PlayerGameInput playerGameInput = ((PlayerGameInput) this.list.objectArray[index]);
                playerGameInput.onPressGameKeyEvent(((GameKeyEvent) eventObject));
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        base.fireEvent(eventObject);
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        PressGameKeyEventListenerInterface pressGameKeyEventListenerInterface = (((PressGameKeyEventListenerInterface) eventListenerInterface));
        pressGameKeyEventListenerInterface.onPressGameKeyEvent(((GameKeyEvent) eventObject));
    }
}

