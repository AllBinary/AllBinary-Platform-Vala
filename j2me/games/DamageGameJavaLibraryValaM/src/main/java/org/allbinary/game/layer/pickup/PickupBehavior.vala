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
// package org.allbinary.game.layer.pickup
// import org.allbinary.game.health.HealthInterfaceCompositeInterface
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
// import org.allbinary.game.part.CountedLayerInterfaceFactoryPart
// import org.allbinary.game.part.PartInterface
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.string.CommonStrings

public class PickupBehavior : JObject, PickupBehaviorInterface {
    public static JObject? NULL_PICKUP_BEHAVIOR;
    private static bool staticSet_NULL_PICKUP_BEHAVIOR = false;
    public static JObject staticGet_NULL_PICKUP_BEHAVIOR() {
        if (!PickupBehavior.staticSet_NULL_PICKUP_BEHAVIOR) {
            PickupBehavior.staticSet_NULL_PICKUP_BEHAVIOR = true;
            PickupBehavior.NULL_PICKUP_BEHAVIOR = NullUtil.getInstance().NULL_OBJECT;
        }
        return PickupBehavior.NULL_PICKUP_BEHAVIOR;
    }
    public LogUtil logUtil;
    private int32 countedIndex;
    private CollidableCompositeLayer ownerLayerInterface;

    // Java field initializers run after the base constructor
    private void initFieldsPickupBehavior() {
    this.logUtil = LogUtil.getInstance();
    
    
    }
    

    public static PickupBehavior getNullInstance() {
        if (PickupBehavior.staticGet_NULL_PICKUP_BEHAVIOR() == NullUtil.getInstance().NULL_OBJECT) {
            PickupBehavior.NULL_PICKUP_BEHAVIOR = new PickupBehavior(CollidableCompositeLayer.getNullInstance(), 0);
        }
        return ((PickupBehavior) PickupBehavior.staticGet_NULL_PICKUP_BEHAVIOR());
    }
    

    public PickupBehavior(CollidableCompositeLayer ownerLayerInterface, int32 countedIndex) {
        base();
        this.initFieldsPickupBehavior();
        this.ownerLayerInterface = ownerLayerInterface;
        this.countedIndex = countedIndex;
    }
    

    public virtual void doPickup(PickupProcessorInterface pickupProcessorInterface) {
        {
            HealthInterfaceCompositeInterface healthInterfaceCompositeInterface = ((HealthInterfaceCompositeInterface) this.ownerLayerInterface);
            if (healthInterfaceCompositeInterface.getHealthInterface().isAlive()) {
                pickupProcessorInterface.process(this.ownerLayerInterface);
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void doPickupLayer(PickedUpLayerInterface pickupLayerInterface) {
        {
            PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface = pickupLayerInterface.getPickedUpLayerInterfaceFactoryInterface();
            PickedUpLayerType pickedUpLayerType = pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType();
            PickedUpLayerTypeFactory pickedUpLayerTypeFactory = PickedUpLayerTypeFactory.getInstance();
            if (pickedUpLayerType == pickedUpLayerTypeFactory.BEAM || pickedUpLayerType == pickedUpLayerTypeFactory.MINE || pickedUpLayerType == pickedUpLayerTypeFactory.PROJECTILE || pickedUpLayerType == pickedUpLayerTypeFactory.ENHANCEMENT) {
                this.add(((CountedPickedUpLayerInterfaceFactoryInterface) pickedUpLayerInterfaceFactoryInterface));
            } else if (pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType() == pickedUpLayerTypeFactory.PART) {
                CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer) this.ownerLayerInterface);
                collidableDestroyableDamageableLayer.addPart(pickedUpLayerInterfaceFactoryInterface);
            } else if (pickedUpLayerType == pickedUpLayerTypeFactory.NONE) {
            } else {
                PickupProcessorInterface pickupProcessorInterface = ((PickupProcessorInterface) pickedUpLayerInterfaceFactoryInterface);
                this.doPickup(pickupProcessorInterface);
            }
            pickupLayerInterface.setPickedUp();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void add(CountedPickedUpLayerInterfaceFactoryInterface countedPickedUpLayerInterfaceFactoryInterface) {
        int32 partIndex = countedPickedUpLayerInterfaceFactoryInterface.getId() + this.countedIndex;
        this.addAt(countedPickedUpLayerInterfaceFactoryInterface, partIndex);
    }
    

    public virtual void addAt(CountedPickedUpLayerInterfaceFactoryInterface countedPickedUpLayerInterfaceFactoryInterface, int32 partIndex) {
        CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer) this.ownerLayerInterface);
        CountedLayerInterfaceFactoryPart countedLayerInterfaceFactory = ((CountedLayerInterfaceFactoryPart) collidableDestroyableDamageableLayer.getPartInterfaceArray()[partIndex]);
        countedLayerInterfaceFactory.setTotal(countedLayerInterfaceFactory.getTotal() + countedPickedUpLayerInterfaceFactoryInterface.getTotal());
    }
    

    public virtual CountedLayerInterfaceFactoryPart getFirstAvailableCountedLayerInterfaceFactory(PickedUpLayerType[] pickedUpLayerTypeArray) {
        CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer) this.ownerLayerInterface);
        PartInterface[] partInterfaceArray = collidableDestroyableDamageableLayer.getPartInterfaceArray();
        int32 size = partInterfaceArray.length;
        CountedLayerInterfaceFactoryPart nextCountedLayerInterfaceFactory = null;
        CountedPickedUpLayerInterfaceFactory countedPickedUpLayerInterfaceFactory = null;
        for (int32 index = this.countedIndex; index < size; index++) {
            nextCountedLayerInterfaceFactory = ((CountedLayerInterfaceFactoryPart) collidableDestroyableDamageableLayer.getPartInterfaceArray()[index]);
            countedPickedUpLayerInterfaceFactory = nextCountedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory();
            for (int32 index2 = pickedUpLayerTypeArray.length; --index2 >= 0; ) {
                if (countedPickedUpLayerInterfaceFactory.getPickedUpLayerType() == pickedUpLayerTypeArray[index2]) {
                    if (nextCountedLayerInterfaceFactory.getTotal() > 0) {
                        return nextCountedLayerInterfaceFactory;
                    }
                }
            }
        }
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY;
    }
    

    public virtual CountedLayerInterfaceFactoryPart getCountedLayerInterfaceFactoryForSlot(int32 slotIndex) {
        int32 currentSlot = 0;
        CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer) this.ownerLayerInterface);
        PartInterface[] partInterfaceArray = collidableDestroyableDamageableLayer.getPartInterfaceArray();
        int32 size = partInterfaceArray.length;
        CountedLayerInterfaceFactoryPart nextCountedLayerInterfaceFactory = null;
        for (int32 index = this.countedIndex; index < size; index++) {
            nextCountedLayerInterfaceFactory = ((CountedLayerInterfaceFactoryPart) collidableDestroyableDamageableLayer.getPartInterfaceArray()[index]);
            if (nextCountedLayerInterfaceFactory.getTotal() > 0) {
                if (currentSlot == slotIndex) {
                    return nextCountedLayerInterfaceFactory;
                } else {
                    currentSlot++;
                }
            }
        }
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY;
    }
    

    public virtual int32 getCountedIndex() {
        return this.countedIndex;
    }
}

