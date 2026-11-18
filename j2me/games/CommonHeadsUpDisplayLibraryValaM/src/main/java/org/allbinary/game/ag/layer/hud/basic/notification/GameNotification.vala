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
// import org.allbinary.game.layer.hud.event.GameNotificationEvent
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class GameNotification : JObject {
    public static GameNotificationEvent? NULL_GAME_NOTIFICATION_EVENT;
    private static bool staticSet_NULL_GAME_NOTIFICATION_EVENT = false;
    public static GameNotificationEvent staticGet_NULL_GAME_NOTIFICATION_EVENT() {
        if (!GameNotification.staticSet_NULL_GAME_NOTIFICATION_EVENT) {
            GameNotification.staticSet_NULL_GAME_NOTIFICATION_EVENT = true;
            GameNotification.NULL_GAME_NOTIFICATION_EVENT = new GameNotificationEvent(NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, 0, BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE_);
        }
        return GameNotification.NULL_GAME_NOTIFICATION_EVENT;
    }
    public BasicArrayList stringList;
    public BasicArrayList timeList;
    public BasicArrayList colorList;

    // Java field initializers run after the base constructor
    private void initFieldsGameNotification() {
    this.stringList = new BasicArrayListD();
    this.timeList = new BasicArrayListD();
    this.colorList = new BasicArrayListD();
    }

    public GameNotification() {
        base();
        this.initFieldsGameNotification();
    }
    

    public virtual void add(string string, int32? seconds, BasicColor basicColor) {
        if (!this.stringList.contains(JString.box(string))) {
            this.stringList.add(JString.box(string));
            this.timeList.add(JNumber.boxInt(seconds));
            this.colorList.add(basicColor);
        }
    }
    

    public virtual void clear() {
        this.stringList.clear();
        this.timeList.clear();
        this.colorList.clear();
    }
    

    public virtual int32 getSize() {
        return this.stringList.size();
    }
}

