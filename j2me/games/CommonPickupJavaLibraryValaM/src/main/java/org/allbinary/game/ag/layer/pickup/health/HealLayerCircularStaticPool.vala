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
// package org.allbinary.game.ag.layer.pickup.health
// import org.allbinary.game.health.HealthInterface
// import org.allbinary.game.health.HealthInterfaceCompositeInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerCircularPool
// import org.allbinary.layer.AllBinaryLayerFactoryInterface

public class HealLayerCircularStaticPool : AllBinaryLayerCircularPool {
    

    public HealLayerCircularStaticPool(AllBinaryLayerFactoryInterface allbinaryLayerFactoryInterface, int32 total) {
        base();
        base.initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total);
    }
    

    public virtual void visit(AllBinaryLayer sourceLayerInterface) {
        HealLayer healLayer = ((HealLayer) this.getNextInstance());
        HealthInterfaceCompositeInterface healthInterfaceCompositeInterface = ((HealthInterfaceCompositeInterface) sourceLayerInterface);
        HealthInterface healthInterface = healthInterfaceCompositeInterface.getHealthInterface();
        healLayer.visit(healthInterface);
    }
}

