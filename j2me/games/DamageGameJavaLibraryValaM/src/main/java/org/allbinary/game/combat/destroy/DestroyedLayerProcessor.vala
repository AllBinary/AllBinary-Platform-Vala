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
// package org.allbinary.game.combat.destroy
// import org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool
// import org.allbinary.game.combat.destroy.event.DestroyedEvent
// import org.allbinary.game.combat.destroy.event.DestroyedEventHandler
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.layer.BasicLayerProcessor
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList

public class DestroyedLayerProcessor : BasicLayerProcessor {
    private static BasicLayerProcessor? DESTROYED_LAYER_PROCESSOR;
    private static bool staticSet_DESTROYED_LAYER_PROCESSOR = false;
    private static BasicLayerProcessor staticGet_DESTROYED_LAYER_PROCESSOR() {
        if (!DestroyedLayerProcessor.staticSet_DESTROYED_LAYER_PROCESSOR) {
            DestroyedLayerProcessor.staticSet_DESTROYED_LAYER_PROCESSOR = true;
            DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR = BasicLayerProcessor.NULL_LAYER_PROCESSOR;
        }
        return DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR;
    }
    

    public DestroyedLayerProcessor() {
        base();
    }
    

    public static void init() {
        DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR = new DestroyedLayerProcessor();
    }
    

    public static BasicLayerProcessor getInstance() {
        return DestroyedLayerProcessor.staticGet_DESTROYED_LAYER_PROCESSOR();
    }
    

    public override void process(AllBinaryLayerManager allBinaryLayerManager) {
        BasicArrayList list = this.getList();
        int32 size = list.size();
        DestroyedEventHandler destroyedEventHandler = DestroyedEventHandler.getInstance();
        DestroyEventCircularStaticPool destroyEventCircularStaticPool = DestroyEventCircularStaticPool.getInstance();
        DestroyedEvent destroyedEvent = null;
        AllBinaryLayer layerInterface = null;
        for (int32 index = 0; index < size; index++) {
            JObject layerInterfaceCanBeNull = list.objectArray[index];
            if (layerInterfaceCanBeNull != null) {
                layerInterface = ((AllBinaryLayer) layerInterfaceCanBeNull);
                allBinaryLayerManager.remove(layerInterface);
                destroyedEvent = destroyEventCircularStaticPool.getInstanceForLayer(layerInterface);
                destroyedEventHandler.fireEvent(destroyedEvent);
            } else {
                CommonStrings.getInstance();
            }
        }
        list.clear();
    }
}

