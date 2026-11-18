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

public class NoScoreable : Scoreable {
    private static NoScoreable? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static NoScoreable staticGet_SINGLETON() {
        if (!NoScoreable.staticSet_SINGLETON) {
            NoScoreable.staticSet_SINGLETON = true;
            NoScoreable.SINGLETON = new NoScoreable();
        }
        return NoScoreable.SINGLETON;
    }
    

    public static NoScoreable getInstance() {
        return NoScoreable.staticGet_SINGLETON();
    }
    

    public NoScoreable() {
        base(0);
    }
    

    public override void addPoints(int32 points) {
    }
    

    public override void removePoints(int32 points) {
    }
}

