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
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.ABHashtable

public class MultiKeyPressesAI : KeyPressesAI {
    private TimeDelayHelper toggleTimeHelper;
    private GameTickTimeDelayHelper gameTickTimeDelayHelper;

    // Java field initializers run after the base constructor
    private void initFieldsMultiKeyPressesAI() {
    this.toggleTimeHelper = new TimeDelayHelper(600);
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    }
    

    public MultiKeyPressesAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(hashtable, ownerLayerInterface, gameInput);
        this.initFieldsMultiKeyPressesAI();
        this.update();
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
    }
    

    private void update() {
        GameInput gameInput = this.getGameInput();
        int32?[] keys = this.keys;
        int32 size = keys.length;
        if (this.isOn()) {
            for (int32 index = 0; index < size; index++) {
                int32 key = keys[index].intValue();
                if (key != -1) {
                    gameInput.add(this.gameKeyEventFactory.getInstanceForKey(this, key));
                }
            }
        } else {
            for (int32 index = 0; index < size; index++) {
                int32 key = keys[index].intValue();
                if (key != -1) {
                    gameInput.addForRemoval(this.gameKeyEventFactory.getInstanceForKey(this, key));
                }
            }
        }
    }
    

    public override void toggle() {
        if (this.toggleTimeHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            base.toggle();
            this.update();
        }
    }
    

    public override void disable() {
        if (this.toggleTimeHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            base.disable();
            this.update();
        }
    }
    

    public override void enable() {
        if (this.toggleTimeHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            base.enable();
            this.update();
        }
    }
}

