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
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager

public class SpinnerAI : BasicAI {
    private bool isEven;
    private int32[] direction;

    // Java field initializers run after the base constructor
    private void initFieldsSpinnerAI() {
    this.isEven = false;
    
    }
    

    public SpinnerAI(int32[] direction, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(ownerLayerInterface, gameInput);
        this.initFieldsSpinnerAI();
        this.direction = direction;
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.isEven) {
            base.processKeyAI(this.direction[0]);
            this.isEven = false;
        } else {
            base.processKeyAI(Canvas.KEY_NUM1);
            this.isEven = true;
        }
    }
}

