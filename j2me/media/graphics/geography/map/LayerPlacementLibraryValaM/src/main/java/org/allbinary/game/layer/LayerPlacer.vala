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
// package org.allbinary.game.layer
// import java.util.Enumeration
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.LayerInterfaceFactory
// import org.allbinary.layer.LayerInterfaceVisitor
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.EnumerationUtil

public class LayerPlacer : JObject {
    private EnumerationUtil enumerationUtil;
    public LayerInterfaceVisitor layerInterfaceVisitor;
    private GPoint dimension;

    // Java field initializers run after the base constructor
    private void initFieldsLayerPlacer() {
    this.enumerationUtil = EnumerationUtil.getInstance();
    
    
    }
    

    public LayerPlacer(LayerInterfaceVisitor layerInterfaceVisitor, GPoint dimension) {
        base();
        this.initFieldsLayerPlacer();
        this.layerInterfaceVisitor = layerInterfaceVisitor;
        this.dimension = dimension;
    }
    

    public virtual void processList(BasicArrayList list) {
        int32 size = list.size();
        LayerPlacementInterface layerPlacementInterface = null;
        for (int32 index = 0; index < size; index++) {
            layerPlacementInterface = ((LayerPlacementInterface) list.objectArray[index]);
            this.process(layerPlacementInterface);
        }
    }
    

    public virtual void process(LayerPlacementInterface layerPlacementInterface) {
        GPoint relativePoint = this.getPoint(layerPlacementInterface);
        LayerInterfaceFactory layerInterfaceFactory = LayerInterfaceFactory.getInstance();
        ABHashtable hashtable = layerPlacementInterface.getInstance();
        Enumeration enumeration = hashtable.keys();
        GPoint point = null;
        ABHashtable layerHashtable = null;
        int32 x = 0;
        int32 y = 0;
        int32 z = 0;
        AllBinaryLayer layerInterface = null;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            point = ((GPoint) this.enumerationUtil.nextElement(enumeration));
            layerHashtable = ((ABHashtable) hashtable.@get(point));
            x = point.getX() + relativePoint.getX();
            y = point.getY() + relativePoint.getY();
            z = point.getZ() + relativePoint.getZ();
            layerInterface = layerInterfaceFactory.getNexInstance(layerHashtable, x, y, z);
            this.layerInterfaceVisitor.visit(layerInterface);
        }
    }
    

    public virtual GPoint getPoint(LayerPlacementInterface layerPlacementInterface) {
        PointFactory pointFactory = PointFactory.getInstance();
        LayerPlacementType layerPlacementType = layerPlacementInterface.getLayerType();
        if (layerPlacementType == LayerPlacementTypeFactory.getInstance().MAP) {
            int32 width = layerPlacementInterface.getWidth();
            int32 height = layerPlacementInterface.getHeight();
            int32 x = ((this.dimension.getX() - width) / 2);
            int32 y = ((this.dimension.getY() - height) / 2);
            return pointFactory.createXY(x, y);
        } else if (layerPlacementType == LayerPlacementTypeFactory.getInstance().UP) {
            int32 width = layerPlacementInterface.getWidth();
            int32 height = layerPlacementInterface.getHeight();
            int32 x = ((this.dimension.getX() - width) / 2);
            int32 y = -height;
            return pointFactory.createXY(x, y);
        } else {
            JSystem.fatal(new JException("Exception", "PlacementType Not Recognized"));
        }
    }
}

