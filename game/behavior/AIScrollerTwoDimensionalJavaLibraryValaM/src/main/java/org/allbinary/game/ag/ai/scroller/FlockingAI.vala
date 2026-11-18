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
// package org.allbinary.game.ag.ai.scroller
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.identification.BasicGroupFactory
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.layer.identification.GroupLayerManagerListener
// import org.allbinary.game.layer.weapon.WeaponLayer
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.math.MathUtil
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList

public class FlockingAI : BasicAI {
    private int32 allowedDistance;

    // Java field initializers run after the base constructor
    private void initFieldsFlockingAI() {
    
    }
    

    public FlockingAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(ownerLayerInterface, gameInput);
        this.initFieldsFlockingAI();
        int32? allowedDistance = JNumber.unboxInt(hashtable.@get(BasePatrolAI.MAX_DISTANCE));
        this.allowedDistance = ((int32) allowedDistance);
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        int32 maxDistance = 0;
        AllBinaryLayer farAllbinaryLayer = AllBinaryLayer.NULL_ALLBINARY_LAYER;
        GroupLayerManagerListener groupLayerManagerListener = GroupLayerManagerListener.getInstance();
        BasicArrayList list = groupLayerManagerListener.getList(BasicGroupFactory.getInstance().ENEMY);
        int32 size = list.size();
        AllBinaryLayer allBinaryLayer = null;
        AllBinaryLayer ownerLayerInterface = null;
        for (int32 index = 0; index < size; index++) {
            allBinaryLayer = ((AllBinaryLayer) list.@get(index));
            if (allBinaryLayer.getType() != WeaponLayer.getStaticType()) {
                int32 distance = this.getXYDistance(allBinaryLayer);
                if (distance > maxDistance) {
                    maxDistance = distance;
                    farAllbinaryLayer = allBinaryLayer;
                    if (distance > this.allowedDistance) {
                        break;
                    }
                }
            }
        }
        if (maxDistance > this.allowedDistance) {
            if (farAllbinaryLayer != AllBinaryLayer.NULL_ALLBINARY_LAYER) {
                ownerLayerInterface = this.getOwnerLayerInterface();
                if (farAllbinaryLayer.getXP() < ownerLayerInterface.getXP()) {
                    this.processKeyAI(Canvas.LEFT);
                } else if (farAllbinaryLayer.getXP() > ownerLayerInterface.getXP()) {
                    this.processKeyAI(Canvas.RIGHT);
                } else if (farAllbinaryLayer.getYP() > ownerLayerInterface.getYP()) {
                    this.processKeyAI(Canvas.UP);
                } else if (farAllbinaryLayer.getYP() < ownerLayerInterface.getYP()) {
                    this.processKeyAI(Canvas.DOWN);
                }
            }
        }
    }
    

    private int32 getXYDistance(AllBinaryLayer allBinaryLayer) {
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        int32 xTotalDistance = (allBinaryLayer.getXP() + allBinaryLayer.getHalfWidth()) - (ownerLayerInterface.getXP() + ownerLayerInterface.getHalfWidth());
        int32 yTotalDistance = (allBinaryLayer.getYP() + allBinaryLayer.getHalfHeight()) - (ownerLayerInterface.getYP() + ownerLayerInterface.getHalfHeight());
        MathUtil mathUtil = MathUtil.getInstance();
        int32 totalDistance = mathUtil.abs(xTotalDistance) + mathUtil.abs(yTotalDistance);
        return totalDistance;
    }
}

