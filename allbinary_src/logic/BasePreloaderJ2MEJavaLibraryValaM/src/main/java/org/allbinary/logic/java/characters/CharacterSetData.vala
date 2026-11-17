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
// package org.allbinary.logic.java.characters

public class CharacterSetData : JObject {
    private static CharacterSetData? instance;
    private static bool staticSet_instance = false;
    private static CharacterSetData staticGet_instance() {
        if (!CharacterSetData.staticSet_instance) {
            CharacterSetData.staticSet_instance = true;
            CharacterSetData.instance = new CharacterSetData();
        }
        return CharacterSetData.instance;
    }
    public string US_ASCII;
    public string ISO_8859_1;
    public string UTF_8;
    public string UTF_16;
    public string UTF_16BE;
    public string UTF_16LE;

    // Java field initializers run after the base constructor
    private void initFieldsCharacterSetData() {
    this.US_ASCII = "US-ASCII";
    this.ISO_8859_1 = "ISO-8859-1";
    this.UTF_8 = "UTF-8";
    this.UTF_16 = "UTF-16";
    this.UTF_16BE = "UTF-16BE";
    this.UTF_16LE = "UTF-16LE";
    }
    

    public static CharacterSetData getInstance() {
        return CharacterSetData.staticGet_instance();
    }
    

    public CharacterSetData() {
        base();
        this.initFieldsCharacterSetData();
    }
}

