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
// import org.allbinary.game.ag.ai.InputProbability
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.time.GameTickTimeDelayHelperFactory

public class BasicRandomAI : BasicAI {
    private int32 i_random;
    private InputProbability inputProbability;
    private Visitor visitor;
    private int32[] keyArray;
    private MyRandomFactory myRandomFactory;

    // Java field initializers run after the base constructor
    private void initFieldsBasicRandomAI() {
    this.i_random = 0;
    
    
    this.keyArray = new int32[] {Canvas.UP, Canvas.DOWN, Canvas.LEFT, Canvas.RIGHT, Canvas.KEY_NUM1, Canvas.KEY_NUM7, Canvas.KEY_NUM9};
    this.myRandomFactory = MyRandomFactory.getInstance();
    }
    

    public BasicRandomAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput, InputProbability inputProbability, Visitor visitor) {
        base(ownerLayerInterface, gameInput);
        this.initFieldsBasicRandomAI();
        this.inputProbability = inputProbability;
        this.visitor = visitor;
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.inputProbability.getTimeDelayHelper().isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            this.i_random = this.myRandomFactory.getAbsoluteNextInt(this.inputProbability.getMax());
            bool repeat = false;
            int32?[] repeatLikelyhoodIntegerArray = this.inputProbability.getRepeatLikelyhoodIntegerArray();
            if (this.getLastKey() != -1 && repeatLikelyhoodIntegerArray[this.getLastKey()].intValue() >= this.i_random) {
                repeat = true;
            }
            if (!repeat) {
                int32?[,] likelyhoodIntegerArray = this.inputProbability.getLikelyhoodIntegerArray();
                this.i_random = this.myRandomFactory.getAbsoluteNextInt(this.inputProbability.getMax());
                int32 size = this.keyArray.length;
                int32?[] likelyhoodIntegerKeyArray = null;
                for (int32 index = 0; index < size; index++) {
                    int32 key = this.keyArray[index];
                    likelyhoodIntegerKeyArray = likelyhoodIntegerArray[key];
                    if (likelyhoodIntegerArray.length[0] >= key && likelyhoodIntegerKeyArray[0] != null) {
                        if (this.i_random >= likelyhoodIntegerKeyArray[0].intValue() && this.i_random < likelyhoodIntegerKeyArray[1].intValue()) {
                            this.setLastKey(key);
                            break;
                        }
                    }
                }
            }
            this.visitor.visit(this);
        }
    }
}

