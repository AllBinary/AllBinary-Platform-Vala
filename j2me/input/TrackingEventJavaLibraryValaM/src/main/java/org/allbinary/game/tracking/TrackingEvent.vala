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
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class TrackingEvent : AllBinaryEventObject {
    private AllBinaryLayer layerInterface;

    // Java field initializers run after the base constructor
    private void initFieldsTrackingEvent() {
    this.layerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    }
    

    public TrackingEvent(JObject allBinaryLayerInterface) {
        base(allBinaryLayerInterface);
        this.initFieldsTrackingEvent();
        if (allBinaryLayerInterface != TrackingEventHandler.getInstance()) {
            this.setLayerInterface(((AllBinaryLayer) allBinaryLayerInterface));
        }
    }
    

    public virtual void init(JObject anyType) {
        this.setSource(anyType);
    }
    

    public virtual AllBinaryLayer getLayerInterface() {
        return this.layerInterface;
    }
    

    private void setLayerInterface(AllBinaryLayer layerInterface) {
        this.layerInterface = layerInterface;
    }
    

    public virtual void setLayerInterfaceForCircularStaticPool(AllBinaryLayer layerInterface) {
        this.layerInterface = layerInterface;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("TrackingEvent: \n");
        stringBuffer.append("LayerInterface: ");
        stringBuffer.append(this.layerInterface.toString());
        return stringBuffer.toString();
    }
}

