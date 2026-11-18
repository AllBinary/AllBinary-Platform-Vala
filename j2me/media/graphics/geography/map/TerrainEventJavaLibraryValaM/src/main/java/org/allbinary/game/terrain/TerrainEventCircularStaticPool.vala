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
// import org.allbinary.logic.util.event.AllBinaryEventCircularPool

public class TerrainEventCircularStaticPool : JObject {
    private static TerrainEventCircularStaticPool? instance;
    private static bool staticSet_instance = false;
    private static TerrainEventCircularStaticPool staticGet_instance() {
        if (!TerrainEventCircularStaticPool.staticSet_instance) {
            TerrainEventCircularStaticPool.staticSet_instance = true;
            TerrainEventCircularStaticPool.instance = new TerrainEventCircularStaticPool();
        }
        return TerrainEventCircularStaticPool.instance;
    }
    private AllBinaryEventCircularPool EVENT_POOL;

    // Java field initializers run after the base constructor
    private void initFieldsTerrainEventCircularStaticPool() {
    this.EVENT_POOL = new AllBinaryEventCircularPool(20);
    }

    public TerrainEventCircularStaticPool() {
        base();
        this.initFieldsTerrainEventCircularStaticPool();
    }
    

    public static TerrainEventCircularStaticPool getInstance() {
        return TerrainEventCircularStaticPool.staticGet_instance();
    }
    

    public virtual void init() {
        this.EVENT_POOL.initAllBinaryEventCircularPool(new TerrainEventFactory());
    }
    

    public virtual TerrainEvent getNext(BasicTerrainInfo basicTerrainInfo) {
        TerrainEvent trackingEvent = ((TerrainEvent) this.EVENT_POOL.getNextInstance());
        trackingEvent.setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo);
        return trackingEvent;
    }
}

