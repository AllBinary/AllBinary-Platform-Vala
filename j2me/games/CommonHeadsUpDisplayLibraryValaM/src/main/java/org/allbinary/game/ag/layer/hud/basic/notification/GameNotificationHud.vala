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
// package org.allbinary.game.ag.layer.hud.basic.notification
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.graphics.hud.BasicHud
// import org.allbinary.game.graphics.hud.BasicHudFactory
// import org.allbinary.game.layer.hud.event.GameNotificationEvent
// import org.allbinary.game.layer.hud.event.GameNotificationListenerInterface
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings

public class GameNotificationHud : BasicHud, GameNotificationListenerInterface, EventListenerInterface {
    public static GameNotificationHud? NULL_GAME_NOTIFICATION;
    private static bool staticSet_NULL_GAME_NOTIFICATION = false;
    public static GameNotificationHud staticGet_NULL_GAME_NOTIFICATION() {
        if (!GameNotificationHud.staticSet_NULL_GAME_NOTIFICATION) {
            GameNotificationHud.staticSet_NULL_GAME_NOTIFICATION = true;
            GameNotificationHud.NULL_GAME_NOTIFICATION = new GameNotificationHud(BasicHudFactory.getInstance().TOPCENTER, BasicHudFactory.getInstance().HORIZONTAL, 0, BasicColorFactory.getInstance().RED);
        }
        return GameNotificationHud.NULL_GAME_NOTIFICATION;
    }
    private string METHOD_NAME;
    private GameNotificationEvent lastGameNotificationEvent;

    // Java field initializers run after the base constructor
    private void initFieldsGameNotificationHud() {
    this.METHOD_NAME = "onGameNotificationEvent";
    this.lastGameNotificationEvent = GameNotification.NULL_GAME_NOTIFICATION_EVENT;
    }
    

    public GameNotificationHud(int32 location, int32 direction, int32 bufferZone, BasicColor basicColor) {
        base(location, direction, bufferZone, basicColor);
        this.initFieldsGameNotificationHud();
    }
    

    public override void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void onGameNotificationEvent(GameNotificationEvent gameNotificationEvent) {
        if (this.lastGameNotificationEvent != gameNotificationEvent) {
            this.lastGameNotificationEvent = gameNotificationEvent;
            this.logUtil.putF(gameNotificationEvent.getString(), this, this.METHOD_NAME);
        }
        this.add(gameNotificationEvent.getString(), gameNotificationEvent.getSeconds(), gameNotificationEvent.getBasicColorP(), gameNotificationEvent.getPermanent());
    }
    

    public virtual void add(string string, int32? seconds, BasicColor basicColor, bool permanent) {
    }
    

    public virtual void processTick() {
    }
    

    public virtual void paint(Graphics graphics) {
    }
    

    public virtual void clear() {
    }
}

