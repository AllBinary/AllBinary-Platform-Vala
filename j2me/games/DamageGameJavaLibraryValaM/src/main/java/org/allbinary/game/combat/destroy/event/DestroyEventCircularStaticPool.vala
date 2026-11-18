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
// package org.allbinary.game.combat.destroy.event
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.util.event.AllBinaryEventCircularPool

public class DestroyEventCircularStaticPool : JObject {
    private static DestroyEventCircularStaticPool? instance;
    private static bool staticSet_instance = false;
    private static DestroyEventCircularStaticPool staticGet_instance() {
        if (!DestroyEventCircularStaticPool.staticSet_instance) {
            DestroyEventCircularStaticPool.staticSet_instance = true;
            DestroyEventCircularStaticPool.instance = new DestroyEventCircularStaticPool();
        }
        return DestroyEventCircularStaticPool.instance;
    }
    private AllBinaryEventCircularPool EVENT_POOL;

    // Java field initializers run after the base constructor
    private void initFieldsDestroyEventCircularStaticPool() {
    this.EVENT_POOL = new AllBinaryEventCircularPool(20);
    }
    

    public static DestroyEventCircularStaticPool getInstance() {
        return DestroyEventCircularStaticPool.staticGet_instance();
    }
    

    public DestroyEventCircularStaticPool() {
        base();
        this.initFieldsDestroyEventCircularStaticPool();
    }
    

    public virtual void init(AllBinaryGameCanvas combatGameCanvas) {
        this.EVENT_POOL.initAllBinaryEventCircularPool(new DestroyEventFactory(combatGameCanvas));
    }
    

    public virtual DestroyedEvent getInstanceForLayer(AllBinaryLayer layerInterface) {
        DestroyedEvent destroyedEvent = ((DestroyedEvent) this.EVENT_POOL.getNextInstance());
        destroyedEvent.setLayerInterfaceForCircularStaticPool(layerInterface);
        return destroyedEvent;
    }
}

