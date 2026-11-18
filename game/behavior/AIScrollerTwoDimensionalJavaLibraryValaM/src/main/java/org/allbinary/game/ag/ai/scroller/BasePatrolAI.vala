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
// package org.allbinary.game.ag.ai.scroller
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.physics.velocity.BasicVelocityProperties
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.math.MathUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.util.ABHashtable

public class BasePatrolAI : BasicAI {
    public static int32?? MAX_DISTANCE;
    private static bool staticSet_MAX_DISTANCE = false;
    public static int32? staticGet_MAX_DISTANCE() {
        if (!BasePatrolAI.staticSet_MAX_DISTANCE) {
            BasePatrolAI.staticSet_MAX_DISTANCE = true;
            BasePatrolAI.MAX_DISTANCE = SmallIntegerSingletonFactory.getInstance().getAt(2);
        }
        return BasePatrolAI.MAX_DISTANCE;
    }
    public static int32?? DIRECTION_ARRAY;
    private static bool staticSet_DIRECTION_ARRAY = false;
    public static int32? staticGet_DIRECTION_ARRAY() {
        if (!BasePatrolAI.staticSet_DIRECTION_ARRAY) {
            BasePatrolAI.staticSet_DIRECTION_ARRAY = true;
            BasePatrolAI.DIRECTION_ARRAY = SmallIntegerSingletonFactory.getInstance().getAt(3);
        }
        return BasePatrolAI.DIRECTION_ARRAY;
    }
    public static int32?? FIRING_DISTANCE;
    private static bool staticSet_FIRING_DISTANCE = false;
    public static int32? staticGet_FIRING_DISTANCE() {
        if (!BasePatrolAI.staticSet_FIRING_DISTANCE) {
            BasePatrolAI.staticSet_FIRING_DISTANCE = true;
            BasePatrolAI.FIRING_DISTANCE = SmallIntegerSingletonFactory.getInstance().getAt(4);
        }
        return BasePatrolAI.FIRING_DISTANCE;
    }
    public static int32?? SPEED;
    private static bool staticSet_SPEED = false;
    public static int32? staticGet_SPEED() {
        if (!BasePatrolAI.staticSet_SPEED) {
            BasePatrolAI.staticSet_SPEED = true;
            BasePatrolAI.SPEED = SmallIntegerSingletonFactory.getInstance().getAt(5);
        }
        return BasePatrolAI.SPEED;
    }
    public int32? maxDistance;
    public int32 currentDistance;
    public int32 xTotalDistance;
    public int32 lastKeyDirection;
    public int32 keyDirection;

    // Java field initializers run after the base constructor
    private void initFieldsBasePatrolAI() {
    
    
    this.xTotalDistance = 0;
    this.lastKeyDirection = Canvas.RIGHT;
    this.keyDirection = Canvas.RIGHT;
    }
    

    public BasePatrolAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(ownerLayerInterface, gameInput);
        this.initFieldsBasePatrolAI();
        this.maxDistance = JNumber.unboxInt(hashtable.@get(BasePatrolAI.staticGet_MAX_DISTANCE()));
        this.currentDistance = ((int32) this.maxDistance);
    }
    

    public virtual void update() {
        this.updateTotalDistance();
        this.changeDirectionIfReachedPacingAreaMax();
    }
    

    private void updateTotalDistance() {
        VelocityInterfaceCompositeInterface velocityInterfaceCompositeInterface = ((VelocityInterfaceCompositeInterface) this.getOwnerLayerInterface());
        BasicVelocityProperties velocityProperties = velocityInterfaceCompositeInterface.getVelocityProperties();
        this.xTotalDistance += velocityProperties.getVelocityXBasicDecimalP().getScaled();
    }
    

    private void changeDirectionIfReachedPacingAreaMax() {
        MathUtil mathUtil = MathUtil.getInstance();
        int32 totalDistance = mathUtil.abs(this.xTotalDistance);
        if (totalDistance > this.currentDistance) {
            this.nextDirection();
        }
    }
    

    public virtual void nextDirection() {
        if (this.lastKeyDirection == Canvas.LEFT) {
            this.keyDirection = Canvas.RIGHT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
        } else if (this.lastKeyDirection == Canvas.RIGHT) {
            this.keyDirection = Canvas.LEFT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
        }
    }
    

    public virtual void disable() {
    }
}

