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
// package org.allbinary.game.input
// import org.allbinary.game.layer.hud.event.GameNotificationEvent
// import org.allbinary.game.layer.hud.event.GameNotificationEventHandler
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.media.audio.ErrorSound
// import org.allbinary.media.audio.PrimaryPlayerQueueFactory
// import org.allbinary.media.audio.SelectSound

public class TextNotificationUtil : JObject {
    private static TextNotificationUtil? instance;
    private static bool staticSet_instance = false;
    private static TextNotificationUtil staticGet_instance() {
        if (!TextNotificationUtil.staticSet_instance) {
            TextNotificationUtil.staticSet_instance = true;
            TextNotificationUtil.instance = new TextNotificationUtil();
        }
        return TextNotificationUtil.instance;
    }
    private int32? TWO;
    private bool FALSE_;
    private GameNotificationEventHandler gameNotificationEventHandler;

    // Java field initializers run after the base constructor
    private void initFieldsTextNotificationUtil() {
    this.TWO = SmallIntegerSingletonFactory.getInstance().getAt(2);
    this.FALSE_ = BooleanFactory.getInstance().FALSE_;
    this.gameNotificationEventHandler = GameNotificationEventHandler.getInstance();
    }

    public TextNotificationUtil() {
        base();
        this.initFieldsTextNotificationUtil();
    }
    

    public static TextNotificationUtil getInstance() {
        return TextNotificationUtil.staticGet_instance();
    }
    

    public virtual void fireError(string message) {
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance());
        this.fire(message);
    }
    

    public virtual void fireNew(string message) {
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
        this.fire(message);
    }
    

    public virtual void fireSuccess(string message) {
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
        this.fire(message);
    }
    

    public virtual void fire(string message) {
        GameNotificationEvent gameNotificationEvent = new GameNotificationEvent(this, message, this.TWO, BasicColorFactory.getInstance().RED, this.FALSE_);
        this.gameNotificationEventHandler.fireEvent(gameNotificationEvent);
    }
}

