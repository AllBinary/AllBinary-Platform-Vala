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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class BasicLayerProcessor : JObject {
    public static BasicLayerProcessor? NULL_LAYER_PROCESSOR;
    private static bool staticSet_NULL_LAYER_PROCESSOR = false;
    public static BasicLayerProcessor staticGet_NULL_LAYER_PROCESSOR() {
        if (!BasicLayerProcessor.staticSet_NULL_LAYER_PROCESSOR) {
            BasicLayerProcessor.staticSet_NULL_LAYER_PROCESSOR = true;
            BasicLayerProcessor.NULL_LAYER_PROCESSOR = new BasicLayerProcessor();
        }
        return BasicLayerProcessor.NULL_LAYER_PROCESSOR;
    }
    public LogUtil logUtil;
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsBasicLayerProcessor() {
    this.logUtil = LogUtil.getInstance();
    this.list = new BasicArrayListD();
    }
    

    public BasicLayerProcessor() {
        base();
        this.initFieldsBasicLayerProcessor();
    }
    

    public virtual void add(AllBinaryLayer layerInterface) {
        if (!this.list.contains(layerInterface)) {
            this.list.add(layerInterface);
        }
    }
    

    public virtual void process(AllBinaryLayerManager allBinaryLayerManager) {
        JSystem.fatal(new JException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED));
    }
    

    public virtual BasicArrayList getList() {
        return this.list;
    }
}

