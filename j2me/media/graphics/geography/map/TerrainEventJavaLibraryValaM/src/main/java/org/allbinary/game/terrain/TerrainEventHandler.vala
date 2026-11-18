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
// package org.allbinary.game.terrain
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class TerrainEventHandler : BasicEventHandler {
    private static ABHashtable? hashtable;
    private static bool staticSet_hashtable = false;
    private static ABHashtable staticGet_hashtable() {
        if (!TerrainEventHandler.staticSet_hashtable) {
            TerrainEventHandler.staticSet_hashtable = true;
            TerrainEventHandler.hashtable = StdUtil.getInstance().NULL_TABLE;
        }
        return TerrainEventHandler.hashtable;
    }
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsTerrainEventHandler() {
    this.list = new BasicArrayListD();
    }
    

    public static void init() {
        TerrainEventHandler.hashtable = StdUtil.getInstance().createHashtable();
    }
    

    public static TerrainEventHandler getInstance1(JObject anyType) {
        JObject eventHandlerCanBeNull = TerrainEventHandler.staticGet_hashtable().@get(anyType);
        if (eventHandlerCanBeNull == null) {
            eventHandlerCanBeNull = new TerrainEventHandler();
            TerrainEventHandler.staticGet_hashtable().put(anyType, eventHandlerCanBeNull);
        }
        return ((TerrainEventHandler) eventHandlerCanBeNull);
    }
    

    public TerrainEventHandler() {
        base();
        this.initFieldsTerrainEventHandler();
    }
    

    public virtual void addListener(TerrainEventListener terrainEventListener) {
        if (!this.list.contains(terrainEventListener)) {
            this.list.add(terrainEventListener);
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
                TerrainEventListener terrainEventListener = ((TerrainEventListener) this.list.@get(index));
                terrainEventListener.onTerrainEvent(((TerrainEvent) eventObject));
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        base.fireEvent(eventObject);
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        TerrainEventListenerInterface terrainEventListenerInterface = ((TerrainEventListenerInterface) eventListenerInterface);
        terrainEventListenerInterface.onTerrainEvent(((TerrainEvent) eventObject));
    }
}

