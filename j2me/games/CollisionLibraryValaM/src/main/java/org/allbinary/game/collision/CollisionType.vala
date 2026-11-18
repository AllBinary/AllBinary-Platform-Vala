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

public class CollisionType : JObject {
    private string name;

    // Java field initializers run after the base constructor
    private void initFieldsCollisionType() {
    
    }
    

    public CollisionType(string name) {
        base();
        this.initFieldsCollisionType();
        this.name = name;
    }
    

    public override string toString() {
        return this.name;
    }
}

