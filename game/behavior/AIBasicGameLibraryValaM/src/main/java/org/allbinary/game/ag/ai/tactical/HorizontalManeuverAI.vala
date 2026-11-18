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
// package org.allbinary.game.ag.ai.tactical
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager

public class HorizontalManeuverAI : BasicAI {
    public int32 currentRelativeAngle;
    private int32 currentSpeed;

    // Java field initializers run after the base constructor
    private void initFieldsHorizontalManeuverAI() {
    this.currentRelativeAngle = 0;
    
    }
    

    public HorizontalManeuverAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(ownerLayerInterface, gameInput);
        this.initFieldsHorizontalManeuverAI();
        this.currentSpeed = 5;
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        int32 x = ownerLayerInterface.getXP();
        if (ownerLayerInterface.getXP() - this.currentSpeed <= 0) {
            this.reverse();
            this.drop();
        }
        if (ownerLayerInterface.getX2() + this.currentSpeed > DisplayInfoSingleton.getInstance().getLastWidth()) {
            this.reverse();
            this.accelerate();
            this.drop();
        }
        if (this.currentRelativeAngle == 0) {
            x += this.currentSpeed;
        } else if (this.currentRelativeAngle == 180) {
            x -= this.currentSpeed;
        }
        ownerLayerInterface.setPosition(x, ownerLayerInterface.getYP(), ownerLayerInterface.getZP());
        if (this.currentRelativeAngle == 0) {
            base.processKeyAI(Canvas.KEY_NUM0);
        } else if (this.currentRelativeAngle == 180) {
            base.processKeyAI(Canvas.KEY_POUND);
        }
    }
    

    public virtual void reverse() {
        if (this.currentRelativeAngle == 180) {
            this.currentRelativeAngle = 0;
        } else if (this.currentRelativeAngle == 0) {
            this.currentRelativeAngle = 180;
        }
    }
    

    private void accelerate() {
        if (this.currentSpeed < 20) {
            this.currentSpeed++;
        }
    }
    

    private void drop() {
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        int32 y = ownerLayerInterface.getYP();
        if (ownerLayerInterface.getY2() + ownerLayerInterface.getHeight() > DisplayInfoSingleton.getInstance().getLastHeight()) {
            y = 0;
        } else {
            y += ownerLayerInterface.getHeight() + 1;
        }
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP());
    }
}

