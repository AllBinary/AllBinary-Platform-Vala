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
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

public class WeaponProperties : SimpleWeaponProperties {
    public static WeaponProperties? NULL_WEAPON_PROPERTIES;
    private static bool staticSet_NULL_WEAPON_PROPERTIES = false;
    public static WeaponProperties staticGet_NULL_WEAPON_PROPERTIES() {
        if (!WeaponProperties.staticSet_NULL_WEAPON_PROPERTIES) {
            WeaponProperties.staticSet_NULL_WEAPON_PROPERTIES = true;
            WeaponProperties.NULL_WEAPON_PROPERTIES = new WeaponProperties((int64) 0, (int64) 0, (int64) 0, 0, ((int16) (0)));
        }
        return WeaponProperties.NULL_WEAPON_PROPERTIES;
    }
    private static bool messageSent = false;
    private const string DAMAGE = "Damage: ";
    private const string RANGE = "Range: ";
    private const string RELOAD = "Reload: ";
    private int64 reloadTime;
    private int64 targetingTime;
    private BasicDecimal speed;
    private int64 MAX_;
    private int16 ZERO;

    // Java field initializers run after the base constructor
    private void initFieldsWeaponProperties() {
    this.reloadTime = 0;
    this.targetingTime = 0;
    this.speed = BasicDecimal.ZERO_BIGDECIMAL;
    this.MAX_ = (int64) 10240;
    this.ZERO = 0;
    }
    

    public WeaponProperties(int64 reloadTime, int64 targetingTime, int64 speed, int32 damage, int16 dissipation) {
        base();
        this.initFieldsWeaponProperties();
        if (speed < this.MAX_ && speed != (int64) 0 && !WeaponProperties.messageSent) {
            string MESSAGE = "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ";
            CommonStrings commonStrings = CommonStrings.getInstance();
            PreLogUtil.put(new StringMaker().append(MESSAGE).appendlong(speed).toString(), this, commonStrings.CONSTRUCTOR);
            WeaponProperties.messageSent = true;
        }
        this.setReloadTime(reloadTime);
        this.setTargetingTime(targetingTime);
        this.setDamage(damage);
        this.setDissipation(dissipation);
        this.setSpeed(new BasicDecimal(speed));
        if (dissipation != this.ZERO) {
            int64 unscaledDamage = this.speed.getUnscaled() * ((int64) (damage));
            int32 scaledDissipation = ((int32) (dissipation)) * this.speed.getScaledFactorValue();
            int64 value = (unscaledDamage / ((int64) (scaledDissipation)));
            this.setRange(((int32) ((value * 9))) / 10);
        }
    }
    

    private void setReloadTime(int64 reloadTime) {
        this.reloadTime = reloadTime;
    }
    

    public virtual int64 getReloadTime() {
        return this.reloadTime;
    }
    

    private void setTargetingTime(int64 targetingTime) {
        this.targetingTime = targetingTime;
    }
    

    public virtual int64 getTargetingTime() {
        return this.targetingTime;
    }
    

    public virtual BasicDecimal getSpeed() {
        return this.speed;
    }
    

    public virtual void setSpeed(BasicDecimal speed) {
        this.speed = speed;
    }
    

    public virtual int32 getDamageI(int32 range) {
        return this.getDamage() - ((((int32) (this.getDissipation())) * range) / this.speed.getScaled());
    }
    

    public virtual string[] toStringArray() {
        int32 index = 0;
        string[] stringArray = new string[3];
        StringMaker stringBuffer = new StringMaker();
        stringArray[index++] = stringBuffer.append(WeaponProperties.DAMAGE).appendint(this.getDamage()).toString();
        stringBuffer.@delete(0, stringBuffer.length());
        stringArray[index++] = stringBuffer.append(WeaponProperties.RANGE).appendint(this.getRange()).toString();
        stringBuffer.@delete(0, stringBuffer.length());
        stringArray[index++] = stringBuffer.append(WeaponProperties.RELOAD).appendlong(this.getReloadTime()).toString();
        return stringArray;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(WeaponProperties.DAMAGE).appendint(this.getDamage());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(WeaponProperties.RANGE).appendint(this.getRange());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(WeaponProperties.RELOAD).appendlong(this.getReloadTime());
        return stringBuffer.toString();
    }
}

