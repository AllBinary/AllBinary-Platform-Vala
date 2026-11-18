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
// package org.allbinary.game.collision.layer
// import org.allbinary.game.collision.CollidableBaseBehavior
// import org.allbinary.game.collision.CollidableInterfaceCompositeInterface
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.layer.LayerManager

public class AllBinaryCollisionManager : JObject {
    private static AllBinaryCollisionManager? allBinaryCollisionManager;
    private static bool staticSet_allBinaryCollisionManager = false;
    private static AllBinaryCollisionManager staticGet_allBinaryCollisionManager() {
        if (!AllBinaryCollisionManager.staticSet_allBinaryCollisionManager) {
            AllBinaryCollisionManager.staticSet_allBinaryCollisionManager = true;
            AllBinaryCollisionManager.allBinaryCollisionManager = new AllBinaryCollisionManager();
        }
        return AllBinaryCollisionManager.allBinaryCollisionManager;
    }
    

    public AllBinaryCollisionManager() {
        base();
    }
    

    public static AllBinaryCollisionManager getInstance() {
        return AllBinaryCollisionManager.staticGet_allBinaryCollisionManager();
    }
    

    public virtual void process(LayerManager layerManager, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface, int32 startIndex) {
        int32 size = layerManager.getSize();
        for (int32 index = startIndex + 1; index < size; index++) {
            CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface2 = ((CollidableInterfaceCompositeInterface) layerManager.getLayerAt(index));
            this.collide(layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2);
        }
    }
    

    private void collide(LayerManager layerManager, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface2) {
        CollidableBaseBehavior collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface();
        CollidableBaseBehavior collidableBase = collidableInterfaceCompositeInterface.getCollidableInferface();
        if (collidableBase2.isCollidable(((CollidableCompositeLayer) collidableInterfaceCompositeInterface))) {
            if (collidableBase.isCollisionInterface(((CollidableCompositeLayer) collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface2)) {
                collidableBase.collideInterface(((CollidableCompositeLayer) collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface2);
                collidableBase2.collideInterface(((CollidableCompositeLayer) collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface);
            }
        }
    }
}

