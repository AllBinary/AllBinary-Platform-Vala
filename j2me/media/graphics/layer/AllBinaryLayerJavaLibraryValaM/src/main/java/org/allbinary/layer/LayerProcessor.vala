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
// package org.allbinary.layer
// import org.allbinary.string.CommonStrings

public class LayerProcessor : JObject, LayerProcessorInterface, BasicLayerProcessorInterface {
    public CommonStrings commonStrings;
    private LayerManager layerManager;

    // Java field initializers run after the base constructor
    private void initFieldsLayerProcessor() {
    this.commonStrings = CommonStrings.getInstance();
    
    }
    

    public LayerProcessor(LayerManager layerManager) {
        base();
        this.initFieldsLayerProcessor();
        this.layerManager = layerManager;
    }
    

    public virtual void processAt(AllBinaryLayerManager allBinaryLayerManager, AllBinaryLayer layerInterface, int32 index) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual bool isProcessorLayer(AllBinaryLayer layerInterface) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual LayerManager getLayerManager() {
        return this.layerManager;
    }
    

    public virtual void process(AllBinaryLayerManager allBinaryLayerManager) {
        LayerManager layerManager = this.getLayerManager();
        int32 size = layerManager.getSize();
        for (int32 index = 0; index < size; index++) {
            this.processAt(allBinaryLayerManager, ((AllBinaryLayer) layerManager.getLayerAt(index)), index);
        }
    }
}

