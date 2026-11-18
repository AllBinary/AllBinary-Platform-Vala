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
// package org.allbinary.game.layer.drop
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.layer.BasicLayerProcessor
// import org.allbinary.util.BasicArrayList

public class DropLayerProcessor : BasicLayerProcessor {
    private static BasicLayerProcessor? LAYER_PROCESSOR;
    private static bool staticSet_LAYER_PROCESSOR = false;
    private static BasicLayerProcessor staticGet_LAYER_PROCESSOR() {
        if (!DropLayerProcessor.staticSet_LAYER_PROCESSOR) {
            DropLayerProcessor.staticSet_LAYER_PROCESSOR = true;
            DropLayerProcessor.LAYER_PROCESSOR = new DropLayerProcessor();
        }
        return DropLayerProcessor.LAYER_PROCESSOR;
    }
    

    public DropLayerProcessor() {
        base();
    }
    

    public static BasicLayerProcessor getInstance() {
        return DropLayerProcessor.staticGet_LAYER_PROCESSOR();
    }
    

    public override void process(AllBinaryLayerManager allBinaryLayerManager) {
        BasicArrayList list = this.getList();
        int32 size = list.size();
        AllBinaryLayer layerInterface = null;
        DropLayerInterface dropLayerInterface = null;
        for (int32 index = 0; index < size; index++) {
            layerInterface = ((AllBinaryLayer) list.objectArray[index]);
            dropLayerInterface = ((DropLayerInterface) layerInterface);
            layerInterface = ((AllBinaryLayer) dropLayerInterface.getDroppedLayer());
            allBinaryLayerManager.append(layerInterface);
        }
        list.clear();
    }
}

