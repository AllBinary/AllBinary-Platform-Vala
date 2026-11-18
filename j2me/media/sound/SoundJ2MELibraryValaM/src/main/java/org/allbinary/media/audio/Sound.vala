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
// import javax.microedition.media.Player
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.string.CommonStrings

public class Sound : JObject, SoundInterface, Runnable {
    private string resource;
    public Player player;

    // Java field initializers run after the base constructor
    private void initFieldsSound() {
    
    this.player = NoPlayer.NO_PLAYER;
    }
    

    public Sound(string resource) {
        base();
        this.initFieldsSound();
        this.resource = resource;
    }
    

    public virtual string getResource() {
        return this.resource;
    }
    

    public virtual Player getPlayerP() {
        return this.player;
    }
    

    public virtual void setPlayerP(Player player) {
        this.player = player;
    }
    

    public virtual void init() {
    }
    

    public virtual int32 getDuration() {
        return -1;
    }
    

    public virtual void run() {
        {
            this.player.start();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

