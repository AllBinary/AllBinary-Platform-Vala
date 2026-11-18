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
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.util.ABHashtable

public class RandomPatrolAI : BasePatrolAI {
    private bool changedDirection;

    // Java field initializers run after the base constructor
    private void initFieldsRandomPatrolAI() {
    this.changedDirection = true;
    }
    

    public RandomPatrolAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(hashtable, ownerLayerInterface, gameInput);
        this.initFieldsRandomPatrolAI();
        this.updateRandomDistance();
    }
    

    private void updateRandomDistance() {
        this.currentDistance = MyRandomFactory.getInstance().getAbsoluteNextInt(this.maxDistance.intValue());
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        base.update();
        base.processKeyAI(this.keyDirection);
        if (this.changedDirection) {
            base.processKeyAI(Canvas.KEY_NUM1);
            this.updateRandomDistance();
            this.changedDirection = false;
        }
    }
    

    public override void nextDirection() {
        base.nextDirection();
        this.changedDirection = true;
    }
}

