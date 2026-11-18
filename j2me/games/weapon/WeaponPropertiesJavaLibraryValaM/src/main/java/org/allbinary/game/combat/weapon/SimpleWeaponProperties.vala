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
// package org.allbinary.game.combat.weapon

public class SimpleWeaponProperties : JObject {
    private int32 damage;
    private int16 dissipation;
    private int32 range;

    // Java field initializers run after the base constructor
    private void initFieldsSimpleWeaponProperties() {
    this.damage = 0;
    this.dissipation = 0;
    this.range = 0;
    }

    public SimpleWeaponProperties() {
        base();
        this.initFieldsSimpleWeaponProperties();
    }
    

    public virtual void @set(SimpleWeaponProperties simpleWeaponProperties) {
        this.setDamage(simpleWeaponProperties.getDamage());
        this.setDissipation(simpleWeaponProperties.getDissipation());
        this.setRange(simpleWeaponProperties.getRange());
    }
    

    public virtual void setDamage(int32 damage) {
        this.damage = damage;
    }
    

    public virtual int32 getDamage() {
        return this.damage;
    }
    

    public virtual void setDissipation(int16 dissipation) {
        this.dissipation = dissipation;
    }
    

    public virtual int16 getDissipation() {
        return this.dissipation;
    }
    

    public virtual int32 getRange() {
        return this.range;
    }
    

    public virtual void setRange(int32 range) {
        this.range = range;
    }
}

