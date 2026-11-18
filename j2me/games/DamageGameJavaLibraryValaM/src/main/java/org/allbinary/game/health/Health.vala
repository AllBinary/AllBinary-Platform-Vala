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
// package org.allbinary.game.health
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps

public class Health : JObject, HealthInterface {
    public static Health? NULL_HEALTH;
    private static bool staticSet_NULL_HEALTH = false;
    public static Health staticGet_NULL_HEALTH() {
        if (!Health.staticSet_NULL_HEALTH) {
            Health.staticSet_NULL_HEALTH = true;
            Health.NULL_HEALTH = new Health(0);
        }
        return Health.NULL_HEALTH;
    }
    public const string NAME = "Health Resource";
    private const string HEALTH_LABEL = "Health: ";
    private const string MAX_HEALTH_LABEL = " Max: ";
    private int32 health;
    private int32 maxHealth;
    private HealthListenerInterface healthListenerInterface;

    // Java field initializers run after the base constructor
    private void initFieldsHealth() {
    this.health = 0;
    this.maxHealth = 0;
    this.healthListenerInterface = NullHealthListener.NULL_HEALTH_LISTENER;
    }
    

    public Health(int32 maxHealth) {
        base();
        this.initFieldsHealth();
        this.setMaxHealth(maxHealth);
        this.setHealth(maxHealth);
    }
    

    public virtual void heal(int32 ahealth) {
        int32 newHealth = this.getHealth() + ahealth;
        if (newHealth > this.getMaxHealth()) {
            this.setHealth(this.getMaxHealth());
        } else {
            this.setHealth(newHealth);
        }
    }
    

    public virtual void healMax() {
        this.setHealth(this.getMaxHealth());
    }
    

    public virtual bool isDamaged() {
        if (this.getHealth() != this.getMaxHealth()) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual void damage(int32 ahealth) {
        if (ahealth < 0) {
            StringMaker stringBuffer = new StringMaker();
            stringBuffer.append("******* Trying to heal when damaging. Damage: ");
            stringBuffer.appendint(ahealth);
            stringBuffer.append(CommonSeps.getInstance().SPACE);
            stringBuffer.append(this.toString());
            ForcedLogUtil.log(stringBuffer.toString(), this);
            return;
        }
        int32 health = this.getHealth() - ahealth;
        this.setHealth(health);
    }
    

    public virtual bool isAlive() {
        if (this.getHealth() <= 0) {
            return false;
        } else {
            return true;
        }
    }
    

    public virtual int32 getMaxHealth() {
        return this.maxHealth;
    }
    

    public virtual void setMaxHealth(int32 maxHealth) {
        this.maxHealth = maxHealth;
    }
    

    public virtual void setHealth(int32 health) {
        if (health > this.getMaxHealth()) {
            this.health = this.getMaxHealth();
        } else if (health < 0) {
            this.health = 0;
        } else {
            this.health = health;
        }
        if (this.healthListenerInterface != null) {
            this.healthListenerInterface.onHealthChange();
        }
    }
    

    public virtual int32 getHealth() {
        return this.health;
    }
    

    public virtual void addListener(HealthListenerInterface healthGraphic) {
        this.healthListenerInterface = healthGraphic;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(Health.HEALTH_LABEL);
        stringBuffer.appendint(this.health);
        stringBuffer.append(Health.MAX_HEALTH_LABEL);
        stringBuffer.appendint(this.maxHealth);
        return stringBuffer.toString();
    }
}

