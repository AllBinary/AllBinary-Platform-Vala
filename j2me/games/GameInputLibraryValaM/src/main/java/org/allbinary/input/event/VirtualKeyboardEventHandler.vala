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
// package org.allbinary.input.event
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.handler.BasicEventHandler

public class VirtualKeyboardEventHandler : BasicEventHandler {
    private static VirtualKeyboardEventHandler? gameKeyEventHandler;
    private static bool staticSet_gameKeyEventHandler = false;
    private static VirtualKeyboardEventHandler staticGet_gameKeyEventHandler() {
        if (!VirtualKeyboardEventHandler.staticSet_gameKeyEventHandler) {
            VirtualKeyboardEventHandler.staticSet_gameKeyEventHandler = true;
            VirtualKeyboardEventHandler.gameKeyEventHandler = new VirtualKeyboardEventHandler();
        }
        return VirtualKeyboardEventHandler.gameKeyEventHandler;
    }
    public VirtualKeyboardEvent SHOW_EVENT;
    public VirtualKeyboardEvent HIDE_EVENT;

    // Java field initializers run after the base constructor
    private void initFieldsVirtualKeyboardEventHandler() {
    this.SHOW_EVENT = new VirtualKeyboardEvent(BooleanFactory.getInstance().TRUE_);
    this.HIDE_EVENT = new VirtualKeyboardEvent(BooleanFactory.getInstance().FALSE_);
    }
    

    public VirtualKeyboardEventHandler() {
        base();
        this.initFieldsVirtualKeyboardEventHandler();
    }
    

    public static VirtualKeyboardEventHandler getInstance() {
        return VirtualKeyboardEventHandler.staticGet_gameKeyEventHandler();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        VirtualKeyboardEventListenerInterface virtualKeyboardEventListenerInterface = ((VirtualKeyboardEventListenerInterface) eventListenerInterface);
        virtualKeyboardEventListenerInterface.onVirtualKeyboardEvent(((VirtualKeyboardEvent) eventObject));
    }
    

    public virtual void open() {
        {
            Thread.sleep(120);
            this.fireEvent(this.SHOW_EVENT);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void close() {
        {
            Thread.sleep(120);
            this.fireEvent(this.HIDE_EVENT);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

