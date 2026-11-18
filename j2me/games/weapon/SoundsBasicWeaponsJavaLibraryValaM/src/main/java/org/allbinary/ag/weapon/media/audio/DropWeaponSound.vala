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

public class DropWeaponSound : CompositeSound {
    private static Sound? soundInterface;
    private static bool staticSet_soundInterface = false;
    private static Sound staticGet_soundInterface() {
        if (!DropWeaponSound.staticSet_soundInterface) {
            DropWeaponSound.staticSet_soundInterface = true;
            DropWeaponSound.soundInterface = new DropWeaponSound();
        }
        return DropWeaponSound.soundInterface;
    }
    

    public DropWeaponSound() {
        base("resource:/wav/mine.wav");
    }
    

    public static Sound getInstance() {
        return DropWeaponSound.staticGet_soundInterface();
    }
}

