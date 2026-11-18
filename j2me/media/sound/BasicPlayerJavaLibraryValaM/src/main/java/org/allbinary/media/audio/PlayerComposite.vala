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
// import javax.microedition.media.Controllable
// import javax.microedition.media.Player
// import javax.microedition.media.PlayerListener
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

//BasicPlayer
public class PlayerComposite : JObject, Controllable, Player {
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    private Player player;
    private TimeDelayHelper timeElapsedHelper;
    private GameTickTimeDelayHelper gameTickTimeDelayHelper;

    // Java field initializers run after the base constructor
    private void initFieldsPlayerComposite() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    this.timeElapsedHelper = new TimeDelayHelper(0);
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    }
    

    public PlayerComposite(Player player, int32 repeatTime) {
        base();
        this.initFieldsPlayerComposite();
        this.player = player;
        this.timeElapsedHelper.delay = repeatTime;
    }
    

    public virtual void addPlayerListener(PlayerListener playerListener) {
        this.player.addPlayerListener(playerListener);
    }
    

    public virtual void removePlayerListener(PlayerListener playerListener) {
        this.player.removePlayerListener(playerListener);
    }
    

    public virtual void close() {
        this.player.close();
    }
    

    public virtual void deallocate() {
        this.player.deallocate();
    }
    

    public virtual string getContentType() {
        return this.player.getContentType();
    }
    

    public virtual int64 getDuration() {
        return this.player.getDuration();
    }
    

    public virtual int64 getMediaTime() {
        return this.player.getMediaTime();
    }
    

    public virtual void prefetch() {
        {
            this.player.prefetch();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void realize() {
        {
            this.player.realize();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual int32 getState() {
        return this.player.getState();
    }
    

    public virtual void setLoopCount(int32 count) {
        this.player.setLoopCount(count);
    }
    

    public virtual int64 setMediaTime(int64 now) {
        {
            return this.player.setMediaTime(now);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void start() {
        {
            if (this.timeElapsedHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
                this.player.start();
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void stop() {
        {
            this.player.stop();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual Control getControl(string controlType) {
        return this.player.getControl(controlType);
    }
    

    public virtual Control[] getControls() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual void setVolume(int32 leftVolume, int32 rightVolume) {
        Controllable2 controllable2 = (((Controllable2) this.player));
        controllable2.setVolume(leftVolume, rightVolume);
    }
    

    public virtual Player getPlayerP() {
        return this.player;
    }
}

