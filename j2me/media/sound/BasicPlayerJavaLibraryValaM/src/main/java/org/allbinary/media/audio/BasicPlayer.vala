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
// import javax.microedition.media.MediaException
// import javax.microedition.media.Player
// import javax.microedition.media.PlayerListener
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

//BasicPlayerJavaLibrary
public class BasicPlayer : JObject, Player, Controllable2 {
    public static string? CONTROL_TYPE = "ToneControl";
    public CommonStrings commonStrings;
    public BasicArrayList listenersList;
    public int32 stateP;
    public int32 loopCountP;

    // Java field initializers run after the base constructor
    private void initFieldsBasicPlayer() {
    this.commonStrings = CommonStrings.getInstance();
    this.listenersList = new BasicArrayListD();
    this.stateP = 0;
    this.loopCountP = 0;
    }
    

    public BasicPlayer() {
        base();
        this.initFieldsBasicPlayer();
        this.setLoopCount(0);
        this.setState(Player.UNREALIZED);
    }
    

    public virtual string getContentType() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public virtual Control getControl(string controlType) {
        return new NullControl();
    }
    

    public virtual Control[] getControls() {
        return new Control[0];
    }
    

    public virtual void close() {
    }
    

    public virtual void addPlayerListener(PlayerListener playerListener) {
        if (!this.listenersList.contains(playerListener)) {
            this.listenersList.add(playerListener);
        }
    }
    

    public virtual void removePlayerListener(PlayerListener playerListener) {
        this.listenersList.remove(playerListener);
    }
    

    public virtual int32 getState() {
        return this.stateP;
    }
    

    public virtual void setState(int32 state) {
        this.stateP = state;
    }
    

    public virtual int64 getDuration() {
        return 0;
    }
    

    public virtual int64 getMediaTime() {
        return 0;
    }
    

    public virtual void deallocate() {
    }
    

    public virtual void prefetch() {
    }
    

    public virtual void realize() {
    }
    

    public virtual void setLoopCount(int32 count) {
        this.loopCountP = count;
    }
    

    public virtual int32 getLoopCount() {
        return this.loopCountP;
    }
    

    public virtual int64 setMediaTime(int64 now) {
        return 0;
    }
    

    public virtual void start() {
        this.setState(Player.STARTED);
    }
    

    public virtual void stop() {
        this.setState(Player.PREFETCHED);
    }
    

    public virtual void setVolume(int32 leftVolume, int32 rightVolume) {
    }
}

