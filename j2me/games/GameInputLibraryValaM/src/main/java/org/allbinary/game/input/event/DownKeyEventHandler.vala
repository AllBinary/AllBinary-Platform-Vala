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

public class DownKeyEventHandler : DownKeyEventHandlerBase {
    private static DownKeyEventHandler? instance;
    private static bool staticSet_instance = false;
    private static DownKeyEventHandler staticGet_instance() {
        if (!DownKeyEventHandler.staticSet_instance) {
            DownKeyEventHandler.staticSet_instance = true;
            DownKeyEventHandler.instance = new DownKeyEventHandler();
        }
        return DownKeyEventHandler.instance;
    }
    private static DownKeyEventHandlerBase[]? instanceArray;
    private static bool staticSet_instanceArray = false;
    private static DownKeyEventHandlerBase[] staticGet_instanceArray() {
        if (!DownKeyEventHandler.staticSet_instanceArray) {
            DownKeyEventHandler.staticSet_instanceArray = true;
            DownKeyEventHandler.instanceArray = new DownKeyEventHandlerBase[] {new DownKeyEventHandlerBase(), new DownKeyEventHandlerBase(), new DownKeyEventHandlerBase(), new DownKeyEventHandlerBase(), new DownKeyEventHandlerBase(), new DownKeyEventHandlerBase()};
        }
        return DownKeyEventHandler.instanceArray;
    }
    private LocalPlayerInputIdFactory playerInputIdFactory;

    // Java field initializers run after the base constructor
    private void initFieldsDownKeyEventHandler() {
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance();
    }
    

    public static DownKeyEventHandler getInstance() {
        return DownKeyEventHandler.staticGet_instance();
    }
    

    public virtual DownKeyEventHandlerBase getInstanceForDevice(int32 deviceId) {
        int32 playerInputId = this.playerInputIdFactory.getPlayerForDevice(deviceId);
        return DownKeyEventHandler.staticGet_instanceArray()[playerInputId];
    }
    

    public virtual DownKeyEventHandlerBase getInstanceForPlayer(int32 playerInputId) {
        return DownKeyEventHandler.staticGet_instanceArray()[playerInputId];
    }
    

    public DownKeyEventHandler() {
        base();
        this.initFieldsDownKeyEventHandler();
    }
    

    public override void removeAllListeners() {
        base.removeAllListeners();
        for (int32 index = DownKeyEventHandler.staticGet_instanceArray().length - 1; index >= 0; index--) {
            DownKeyEventHandler.staticGet_instanceArray()[index].removeAllListeners();
        }
    }
    

    public override void removeListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        base.removeListenerSingleThreaded(eventListenerInterface);
        for (int32 index = DownKeyEventHandler.staticGet_instanceArray().length - 1; index >= 0; index--) {
            DownKeyEventHandler.staticGet_instanceArray()[index].removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    public override void removeListener(EventListenerInterface eventListenerInterface) {
        base.removeListener(eventListenerInterface);
        for (int32 index = DownKeyEventHandler.staticGet_instanceArray().length - 1; index >= 0; index--) {
            DownKeyEventHandler.staticGet_instanceArray()[index].removeListener(eventListenerInterface);
        }
    }
}

