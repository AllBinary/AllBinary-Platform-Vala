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

public class ErrorSound : CompositeSound {
    private static Sound? soundInterface;
    private static bool staticSet_soundInterface = false;
    private static Sound staticGet_soundInterface() {
        if (!ErrorSound.staticSet_soundInterface) {
            ErrorSound.staticSet_soundInterface = true;
            ErrorSound.soundInterface = new ErrorSound();
        }
        return ErrorSound.soundInterface;
    }
    

    public ErrorSound() {
        base("resource:/wav/error.wav");
    }
    

    public static Sound getInstance() {
        return ErrorSound.staticGet_soundInterface();
    }
}

