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
// import org.allbinary.game.input.LocalPlayerInputIdFactory
// import org.allbinary.logic.util.event.EventListenerInterface

public class UpGameKeyEventHandler : UpGameKeyEventHandlerBase {
    private static UpGameKeyEventHandler? instance;
    private static bool staticSet_instance = false;
    private static UpGameKeyEventHandler staticGet_instance() {
        if (!UpGameKeyEventHandler.staticSet_instance) {
            UpGameKeyEventHandler.staticSet_instance = true;
            UpGameKeyEventHandler.instance = new UpGameKeyEventHandler();
        }
        return UpGameKeyEventHandler.instance;
    }
    private static UpGameKeyEventHandlerBase[]? instanceArray;
    private static bool staticSet_instanceArray = false;
    private static UpGameKeyEventHandlerBase[] staticGet_instanceArray() {
        if (!UpGameKeyEventHandler.staticSet_instanceArray) {
            UpGameKeyEventHandler.staticSet_instanceArray = true;
            UpGameKeyEventHandler.instanceArray = new UpGameKeyEventHandlerBase[] {new UpGameKeyEventHandlerBase(), new UpGameKeyEventHandlerBase(), new UpGameKeyEventHandlerBase(), new UpGameKeyEventHandlerBase(), new UpGameKeyEventHandlerBase(), new UpGameKeyEventHandlerBase()};
        }
        return UpGameKeyEventHandler.instanceArray;
    }
    private LocalPlayerInputIdFactory playerInputIdFactory;

    // Java field initializers run after the base constructor
    private void initFieldsUpGameKeyEventHandler() {
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance();
    }
    

    public static UpGameKeyEventHandler getInstance() {
        return UpGameKeyEventHandler.staticGet_instance();
    }
    

    public virtual UpGameKeyEventHandlerBase getInstanceForDevice(int32 deviceId) {
        int32 playerInputId = this.playerInputIdFactory.getPlayerForDevice(deviceId);
        return UpGameKeyEventHandler.staticGet_instanceArray()[playerInputId];
    }
    

    public virtual UpGameKeyEventHandlerBase getInstanceForPlayer(int32 playerInputId) {
        return UpGameKeyEventHandler.staticGet_instanceArray()[playerInputId];
    }
    

    public UpGameKeyEventHandler() {
        base();
        this.initFieldsUpGameKeyEventHandler();
    }
    

    public override void removeAllListeners() {
        base.removeAllListeners();
        for (int32 index = UpGameKeyEventHandler.staticGet_instanceArray().length - 1; index >= 0; index--) {
            UpGameKeyEventHandler.staticGet_instanceArray()[index].removeAllListeners();
        }
    }
    

    public override void removeListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        base.removeListenerSingleThreaded(eventListenerInterface);
        for (int32 index = UpGameKeyEventHandler.staticGet_instanceArray().length - 1; index >= 0; index--) {
            UpGameKeyEventHandler.staticGet_instanceArray()[index].removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    public override void removeListener(EventListenerInterface eventListenerInterface) {
        base.removeListener(eventListenerInterface);
        for (int32 index = UpGameKeyEventHandler.staticGet_instanceArray().length - 1; index >= 0; index--) {
            UpGameKeyEventHandler.staticGet_instanceArray()[index].removeListener(eventListenerInterface);
        }
    }
}

