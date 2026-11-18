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
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.physics.velocity.BasicVelocityProperties
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.math.BasicDecimal

public class UpDownVectorAI : BasicAI {
    private BasicVelocityProperties velocityInterface;
    private int32 index;

    // Java field initializers run after the base constructor
    private void initFieldsUpDownVectorAI() {
    
    this.index = 0;
    }
    

    public UpDownVectorAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(ownerLayerInterface, gameInput);
        this.initFieldsUpDownVectorAI();
        VelocityInterfaceCompositeInterface velocityInterfaceCompositeInterface = ((VelocityInterfaceCompositeInterface) this.getOwnerLayerInterface());
        this.velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties();
        this.velocityInterface.getVelocityYBasicDecimalP().setint(0);
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        int32 y = this.getOwnerLayerInterface().getHeight() * 270;
        if (this.index < 5) {
            BasicDecimal basicDecimal = this.velocityInterface.getVelocityYBasicDecimalP();
            basicDecimal.setint(0);
            basicDecimal.addint(y);
            this.index++;
        } else if (this.index < 10) {
            BasicDecimal basicDecimal = this.velocityInterface.getVelocityYBasicDecimalP();
            basicDecimal.setint(0);
            basicDecimal.subtractint(y);
            this.index++;
        } else {
            this.index = 0;
            this.processAI(allBinaryLayerManager);
        }
    }
}

