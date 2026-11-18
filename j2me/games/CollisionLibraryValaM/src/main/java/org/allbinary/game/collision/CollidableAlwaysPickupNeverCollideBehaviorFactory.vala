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

public class CollidableAlwaysPickupNeverCollideBehaviorFactory : CollidableBaseBehaviorFactory {
    private static CollidableAlwaysPickupNeverCollideBehaviorFactory? instanceC;
    private static bool staticSet_instanceC = false;
    private static CollidableAlwaysPickupNeverCollideBehaviorFactory staticGet_instanceC() {
        if (!CollidableAlwaysPickupNeverCollideBehaviorFactory.staticSet_instanceC) {
            CollidableAlwaysPickupNeverCollideBehaviorFactory.staticSet_instanceC = true;
            CollidableAlwaysPickupNeverCollideBehaviorFactory.instanceC = new CollidableAlwaysPickupNeverCollideBehaviorFactory();
        }
        return CollidableAlwaysPickupNeverCollideBehaviorFactory.instanceC;
    }
    private CollidableAlwaysPickupNeverCollideBehavior instance;

    // Java field initializers run after the base constructor
    private void initFieldsCollidableAlwaysPickupNeverCollideBehaviorFactory() {
    this.instance = new CollidableAlwaysPickupNeverCollideBehavior();
    }

    public CollidableAlwaysPickupNeverCollideBehaviorFactory() {
        base();
        this.initFieldsCollidableAlwaysPickupNeverCollideBehaviorFactory();
    }
    

    public static CollidableAlwaysPickupNeverCollideBehaviorFactory getInstance() {
        return CollidableAlwaysPickupNeverCollideBehaviorFactory.staticGet_instanceC();
    }
    

    public override CollidableBaseBehavior createBehavior() {
        return this.instance;
    }
}

