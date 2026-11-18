/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// import org.allbinary.logic.string.StringUtil

public class NoSound : Sound {
    private static NoSound? instance;
    private static bool staticSet_instance = false;
    private static NoSound staticGet_instance() {
        if (!NoSound.staticSet_instance) {
            NoSound.staticSet_instance = true;
            NoSound.instance = new NoSound();
        }
        return NoSound.instance;
    }
    

    public static NoSound getInstance() {
        return NoSound.staticGet_instance();
    }
    

    public NoSound() {
        base(StringUtil.getInstance().EMPTY_STRING);
        this.setPlayerP(NoPlayer.NO_PLAYER);
    }
}

