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
// package org.allbinary.logic.system.security.licensing
// import org.allbinary.game.layer.hud.event.GameNotificationEvent
// import org.allbinary.game.layer.hud.event.GameNotificationEventHandler
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.media.audio.ErrorSound
// import org.allbinary.media.audio.PrimaryPlayerQueueFactory

public class LockedFeatureNotificationUtil : JObject {
    private static LockedFeatureNotificationUtil? instance;
    private static bool staticSet_instance = false;
    private static LockedFeatureNotificationUtil staticGet_instance() {
        if (!LockedFeatureNotificationUtil.staticSet_instance) {
            LockedFeatureNotificationUtil.staticSet_instance = true;
            LockedFeatureNotificationUtil.instance = new LockedFeatureNotificationUtil();
        }
        return LockedFeatureNotificationUtil.instance;
    }
    private GameNotificationEvent gameNotificationEvent;

    // Java field initializers run after the base constructor
    private void initFieldsLockedFeatureNotificationUtil() {
    this.gameNotificationEvent = new GameNotificationEvent(this, LicenseStrings.getInstance().LOCKED, SmallIntegerSingletonFactory.getInstance().getAt(3), BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE_);
    }

    public LockedFeatureNotificationUtil() {
        base();
        this.initFieldsLockedFeatureNotificationUtil();
    }
    

    public static LockedFeatureNotificationUtil getInstance() {
        return LockedFeatureNotificationUtil.staticGet_instance();
    }
    

    public virtual void fire() {
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance());
        GameNotificationEventHandler.getInstance().fireEvent(this.gameNotificationEvent);
    }
    

    public virtual void fireWithColor(BasicColor basicColor) {
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance());
        this.gameNotificationEvent.setBasicColorP(basicColor);
        GameNotificationEventHandler.getInstance().fireEvent(this.gameNotificationEvent);
    }
}

