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

public class CollisionTypeFactory : JObject {
    private static CollisionTypeFactory? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static CollisionTypeFactory staticGet_SINGLETON() {
        if (!CollisionTypeFactory.staticSet_SINGLETON) {
            CollisionTypeFactory.staticSet_SINGLETON = true;
            CollisionTypeFactory.SINGLETON = new CollisionTypeFactory();
        }
        return CollisionTypeFactory.SINGLETON;
    }
    public CollisionType NONE;
    public CollisionType DAMAGE;
    public CollisionType PICKUP;
    public CollisionType COLLISION;

    // Java field initializers run after the base constructor
    private void initFieldsCollisionTypeFactory() {
    this.NONE = new CollisionType("None");
    this.DAMAGE = new CollisionType("Damage");
    this.PICKUP = new CollisionType("Pickup");
    this.COLLISION = new CollisionType("Collision");
    }

    public CollisionTypeFactory() {
        base();
        this.initFieldsCollisionTypeFactory();
    }
    

    public static CollisionTypeFactory getInstance() {
        return CollisionTypeFactory.staticGet_SINGLETON();
    }
}

