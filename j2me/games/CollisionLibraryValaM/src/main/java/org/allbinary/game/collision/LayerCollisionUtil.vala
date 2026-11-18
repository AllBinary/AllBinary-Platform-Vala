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
// package org.allbinary.game.collision
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.layer.AllBinaryLayer

public class LayerCollisionUtil : JObject {
    private static LayerCollisionUtil? instance;
    private static bool staticSet_instance = false;
    private static LayerCollisionUtil staticGet_instance() {
        if (!LayerCollisionUtil.staticSet_instance) {
            LayerCollisionUtil.staticSet_instance = true;
            LayerCollisionUtil.instance = new LayerCollisionUtil();
        }
        return LayerCollisionUtil.instance;
    }
    private CollisionProcessor collisionProcessor;

    // Java field initializers run after the base constructor
    private void initFieldsLayerCollisionUtil() {
    this.collisionProcessor = null;
    }
    

    public static LayerCollisionUtil getInstance() {
        return LayerCollisionUtil.staticGet_instance();
    }
    

    public LayerCollisionUtil() {
        base();
        this.initFieldsLayerCollisionUtil();
        Features features = Features.getInstance();
        GameFeatureFactory gameFeatureFactory = GameFeatureFactory.getInstance();
        if (OpenGLFeatureUtil.getInstance().isAnyThreed() && !features.isFeature(gameFeatureFactory.COLLISIONS_FORCED_TWO_DIMENSIONAL)) {
            this.collisionProcessor = new CollisionThreedProcessor();
        } else {
            this.collisionProcessor = new Collision2DProcessor();
        }
    }
    

    public virtual bool isCollision(AllBinaryLayer myLayer, AllBinaryLayer myLayer2) {
        return this.collisionProcessor.isCollision(myLayer, myLayer2);
    }
}

