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
public class SelectSound : CompositeSound {
    private static Sound? soundInterface;
    private static bool staticSet_soundInterface = false;
    private static Sound staticGet_soundInterface() {
        if (!SelectSound.staticSet_soundInterface) {
            SelectSound.staticSet_soundInterface = true;
            SelectSound.soundInterface = new SelectSound();
        }
        return SelectSound.soundInterface;
    }
    

    public SelectSound() {
        base("resource:/wav/select.wav");
    }
    

    public static Sound getInstance() {
        return SelectSound.staticGet_soundInterface();
    }
}

