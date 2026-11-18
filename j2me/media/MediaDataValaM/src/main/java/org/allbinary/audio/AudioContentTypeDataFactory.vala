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
// package org.allbinary.audio

public class AudioContentTypeDataFactory : JObject {
    private static AudioContentTypeDataFactory? instance;
    private static bool staticSet_instance = false;
    private static AudioContentTypeDataFactory staticGet_instance() {
        if (!AudioContentTypeDataFactory.staticSet_instance) {
            AudioContentTypeDataFactory.staticSet_instance = true;
            AudioContentTypeDataFactory.instance = new AudioContentTypeDataFactory();
        }
        return AudioContentTypeDataFactory.instance;
    }
    public AudioContentTypeData MIME_AUDIO_TONE;
    public AudioContentTypeData MIME_AUDIO_AMR;
    public AudioContentTypeData MIME_AUDIO_AMR_WB;
    public AudioContentTypeData MIME_AUDIO_WAV;
    public AudioContentTypeData MIME_AUDIO_MIDI;
    public AudioContentTypeData MIME_AUDIO_SP_MIDI;

    // Java field initializers run after the base constructor
    private void initFieldsAudioContentTypeDataFactory() {
    this.MIME_AUDIO_TONE = new AudioContentTypeData("audio/x-tone-seq");
    this.MIME_AUDIO_AMR = new AudioContentTypeData("audio/amr");
    this.MIME_AUDIO_AMR_WB = new AudioContentTypeData("audio/amr-wb");
    this.MIME_AUDIO_WAV = new AudioContentTypeData("audio/x-wav");
    this.MIME_AUDIO_MIDI = new AudioContentTypeData("audio/midi");
    this.MIME_AUDIO_SP_MIDI = new AudioContentTypeData("audio/sp-midi");
    }
    

    public static AudioContentTypeDataFactory getInstance() {
        return AudioContentTypeDataFactory.staticGet_instance();
    }
    

    public AudioContentTypeDataFactory() {
        base();
        this.initFieldsAudioContentTypeDataFactory();
    }
}

