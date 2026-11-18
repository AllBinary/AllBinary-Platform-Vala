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
// package org.allbinary.game.score
// import org.allbinary.logic.math.SmallIntegerSingletonFactory

public class Scoreable : JObject, ScoreableInterface {
    public static int32?? ID;
    private static bool staticSet_ID = false;
    public static int32? staticGet_ID() {
        if (!Scoreable.staticSet_ID) {
            Scoreable.staticSet_ID = true;
            Scoreable.ID = SmallIntegerSingletonFactory.getInstance().getAt(3);
        }
        return Scoreable.ID;
    }
    private int32 points;

    // Java field initializers run after the base constructor
    private void initFieldsScoreable() {
    
    }
    

    public Scoreable(int32 points) {
        base();
        this.initFieldsScoreable();
        this.points = points;
    }
    

    public virtual void addPoints(int32 points) {
        this.points += points;
    }
    

    public virtual void removePoints(int32 points) {
        this.points -= points;
    }
    

    public virtual void setPoints(int32 points) {
        this.points = points;
    }
    

    public virtual int32 getPoints() {
        return this.points;
    }
}

