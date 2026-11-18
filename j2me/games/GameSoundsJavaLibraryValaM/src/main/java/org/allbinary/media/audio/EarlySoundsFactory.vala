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

public class EarlySoundsFactory : BaseSoundsFactory {
    private static EarlySoundsFactory? instance;
    private static bool staticSet_instance = false;
    private static EarlySoundsFactory staticGet_instance() {
        if (!EarlySoundsFactory.staticSet_instance) {
            EarlySoundsFactory.staticSet_instance = true;
            EarlySoundsFactory.instance = new EarlySoundsFactory();
        }
        return EarlySoundsFactory.instance;
    }

    public EarlySoundsFactory() {
        base();
    }
    

    public override Sound[] getSoundInterfaceArray() {
        Sound[] soundInterfaceArray = new Sound[2];
        int32 index = 0;
        soundInterfaceArray[index++] = SelectSound.getInstance();
        soundInterfaceArray[index++] = ErrorSound.getInstance();
        return soundInterfaceArray;
    }
    

    public static EarlySoundsFactory getInstance() {
        return EarlySoundsFactory.staticGet_instance();
    }
}

