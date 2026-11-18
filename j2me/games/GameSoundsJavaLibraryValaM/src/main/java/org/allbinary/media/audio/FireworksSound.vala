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
public class FireworksSound : CompositeSound {
    private static Sound? soundInterface;
    private static bool staticSet_soundInterface = false;
    private static Sound staticGet_soundInterface() {
        if (!FireworksSound.staticSet_soundInterface) {
            FireworksSound.staticSet_soundInterface = true;
            FireworksSound.soundInterface = new FireworksSound();
        }
        return FireworksSound.soundInterface;
    }
    

    public FireworksSound() {
        base("resource:/wav/fireworks.wav");
    }
    

    public static Sound getInstance() {
        return FireworksSound.staticGet_soundInterface();
    }
}

