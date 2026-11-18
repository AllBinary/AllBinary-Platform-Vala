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
// package org.allbinary.layer.event
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.LayerManager
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class LayerManagerEvent : AllBinaryEventObject {
    private AllBinaryLayer layerInterface;
    private string crud;

    // Java field initializers run after the base constructor
    private void initFieldsLayerManagerEvent() {
    this.layerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    
    }
    

    public LayerManagerEvent(LayerManager layerManager, string crud) {
        base(layerManager);
        this.initFieldsLayerManagerEvent();
        this.crud = crud;
    }
    

    public virtual AllBinaryLayer getLayerInterface() {
        return this.layerInterface;
    }
    

    public virtual void setLayerInterface(AllBinaryLayer layerInterface) {
        this.layerInterface = layerInterface;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("LayerManagerEvent: \n");
        stringBuffer.append("LayerInterface: ");
        stringBuffer.append(this.getLayerInterface().toString());
        stringBuffer.append("\nCRUD: ");
        stringBuffer.append(this.crud);
        return stringBuffer.toString();
    }
}

