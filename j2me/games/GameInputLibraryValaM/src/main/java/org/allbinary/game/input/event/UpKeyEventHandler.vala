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

public class UpKeyEventHandler : UpKeyEventHandlerBase {
    private static UpKeyEventHandler? instance;
    private static bool staticSet_instance = false;
    private static UpKeyEventHandler staticGet_instance() {
        if (!UpKeyEventHandler.staticSet_instance) {
            UpKeyEventHandler.staticSet_instance = true;
            UpKeyEventHandler.instance = new UpKeyEventHandler();
        }
        return UpKeyEventHandler.instance;
    }
    private static UpKeyEventHandlerBase[]? instanceArray;
    private static bool staticSet_instanceArray = false;
    private static UpKeyEventHandlerBase[] staticGet_instanceArray() {
        if (!UpKeyEventHandler.staticSet_instanceArray) {
            UpKeyEventHandler.staticSet_instanceArray = true;
            UpKeyEventHandler.instanceArray = new UpKeyEventHandlerBase[] {new UpKeyEventHandlerBase(), new UpKeyEventHandlerBase(), new UpKeyEventHandlerBase(), new UpKeyEventHandlerBase(), new UpKeyEventHandlerBase(), new UpKeyEventHandlerBase()};
        }
        return UpKeyEventHandler.instanceArray;
    }
    private LocalPlayerInputIdFactory playerInputIdFactory;

    // Java field initializers run after the base constructor
    private void initFieldsUpKeyEventHandler() {
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance();
    }
    

    public static UpKeyEventHandler getInstance() {
        return UpKeyEventHandler.staticGet_instance();
    }
    

    public virtual UpKeyEventHandlerBase getInstanceForDevice(int32 deviceId) {
        int32 playerInputId = this.playerInputIdFactory.getPlayerForDevice(deviceId);
        return UpKeyEventHandler.staticGet_instanceArray()[playerInputId];
    }
    

    public virtual UpKeyEventHandlerBase getInstanceForPlayer(int32 playerInputId) {
        return UpKeyEventHandler.staticGet_instanceArray()[playerInputId];
    }
    

    public UpKeyEventHandler() {
        base();
        this.initFieldsUpKeyEventHandler();
    }
    

    public override void removeAllListeners() {
        base.removeAllListeners();
        for (int32 index = UpKeyEventHandler.staticGet_instanceArray().length - 1; index >= 0; index--) {
            UpKeyEventHandler.staticGet_instanceArray()[index].removeAllListeners();
        }
    }
    

    public override void removeListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        base.removeListenerSingleThreaded(eventListenerInterface);
        for (int32 index = UpKeyEventHandler.staticGet_instanceArray().length - 1; index >= 0; index--) {
            UpKeyEventHandler.staticGet_instanceArray()[index].removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    public override void removeListener(EventListenerInterface eventListenerInterface) {
        base.removeListener(eventListenerInterface);
        for (int32 index = UpKeyEventHandler.staticGet_instanceArray().length - 1; index >= 0; index--) {
            UpKeyEventHandler.staticGet_instanceArray()[index].removeListener(eventListenerInterface);
        }
    }
}

