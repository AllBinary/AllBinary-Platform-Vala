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
// import org.allbinary.util.BasicArrayList

public interface HighScoresInterface : JObject {
    

    public abstract BasicArrayList getList();
    

    public abstract void addHighScore(HighScore newHighScore);
    

    public abstract int32 getTotal();
    

    public abstract bool isBestScore(HighScore newHighScore);
}

