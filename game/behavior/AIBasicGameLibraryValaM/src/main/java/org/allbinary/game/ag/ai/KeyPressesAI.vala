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
// import org.allbinary.util.HashtableUtil
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.util.ABHashtable

public class KeyPressesAI : BasicAI {
    private bool on;
    public int32?[] keys;

    // Java field initializers run after the base constructor
    private void initFieldsKeyPressesAI() {
    this.on = true;
    
    }
    

    public KeyPressesAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(ownerLayerInterface, gameInput);
        this.initFieldsKeyPressesAI();
        this.keys = new int32?[hashtable.size()];
        JObject[] objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable);
        int32 size = objectArray.length;
        for (int32 index = 0; index < size; index++) {
            this.keys[index] = JNumber.unboxInt(hashtable.@get(((JObject) objectArray[index])));
        }
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.on) {
            for (int32 index = 0; index < this.keys.length; index++) {
                base.processKeyAI(this.keys[index].intValue());
            }
        }
    }
    

    public virtual void toggle() {
        if (this.isOn()) {
            this.setOn(false);
        } else {
            this.setOn(true);
        }
    }
    

    public virtual void disable() {
        this.setOn(false);
    }
    

    public virtual void enable() {
        this.setOn(true);
    }
    

    private void setOn(bool on) {
        this.on = on;
    }
    

    public virtual bool isOn() {
        return this.on;
    }
}

