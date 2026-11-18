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
// package org.allbinary.game.ag.layer.weapon.mine
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
// import org.allbinary.game.layer.pickup.IconLayerFactory
// import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
// import org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory
// import org.allbinary.game.layer.weapon.WeaponLayerCircularPool
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.util.ABHashtable

public class MineCountedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory {
    private static PickedUpLayerInterfaceFactoryInterface? pickedUpLayerInterfaceFactoryInterface;
    private static bool staticSet_pickedUpLayerInterfaceFactoryInterface = false;
    private static PickedUpLayerInterfaceFactoryInterface staticGet_pickedUpLayerInterfaceFactoryInterface() {
        if (!MineCountedPickedUpLayerInterfaceFactory.staticSet_pickedUpLayerInterfaceFactoryInterface) {
            MineCountedPickedUpLayerInterfaceFactory.staticSet_pickedUpLayerInterfaceFactoryInterface = true;
            MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
        }
        return MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface;
    }
    private WeaponLayerCircularPool weaponLayerCircularStaticPool;
    private WeaponProperties weaponProperties;
    private SmallIntegerSingletonFactory smallIntegerSingletonFactory;

    // Java field initializers run after the base constructor
    private void initFieldsMineCountedPickedUpLayerInterfaceFactory() {
    this.weaponLayerCircularStaticPool = MineLayerCircularStaticPool.getInstance();
    this.weaponProperties = new WeaponProperties(-(int64) 1, -(int64) 1, 0, 8000, ((int16) (10)));
    this.smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
    }
    

    public static void init() {
        MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = new MineCountedPickedUpLayerInterfaceFactory();
    }
    

    public MineCountedPickedUpLayerInterfaceFactory() {
        base(PickedUpLayerTypeFactory.getInstance().MINE, IconLayerFactory.getInstance3(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(MineWeaponResources.getInstance().DROP_ICON_RESOURCE).getInstance1(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(MineWeaponResources.getInstance().DROP_RESOURCE).getInstance1(0));
        this.initFieldsMineCountedPickedUpLayerInterfaceFactory();
    }
    

    public static PickedUpLayerInterfaceFactoryInterface getInstance() {
        return MineCountedPickedUpLayerInterfaceFactory.staticGet_pickedUpLayerInterfaceFactoryInterface();
    }
    

    public override int32 getTotal() {
        return 3;
    }
    

    public override AllBinaryLayer getNextInstance(ABHashtable hashtable, int32 x, int32 y, int32 z) {
        AllBinaryLayer sourceLayerInterface = ((AllBinaryLayer) hashtable.@get(((JObject) this.smallIntegerSingletonFactory.getAt(0))));
        int32? angle = JNumber.unboxInt(hashtable.@get(((JObject) this.smallIntegerSingletonFactory.getAt(1))));
        ScoreableInterface scoreableInterface = ((ScoreableInterface) sourceLayerInterface);
        return this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x, y, z, ((int32) angle), 0, this.weaponProperties, scoreableInterface);
    }
}

