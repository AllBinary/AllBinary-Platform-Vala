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
// import org.allbinary.layer.event.LayerManagerEvent
// import org.allbinary.layer.event.LayerManagerEventHandler

public class AllBinaryLayerManager : LayerManager {
    private LayerManagerEventHandler layerManagerEventHandler;
    private LayerManagerEvent createLayerManagerEvent;
    private LayerManagerEvent deleteLayerManagerEvent;
    private LayerProcessor[] basicLayerProcessorArray;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinaryLayerManager() {
    this.layerManagerEventHandler = LayerManagerEventHandler.getInstance();
    this.createLayerManagerEvent = new LayerManagerEvent(this, this.layerManagerEventHandler.CREATE);
    this.deleteLayerManagerEvent = new LayerManagerEvent(this, this.layerManagerEventHandler.DELETE);
    this.basicLayerProcessorArray = new LayerProcessor[0];
    }
    

    public AllBinaryLayerManager() {
        base(LayerManagerNoDebug.getInstance());
        this.initFieldsAllBinaryLayerManager();
    }
    

    public virtual LayerProcessor[] getLayerProcessorArray() {
        return this.basicLayerProcessorArray;
    }
    

    public virtual void setLayerProcessorArray(LayerProcessor[] layerProcessorArray) {
        this.basicLayerProcessorArray = layerProcessorArray;
    }
    

    public virtual void log() {
        int32 size = this.basicLayerProcessorArray.length;
        for (int32 index = 0; index < size; index++) {
            
        }
    }
    

    public override void append(AllBinaryLayer layerInterface) {
        if (!this.contains(layerInterface)) {
            this.appendProcessors(layerInterface);
            base.append(layerInterface);
        }
    }
    

    public override void appendAt(AllBinaryLayer layerInterface, int32 index) {
        if (!this.contains(layerInterface)) {
            this.appendProcessors(layerInterface);
            base.appendAt(layerInterface, index);
        }
    }
    

    private void appendProcessors(AllBinaryLayer layerInterface) {
        this.createLayerManagerEvent.setLayerInterface(layerInterface);
        this.layerManagerEventHandler.fireEvent(this.createLayerManagerEvent);
        LayerProcessor layerProcessorInterface = null;
        for (int32 index = this.basicLayerProcessorArray.length; --index >= 0; ) {
            layerProcessorInterface = this.basicLayerProcessorArray[index];
            if (layerProcessorInterface.isProcessorLayer(layerInterface)) {
                layerProcessorInterface.getLayerManager().append(layerInterface);
            }
        }
    }
    

    public override void remove(AllBinaryLayer layerInterface) {
        this.deleteLayerManagerEvent.setLayerInterface(layerInterface);
        this.layerManagerEventHandler.fireDeleteEvent(this.deleteLayerManagerEvent);
        LayerProcessor layerProcessorInterface = null;
        for (int32 index = this.basicLayerProcessorArray.length; --index >= 0; ) {
            layerProcessorInterface = this.basicLayerProcessorArray[index];
            layerProcessorInterface.getLayerManager().remove(layerInterface);
        }
        base.remove(layerInterface);
    }
    

    public virtual void process() {
        LayerProcessor layerProcessorInterface = null;
        int32 size = this.basicLayerProcessorArray.length;
        for (int32 index = 0; index < size; index++) {
            layerProcessorInterface = this.basicLayerProcessorArray[index];
            layerProcessorInterface.process(this);
        }
    }
    

    public override void cleanup() {
        LayerProcessor layerProcessorInterface = null;
        int32 size = this.basicLayerProcessorArray.length;
        for (int32 index = 0; index < size; index++) {
            layerProcessorInterface = this.basicLayerProcessorArray[index];
            layerProcessorInterface.getLayerManager().cleanup();
        }
        base.cleanup();
    }
}

