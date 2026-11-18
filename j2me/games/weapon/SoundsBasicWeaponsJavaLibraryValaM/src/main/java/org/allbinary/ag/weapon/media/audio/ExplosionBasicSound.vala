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
// package org.allbinary.ag.weapon.media.audio
// import org.allbinary.media.audio.CompositeSound
// import org.allbinary.media.audio.Sound

public class ExplosionBasicSound : CompositeSound {
    private static Sound? soundInterface;
    private static bool staticSet_soundInterface = false;
    private static Sound staticGet_soundInterface() {
        if (!ExplosionBasicSound.staticSet_soundInterface) {
            ExplosionBasicSound.staticSet_soundInterface = true;
            ExplosionBasicSound.soundInterface = new ExplosionBasicSound();
        }
        return ExplosionBasicSound.soundInterface;
    }
    

    public ExplosionBasicSound() {
        base("resource:/wav/explosion.wav");
    }
    

    public static Sound getInstance() {
        return ExplosionBasicSound.staticGet_soundInterface();
    }
}

