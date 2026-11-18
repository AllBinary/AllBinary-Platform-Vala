/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

public class SoundStrings : JObject {
    private static SoundStrings? instance;
    private static bool staticSet_instance = false;
    private static SoundStrings staticGet_instance() {
        if (!SoundStrings.staticSet_instance) {
            SoundStrings.staticSet_instance = true;
            SoundStrings.instance = new SoundStrings();
        }
        return SoundStrings.instance;
    }
    public string STOP_ALL;
    public string CLOSE_ALL;
    public string SOUND;
    public string INIT_SOUND;
    public string STOPPING_SOUND;
    public string CLOSING_SOUND;

    // Java field initializers run after the base constructor
    private void initFieldsSoundStrings() {
    this.STOP_ALL = "stopAll";
    this.CLOSE_ALL = "closeAll";
    this.SOUND = " Sound: ";
    this.INIT_SOUND = "Initializing Sound: ";
    this.STOPPING_SOUND = "Stopping Sound: ";
    this.CLOSING_SOUND = "Closing Sound: ";
    }

    public SoundStrings() {
        base();
        this.initFieldsSoundStrings();
    }
    

    public static SoundStrings getInstance() {
        return SoundStrings.staticGet_instance();
    }
}

