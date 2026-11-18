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
// package org.allbinary.physics.movement

public class NoMovementFactory : JObject {
    private static NoMovementFactory? instance;
    private static bool staticSet_instance = false;
    private static NoMovementFactory staticGet_instance() {
        if (!NoMovementFactory.staticSet_instance) {
            NoMovementFactory.staticSet_instance = true;
            NoMovementFactory.instance = new NoMovementFactory();
        }
        return NoMovementFactory.instance;
    }
    private Movement movement;

    // Java field initializers run after the base constructor
    private void initFieldsNoMovementFactory() {
    this.movement = new Movement();
    }

    public NoMovementFactory() {
        base();
        this.initFieldsNoMovementFactory();
    }
    

    public static NoMovementFactory getInstance() {
        return NoMovementFactory.staticGet_instance();
    }
    

    public virtual Movement getMovmentInstance() {
        return this.movement;
    }
}

