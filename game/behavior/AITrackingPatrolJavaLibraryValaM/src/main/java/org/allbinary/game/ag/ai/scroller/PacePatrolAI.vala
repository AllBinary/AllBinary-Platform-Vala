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
// import org.allbinary.direction.Direction
// import org.allbinary.direction.DirectionCompositeInterface
// import org.allbinary.direction.DirectionFactory
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.tracking.TrackingEvent
// import org.allbinary.game.tracking.TrackingEventHandler
// import org.allbinary.game.tracking.TrackingEventListenerInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.layer.LayerInterface
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class PacePatrolAI : BasePatrolAI, TrackingEventListenerInterface, EventListenerInterface {
    private BasicArrayList trackingList;
    private int32 firingDistance;
    public bool isFollowLimitedByTerrain;

    // Java field initializers run after the base constructor
    private void initFieldsPacePatrolAI() {
    
    this.firingDistance = 0;
    this.isFollowLimitedByTerrain = false;
    }
    

    public PacePatrolAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(hashtable, ownerLayerInterface, gameInput);
        this.initFieldsPacePatrolAI();
        TrackingEventHandler.getInstance().addListenerInterface(this);
        this.trackingList = new BasicArrayListD();
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        this.update();
        Direction direction = this.setFiringDirectionForTargetIfInRange();
        DirectionFactory directionFactory = DirectionFactory.getInstance();
        if (direction == directionFactory.LEFT) {
            if (this.lastKeyDirection != this.keyDirection || !this.isFollowLimitedByTerrain) {
                base.processKeyAI(Canvas.LEFT);
            }
            this.keyDirection = Canvas.LEFT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
            base.processKeyAI(Canvas.KEY_NUM1);
        } else if (direction == directionFactory.RIGHT) {
            if (this.lastKeyDirection != this.keyDirection || !this.isFollowLimitedByTerrain) {
                base.processKeyAI(Canvas.RIGHT);
            }
            this.keyDirection = Canvas.RIGHT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
            base.processKeyAI(Canvas.KEY_NUM1);
        } else {
            base.processKeyAI(this.keyDirection);
        }
    }
    

    private Direction setFiringDirectionForTargetIfInRange() {
        DirectionFactory directionFactory = DirectionFactory.getInstance();
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        Direction direction = directionFactory.NOT_BORDERED_WITH;
        TrackingEvent lastTrackingEvent = null;
        LayerInterface lastTrackingLayerInterface = null;
        DirectionCompositeInterface directionCompositeInterface = null;
        int32 size = this.trackingList.size();
        for (int32 index = 0; index < size; index++) {
            lastTrackingEvent = ((TrackingEvent) this.trackingList.@get(0));
            lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface();
            int32 x = lastTrackingLayerInterface.getXP();
            int32 y = lastTrackingLayerInterface.getYP();
            int32 yDistance = ownerLayerInterface.getYP() - y - ownerLayerInterface.getHeight();
            int32 xDistance = ownerLayerInterface.getXP() - x - ownerLayerInterface.getWidth();
            int32 absXDistance = (xDistance < 0 ? -xDistance : xDistance);
            int32 absYDistance = (yDistance < 0 ? -yDistance : yDistance);
            if (absYDistance <= 100) {
                if (absXDistance < this.getFiringDistance() / 2) {
                    directionCompositeInterface = ((DirectionCompositeInterface) this.getOwnerLayerInterface());
                    if (xDistance < 0 && directionCompositeInterface.getDirection() == directionFactory.RIGHT) {
                        direction = directionFactory.RIGHT;
                    } else if (xDistance > 0 && directionCompositeInterface.getDirection() == directionFactory.LEFT) {
                        direction = directionFactory.LEFT;
                    }
                }
            }
        }
        return direction;
    }
    

    public override void disable() {
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void onMovement(TrackingEvent trackingEvent) {
        this.trackingList.clear();
        this.trackingList.add(trackingEvent);
    }
    

    public virtual int32 getFiringDistance() {
        return this.firingDistance;
    }
    

    public virtual void setFiringDistance(int32 firingDistance) {
        this.firingDistance = firingDistance;
    }
}

