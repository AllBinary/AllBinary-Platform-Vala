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
// package org.allbinary.game.ag.life

public class Life : JObject, LifeInterface {
    public static Life? NO_LIFE;
    private static bool staticSet_NO_LIFE = false;
    public static Life staticGet_NO_LIFE() {
        if (!Life.staticSet_NO_LIFE) {
            Life.staticSet_NO_LIFE = true;
            Life.NO_LIFE = Life.createLife();
        }
        return Life.NO_LIFE;
    }
    private int16 lives;
    private int16 startLives;
    private int16 maxlives;

    // Java field initializers run after the base constructor
    private void initFieldsLife() {
    
    
    
    }
    

    public static Life createLife() {
        {
            return new Life(((int16) (0)), ((int16) (0)));
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public Life(int16 lives, int16 maxlives) {
        base();
        this.initFieldsLife();
        this.maxlives = maxlives;
        if (lives > this.maxlives) {
            JSystem.fatal(new JException("Exception", "To Many Lives"));
        }
        this.lives = lives;
        this.startLives = lives;
    }
    

    public virtual int16 @get() {
        return this.lives;
    }
    

    public virtual void @set(int16 lives) {
        this.lives = lives;
    }
    

    public virtual void reset() {
        this.lives = this.startLives;
    }
    

    public virtual void add(int16 lives) {
        if (!this.reachedLimit()) {
            if (this.lives + lives <= ((int32) (this.getMaxlives()))) {
                this.lives = ((int16) ((this.lives + lives)));
            } else {
                this.lives = this.getMaxlives();
            }
        }
    }
    

    public virtual bool isAlive() {
        if (((int32) (this.lives)) <= 0) {
            return false;
        } else {
            return true;
        }
    }
    

    public virtual int16 getMaxlives() {
        return this.maxlives;
    }
    

    private bool reachedLimit() {
        if (this.lives > this.maxlives || ((int32) (this.lives)) < 0) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual void deaths(int16 lives) {
        if (!this.reachedLimit()) {
            if (this.lives - lives >= 0) {
                this.lives = ((int16) ((this.lives - lives)));
            } else {
                this.lives = 0;
            }
        }
    }
    

    public virtual int16 getStartLives() {
        return this.startLives;
    }
    

    public virtual void setStartLives(int16 startLives) {
        this.startLives = startLives;
    }
}

