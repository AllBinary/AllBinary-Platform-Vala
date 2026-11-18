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
// package org.allbinary.game.ag.ai
// import javax.microedition.lcdui.Canvas
// import org.allbinary.ai.ArtificialIntelligenceInterface
// import org.allbinary.direction.Direction
// import org.allbinary.direction.DirectionFactory
// import org.allbinary.direction.DirectionalCompositeInterface
// import org.allbinary.direction.DirectionalInterface
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.combat.destroy.event.DestroyedEvent
// import org.allbinary.game.combat.destroy.event.DestroyedEventHandler
// import org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface
// import org.allbinary.game.identification.Group
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.physics.velocity.BasicVelocityProperties
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.game.tracking.TrackingEvent
// import org.allbinary.game.tracking.TrackingEventHandler
// import org.allbinary.game.tracking.TrackingEventListenerInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.math.MathUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class DiveAndDirectionalTrackingAI : BasicAI, TrackingEventListenerInterface, DestroyedEventListenerInterface, EventListenerInterface {
    private MathUtil mathUtil;
    private DirectionFactory directionFactory;
    private GameTickTimeDelayHelper gameTickTimeDelayHelper;
    private TimeDelayHelper timeDelayHelper;
    private BasicArrayList list;
    private DirectionalInterface directionalInterface;
    private BasicVelocityProperties velocityInterface;
    private int32[] directionToKeyMap;
    private bool initialDropped;
    private bool diveP;
    private Direction directionOfTarget;
    private int32 MIN_DISTANCE;
    private AllBinaryLayer lastTrackingLayerInterface;
    private ArtificialIntelligenceInterface artificialIntelligenceInterface;
    private Visitor aiVistor;
    private Direction lastDirection;

    // Java field initializers run after the base constructor
    private void initFieldsDiveAndDirectionalTrackingAI() {
    this.mathUtil = MathUtil.getInstance();
    this.directionFactory = DirectionFactory.getInstance();
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.timeDelayHelper = new TimeDelayHelper(500);
    this.list = new BasicArrayListD();
    
    
    this.directionToKeyMap = new int32[] {Canvas.LEFT, Canvas.DOWN, Canvas.UP, Canvas.RIGHT};
    this.initialDropped = false;
    this.diveP = false;
    this.directionOfTarget = Direction.getInstance1(0);
    this.MIN_DISTANCE = 40;
    this.lastTrackingLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    
    
    this.lastDirection = DirectionFactory.getInstance().NO_DIRECTION;
    }
    

    public DiveAndDirectionalTrackingAI(AllBinaryLayer ownerLayerInterface, ArtificialIntelligenceInterface artificialIntelligenceInterface, GameInput gameInput, Visitor visitor) {
        base(ownerLayerInterface, gameInput);
        this.initFieldsDiveAndDirectionalTrackingAI();
        this.aiVistor = visitor;
        this.artificialIntelligenceInterface = artificialIntelligenceInterface;
        DirectionalCompositeInterface directionalCompositeInterface = ((DirectionalCompositeInterface) this.getOwnerLayerInterface());
        this.directionalInterface = directionalCompositeInterface.getDirectionalInterface();
        VelocityInterfaceCompositeInterface velocityInterfaceCompositeInterface = ((VelocityInterfaceCompositeInterface) this.getOwnerLayerInterface());
        this.velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties();
        DestroyedEventHandler.getInstance().addListenerInterface(this);
        this.init();
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.isBeyondTarget()) {
            this.init();
            this.velocityInterface.zero();
        }
        if (!this.diveP) {
            this.target(allBinaryLayerManager);
        } else {
            this.dive();
            this.attack();
        }
        this.list.clear();
    }
    

    private void init() {
        this.diveP = false;
        this.directionOfTarget = DirectionFactory.getInstance().NOT_BORDERED_WITH;
        TrackingEventHandler.getInstance().addListenerInterface(this);
    }
    

    private void target(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.list.size() == 0) {
            return;
        }
        TrackingEvent lastTrackingEvent = ((TrackingEvent) this.list.removeAt(0));
        this.lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface();
        AllBinaryLayer layerInterface = this.lastTrackingLayerInterface;
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        Group[] groupArray = layerInterface.getGroupInterface();
        Group[] ownerGroupArray = ownerLayerInterface.getGroupInterface();
        if (groupArray == ownerGroupArray) {
            return;
        }
        int32 x = this.lastTrackingLayerInterface.getXP();
        int32 y = this.lastTrackingLayerInterface.getYP();
        int32 yDistance = ownerLayerInterface.getYP() - y - ownerLayerInterface.getHeight();
        int32 xDistance = ownerLayerInterface.getXP() - x - ownerLayerInterface.getWidth();
        DirectionFactory directionFactory = DirectionFactory.getInstance();
        if (this.mathUtil.abs(yDistance) > this.mathUtil.abs(xDistance)) {
            if (yDistance > this.MIN_DISTANCE) {
                this.directionOfTarget = directionFactory.UP;
            } else if (yDistance < -this.MIN_DISTANCE) {
                this.directionOfTarget = directionFactory.DOWN;
            }
        } else {
            if (xDistance > this.MIN_DISTANCE) {
                this.directionOfTarget = directionFactory.LEFT;
            } else if (xDistance < -this.MIN_DISTANCE) {
                this.directionOfTarget = directionFactory.RIGHT;
            }
        }
        if (!this.initialDropped && this.directionOfTarget != directionFactory.NOT_BORDERED_WITH) {
            this.drop();
        }
        if (this.initialDropped) {
            if (this.directionOfTarget == directionFactory.UP || this.directionOfTarget == directionFactory.DOWN) {
                this.verticalTargeting(x);
            } else if (this.directionOfTarget == directionFactory.LEFT || this.directionOfTarget == directionFactory.RIGHT) {
                this.horizontalTargeting(y);
            } else {
                this.artificialIntelligenceInterface.processAI(allBinaryLayerManager);
            }
        }
    }
    

    private void verticalTargeting(int32 x) {
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        if (ownerLayerInterface.getXP() < x) {
            this.moveRight();
        }
        if (ownerLayerInterface.getXP() > x) {
            this.moveLeft();
        }
        if (ownerLayerInterface.getXP() > x - 3 && ownerLayerInterface.getXP() < x + 3) {
            this.setDive();
        }
    }
    

    private void horizontalTargeting(int32 y) {
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        if (ownerLayerInterface.getYP() < y) {
            this.moveDown();
        }
        if (ownerLayerInterface.getYP() > y) {
            this.moveUp();
        }
        if (ownerLayerInterface.getYP() > y - 3 && ownerLayerInterface.getYP() < y + 3) {
            this.setDive();
        }
    }
    

    private void setDive() {
        this.diveP = true;
        this.velocityInterface.zero();
        TrackingEventHandler.getInstance().removeListener(this);
    }
    

    private void moveRight() {
        this.setLastDirection(this.directionFactory.RIGHT);
        this.directionalInterface.setFrameByDirection(this.lastDirection);
        this.aiVistor.visit(this);
    }
    

    private void moveLeft() {
        this.setLastDirection(this.directionFactory.LEFT);
        this.directionalInterface.setFrameByDirection(this.lastDirection);
        this.aiVistor.visit(this);
    }
    

    private void moveDown() {
        this.setLastDirection(this.directionFactory.DOWN);
        this.directionalInterface.setFrameByDirection(this.lastDirection);
        this.aiVistor.visit(this);
    }
    

    private void moveUp() {
        this.setLastDirection(this.directionFactory.UP);
        this.directionalInterface.setFrameByDirection(this.lastDirection);
        this.aiVistor.visit(this);
    }
    

    private void dive() {
        this.directionalInterface.setFrameByDirection(this.directionOfTarget);
        this.aiVistor.visit(this);
    }
    

    private void attack() {
        base.processKeyAI(Canvas.KEY_NUM1);
    }
    

    private void drop() {
        if (this.timeDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            this.initialDropped = true;
            this.aiVistor.visit(this);
        }
    }
    

    private bool isBeyondTarget() {
        if (this.directionOfTarget == this.directionFactory.DOWN) {
            if (this.getOwnerLayerInterface().getYP() > this.lastTrackingLayerInterface.getYP() + this.MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else if (this.directionOfTarget == this.directionFactory.UP) {
            if (this.getOwnerLayerInterface().getYP() < this.lastTrackingLayerInterface.getYP() + this.MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else if (this.directionOfTarget == this.directionFactory.RIGHT) {
            if (this.getOwnerLayerInterface().getXP() > this.lastTrackingLayerInterface.getXP() + this.MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else if (this.directionOfTarget == this.directionFactory.LEFT) {
            if (this.getOwnerLayerInterface().getXP() < this.lastTrackingLayerInterface.getXP() + this.MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void onMovement(TrackingEvent trackingEvent) {
        this.list.add(trackingEvent);
    }
    

    public virtual void onDestroyed(DestroyedEvent destroyedEvent) {
        if (this.getOwnerLayerInterface() == destroyedEvent.getLayerInterface()) {
            TrackingEventHandler.getInstance().removeListener(this);
            DestroyedEventHandler.getInstance().removeListener(this);
        }
    }
    

    public virtual void setLastDirection(Direction lastDirection) {
        this.lastDirection = lastDirection;
        int32 value = this.getLastDirection().getValue();
        if (value < 4) {
            base.setLastKey(this.directionToKeyMap[value]);
        }
    }
    

    public override void setLastKey(int32 lastKey) {
        base.setLastKey(lastKey);
        if (this.getLastKey() == Canvas.LEFT) {
            this.lastDirection = DirectionFactory.getInstance().LEFT;
        } else if (this.getLastKey() == Canvas.DOWN) {
            this.lastDirection = DirectionFactory.getInstance().DOWN;
        } else if (this.getLastKey() == Canvas.UP) {
            this.lastDirection = DirectionFactory.getInstance().UP;
        } else if (this.getLastKey() == Canvas.RIGHT) {
            this.lastDirection = DirectionFactory.getInstance().RIGHT;
        }
    }
    

    public virtual Direction getLastDirection() {
        return this.lastDirection;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(base.toString());
        stringBuffer.append(" LastDirection: ");
        stringBuffer.append(StringUtil.getInstance().toString1(this.getLastDirection()));
        return stringBuffer.toString();
    }
}

