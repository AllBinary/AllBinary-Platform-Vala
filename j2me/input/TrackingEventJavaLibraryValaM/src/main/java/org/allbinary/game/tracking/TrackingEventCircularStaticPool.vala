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
// package org.allbinary.game.tracking
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.util.event.AllBinaryEventCircularPool

public class TrackingEventCircularStaticPool : JObject {
    private static TrackingEventCircularStaticPool? instance;
    private static bool staticSet_instance = false;
    private static TrackingEventCircularStaticPool staticGet_instance() {
        if (!TrackingEventCircularStaticPool.staticSet_instance) {
            TrackingEventCircularStaticPool.staticSet_instance = true;
            TrackingEventCircularStaticPool.instance = new TrackingEventCircularStaticPool();
        }
        return TrackingEventCircularStaticPool.instance;
    }
    private AllBinaryEventCircularPool EVENT_POOL;

    // Java field initializers run after the base constructor
    private void initFieldsTrackingEventCircularStaticPool() {
    this.EVENT_POOL = new AllBinaryEventCircularPool(20);
    }

    public TrackingEventCircularStaticPool() {
        base();
        this.initFieldsTrackingEventCircularStaticPool();
    }
    

    public static TrackingEventCircularStaticPool getInstance() {
        return TrackingEventCircularStaticPool.staticGet_instance();
    }
    

    public virtual void init() {
        this.EVENT_POOL.initAllBinaryEventCircularPool(new TrackingEventFactory());
    }
    

    public virtual TrackingEvent getNextInstance(AllBinaryLayer layerInterface) {
        TrackingEvent trackingEvent = ((TrackingEvent) this.EVENT_POOL.getNextInstance());
        trackingEvent.setLayerInterfaceForCircularStaticPool(layerInterface);
        return trackingEvent;
    }
}

