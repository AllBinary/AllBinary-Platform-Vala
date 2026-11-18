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
// import org.allbinary.ai.ArtificialIntelligence
// import org.allbinary.ai.ArtificialIntelligenceTransitionInterface
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.animation.RotationAnimationInterface
// import org.allbinary.animation.RotationAnimationInterfaceCompositeInterface
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.physics.velocity.BasicVelocityProperties
// import org.allbinary.game.physics.velocity.VelocityInterface
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.math.AngleIncrementInfo
// import org.allbinary.util.CircularIndexUtil

public class HorizontaRotationManeuverAI : BasicAI, ArtificialIntelligenceTransitionInterface {
    private CircularIndexUtil circularIndexUtil;
    private int32 currentSpeedDivisor;
    private IndexedAnimation rotationAnimationInterface;
    private BasicVelocityProperties baseVelocityInterface;
    private VelocityInterface velocityInterface;

    // Java field initializers run after the base constructor
    private void initFieldsHorizontaRotationManeuverAI() {
    this.circularIndexUtil = CircularIndexUtil.createInstanceAt(10, Integer.MAX_VALUE);
    this.currentSpeedDivisor = 5;
    
    
    
    }
    

    public HorizontaRotationManeuverAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(ownerLayerInterface, gameInput);
        this.initFieldsHorizontaRotationManeuverAI();
        RotationAnimationInterfaceCompositeInterface rotationAnimationInterfaceCompositeInterface = ((RotationAnimationInterfaceCompositeInterface) this.getOwnerLayerInterface());
        this.rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface();
        VelocityInterfaceCompositeInterface velocityInterfaceCompositeInterface = ((VelocityInterfaceCompositeInterface) this.getOwnerLayerInterface());
        this.baseVelocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties();
        this.velocityInterface = ((VelocityInterface) this.baseVelocityInterface);
        RotationAnimationInterface rotationAnimationInterface = ((RotationAnimationInterface) this.rotationAnimationInterface);
        AngleIncrementInfo angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue());
    }
    

    public virtual void transition() {
        RotationAnimationInterface rotationAnimationInterface = ((RotationAnimationInterface) this.rotationAnimationInterface);
        AngleIncrementInfo angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        RotationAnimationInterfaceCompositeInterface rotationAnimationInterfaceCompositeInterface = ((RotationAnimationInterfaceCompositeInterface) this.getOwnerLayerInterface());
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue());
        AllBinaryLayer allbinaryLayer = this.getOwnerLayerInterface();
        allbinaryLayer.setPosition(allbinaryLayer.getXP(), 1, allbinaryLayer.getZP());
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        RotationAnimationInterface rotationAnimationInterface = (((RotationAnimationInterface) this.rotationAnimationInterface));
        AngleIncrementInfo angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        int32 frame = this.rotationAnimationInterface.getFrame();
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        if (ownerLayerInterface.getXP() - ownerLayerInterface.getWidth() <= 0 && frame == angleIncrementInfo.LEFT_FRAME.intValue()) {
            this.reverse();
            this.drop();
        }
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        if (ownerLayerInterface.getX2() + ownerLayerInterface.getWidth() > displayInfo.getLastWidth() && frame == angleIncrementInfo.RIGHT_FRAME.intValue()) {
            this.reverse();
            this.accelerate();
            this.drop();
        }
        int32 index = this.circularIndexUtil.getIndex();
        if (index % this.currentSpeedDivisor == 0 && index % 2 == 0) {
            base.processKeyAI(Canvas.UP);
            this.velocityInterface.limitMaxXYVelocity(this.velocityInterface.getMaxForwardVelocity() / this.currentSpeedDivisor);
        }
        this.circularIndexUtil.next();
        if (frame == angleIncrementInfo.LEFT_FRAME.intValue()) {
            base.processKeyAI(Canvas.KEY_NUM0);
        } else if (frame == angleIncrementInfo.RIGHT_FRAME.intValue()) {
            base.processKeyAI(Canvas.KEY_POUND);
        }
    }
    

    public virtual void reverse() {
        RotationAnimationInterface rotationAnimationInterface = ((RotationAnimationInterface) this.rotationAnimationInterface);
        AngleIncrementInfo angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        int32 frame = this.rotationAnimationInterface.getFrame();
        if (frame == angleIncrementInfo.LEFT_FRAME.intValue()) {
            RotationAnimationInterfaceCompositeInterface rotationAnimationInterfaceCompositeInterface = ((RotationAnimationInterfaceCompositeInterface) this.getOwnerLayerInterface());
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue());
            this.baseVelocityInterface.zero();
        } else if (frame == angleIncrementInfo.RIGHT_FRAME.intValue()) {
            RotationAnimationInterfaceCompositeInterface rotationAnimationInterfaceCompositeInterface = ((RotationAnimationInterfaceCompositeInterface) this.getOwnerLayerInterface());
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.LEFT_FRAME.intValue());
            this.baseVelocityInterface.zero();
        }
    }
    

    private void accelerate() {
        if (this.currentSpeedDivisor > 1) {
            this.currentSpeedDivisor--;
        }
    }
    

    private void drop() {
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        int32 y = ownerLayerInterface.getYP();
        if (ownerLayerInterface.getY2() + ownerLayerInterface.getHeight() > displayInfo.getLastHeight()) {
            y = 0;
        } else {
            y += ownerLayerInterface.getHeight() + 1;
        }
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP());
    }
    

    public override int32 getId() {
        return ArtificialIntelligence.AI_ID;
    }
}

