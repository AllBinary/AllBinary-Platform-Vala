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

public class CollidableNeverCollideBehaviorFactory : CollidableBaseBehaviorFactory {
    private static CollidableNeverCollideBehaviorFactory? instanceC;
    private static bool staticSet_instanceC = false;
    private static CollidableNeverCollideBehaviorFactory staticGet_instanceC() {
        if (!CollidableNeverCollideBehaviorFactory.staticSet_instanceC) {
            CollidableNeverCollideBehaviorFactory.staticSet_instanceC = true;
            CollidableNeverCollideBehaviorFactory.instanceC = new CollidableNeverCollideBehaviorFactory();
        }
        return CollidableNeverCollideBehaviorFactory.instanceC;
    }
    private CollidableNeverCollideBehavior instance;

    // Java field initializers run after the base constructor
    private void initFieldsCollidableNeverCollideBehaviorFactory() {
    this.instance = new CollidableNeverCollideBehavior(false);
    }

    public CollidableNeverCollideBehaviorFactory() {
        base();
        this.initFieldsCollidableNeverCollideBehaviorFactory();
    }
    

    public static CollidableNeverCollideBehaviorFactory getInstance() {
        return CollidableNeverCollideBehaviorFactory.staticGet_instanceC();
    }
    

    public override CollidableBaseBehavior createBehavior() {
        return this.instance;
    }
}

