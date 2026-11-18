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

public class DownGameKeyEventHandler : DownGameKeyEventHandlerBase {
    private static DownGameKeyEventHandler? instance;
    private static bool staticSet_instance = false;
    private static DownGameKeyEventHandler staticGet_instance() {
        if (!DownGameKeyEventHandler.staticSet_instance) {
            DownGameKeyEventHandler.staticSet_instance = true;
            DownGameKeyEventHandler.instance = new DownGameKeyEventHandler();
        }
        return DownGameKeyEventHandler.instance;
    }
    private static DownGameKeyEventHandlerBase[]? instanceArray;
    private static bool staticSet_instanceArray = false;
    private static DownGameKeyEventHandlerBase[] staticGet_instanceArray() {
        if (!DownGameKeyEventHandler.staticSet_instanceArray) {
            DownGameKeyEventHandler.staticSet_instanceArray = true;
            DownGameKeyEventHandler.instanceArray = new DownGameKeyEventHandlerBase[] {new DownGameKeyEventHandlerBase(), new DownGameKeyEventHandlerBase(), new DownGameKeyEventHandlerBase(), new DownGameKeyEventHandlerBase(), new DownGameKeyEventHandlerBase(), new DownGameKeyEventHandlerBase()};
        }
        return DownGameKeyEventHandler.instanceArray;
    }
    private LocalPlayerInputIdFactory playerInputIdFactory;

    // Java field initializers run after the base constructor
    private void initFieldsDownGameKeyEventHandler() {
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance();
    }
    

    public static DownGameKeyEventHandler getInstance() {
        return DownGameKeyEventHandler.staticGet_instance();
    }
    

    public virtual DownGameKeyEventHandlerBase getInstanceForDevice(int32 deviceId) {
        int32 playerInputId = this.playerInputIdFactory.getPlayerForDevice(deviceId);
        return DownGameKeyEventHandler.staticGet_instanceArray()[playerInputId];
    }
    

    public virtual DownGameKeyEventHandlerBase getInstanceForPlayer(int32 playerInputId) {
        return DownGameKeyEventHandler.staticGet_instanceArray()[playerInputId];
    }
    

    public DownGameKeyEventHandler() {
        base();
        this.initFieldsDownGameKeyEventHandler();
    }
    

    public override void removeAllListeners() {
        base.removeAllListeners();
        for (int32 index = DownGameKeyEventHandler.staticGet_instanceArray().length - 1; index >= 0; index--) {
            DownGameKeyEventHandler.staticGet_instanceArray()[index].removeAllListeners();
        }
    }
    

    public override void removeListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        base.removeListenerSingleThreaded(eventListenerInterface);
        for (int32 index = DownGameKeyEventHandler.staticGet_instanceArray().length - 1; index >= 0; index--) {
            DownGameKeyEventHandler.staticGet_instanceArray()[index].removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    public override void removeListener(EventListenerInterface eventListenerInterface) {
        base.removeListener(eventListenerInterface);
        for (int32 index = DownGameKeyEventHandler.staticGet_instanceArray().length - 1; index >= 0; index--) {
            DownGameKeyEventHandler.staticGet_instanceArray()[index].removeListener(eventListenerInterface);
        }
    }
}

