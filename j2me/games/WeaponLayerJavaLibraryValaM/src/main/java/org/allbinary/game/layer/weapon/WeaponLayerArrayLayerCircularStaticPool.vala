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
// package org.allbinary.game.layer.weapon
// import org.allbinary.util.CircularIndexUtil

public class WeaponLayerArrayLayerCircularStaticPool : JObject {
    private static WeaponLayerArrayLayerCircularStaticPool? instance;
    private static bool staticSet_instance = false;
    private static WeaponLayerArrayLayerCircularStaticPool staticGet_instance() {
        if (!WeaponLayerArrayLayerCircularStaticPool.staticSet_instance) {
            WeaponLayerArrayLayerCircularStaticPool.staticSet_instance = true;
            WeaponLayerArrayLayerCircularStaticPool.instance = new WeaponLayerArrayLayerCircularStaticPool();
        }
        return WeaponLayerArrayLayerCircularStaticPool.instance;
    }
    private int32 MAX_;
    private CircularIndexUtil circularIndexUtil;
    private WeaponLayer[,] WEAPONLAYER_ARRAY;
    private WeaponLayer[,] TWO_WEAPONLAYER_ARRAY;
    private WeaponLayer[,] THREE_WEAPONLAYER_ARRAY;

    // Java field initializers run after the base constructor
    private void initFieldsWeaponLayerArrayLayerCircularStaticPool() {
    this.MAX_ = 5;
    this.circularIndexUtil = CircularIndexUtil.createInstance(this.MAX_);
    this.WEAPONLAYER_ARRAY = null;
    this.TWO_WEAPONLAYER_ARRAY = null;
    this.THREE_WEAPONLAYER_ARRAY = null;
    }

    public WeaponLayerArrayLayerCircularStaticPool() {
        base();
        this.initFieldsWeaponLayerArrayLayerCircularStaticPool();
    }
    

    public static WeaponLayerArrayLayerCircularStaticPool getInstance() {
        return WeaponLayerArrayLayerCircularStaticPool.staticGet_instance();
    }
    

    public virtual void init() {
        WeaponLayer[,] WEAPONLAYER_ARRAY = new WeaponLayer[this.MAX_ * 2, 0];
        WeaponLayer[,] TWO_WEAPONLAYER_ARRAY = new WeaponLayer[this.MAX_, 0];
        WeaponLayer[,] THREE_WEAPONLAYER_ARRAY = new WeaponLayer[this.MAX_, 0];
        for (int32 index = 0; index < this.MAX_; index++) {
            WEAPONLAYER_ARRAY[index] = new WeaponLayer[1];
            TWO_WEAPONLAYER_ARRAY[index] = new WeaponLayer[2];
            THREE_WEAPONLAYER_ARRAY[index] = new WeaponLayer[3];
        }
        this.WEAPONLAYER_ARRAY = WEAPONLAYER_ARRAY;
        this.TWO_WEAPONLAYER_ARRAY = TWO_WEAPONLAYER_ARRAY;
        this.THREE_WEAPONLAYER_ARRAY = THREE_WEAPONLAYER_ARRAY;
    }
    

    private WeaponLayer[,] getWeaponLayerArrays(int32 size) {
        if (size == 1) {
            return this.WEAPONLAYER_ARRAY;
        } else if (size == 2) {
            return this.TWO_WEAPONLAYER_ARRAY;
        } else if (size == 3) {
            return this.THREE_WEAPONLAYER_ARRAY;
        }
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual WeaponLayer[] getInstanceArray(int32 size) {
        WeaponLayer[] weaponLayerArray = this.getWeaponLayerArrays(size)[this.circularIndexUtil.getIndex()];
        this.circularIndexUtil.next();
        return weaponLayerArray;
    }
}

