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
// import javax.microedition.media.Control
// import org.allbinary.logic.string.StringUtil

public class NoPlayer : BasicPlayer {
    public static NoPlayer? NO_PLAYER;
    private static bool staticSet_NO_PLAYER = false;
    public static NoPlayer staticGet_NO_PLAYER() {
        if (!NoPlayer.staticSet_NO_PLAYER) {
            NoPlayer.staticSet_NO_PLAYER = true;
            NoPlayer.NO_PLAYER = new NoPlayer();
        }
        return NoPlayer.NO_PLAYER;
    }
    

    public NoPlayer() {
        base();
    }
    

    public override void close() {
    }
    

    public override string getContentType() {
        return StringUtil.getInstance().NULL_STRING;
    }
    

    public override Control getControl(string controlType) {
        return new NullControl();
    }
    

    public override Control[] getControls() {
        return new Control[0];
    }
}

