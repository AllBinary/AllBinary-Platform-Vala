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
// package org.allbinary.media.audio

//Use 8hz16bitmono for most J2ME
public class GameYouLoseSound : CompositeSound {
    private static Sound? soundInterface;
    private static bool staticSet_soundInterface = false;
    private static Sound staticGet_soundInterface() {
        if (!GameYouLoseSound.staticSet_soundInterface) {
            GameYouLoseSound.staticSet_soundInterface = true;
            GameYouLoseSound.soundInterface = new GameYouLoseSound();
        }
        return GameYouLoseSound.soundInterface;
    }
    

    public GameYouLoseSound() {
        base("resource:/wav/youlose.wav");
    }
    

    public static Sound getInstance() {
        return GameYouLoseSound.staticGet_soundInterface();
    }
}

