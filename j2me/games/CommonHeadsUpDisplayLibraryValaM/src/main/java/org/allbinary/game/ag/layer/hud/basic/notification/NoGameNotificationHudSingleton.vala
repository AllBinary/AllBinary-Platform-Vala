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
// import org.allbinary.game.graphics.hud.BasicHudFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class NoGameNotificationHudSingleton : JObject {
    private static NoGameNotificationHudSingleton? instance;
    private static bool staticSet_instance = false;
    private static NoGameNotificationHudSingleton staticGet_instance() {
        if (!NoGameNotificationHudSingleton.staticSet_instance) {
            NoGameNotificationHudSingleton.staticSet_instance = true;
            NoGameNotificationHudSingleton.instance = new NoGameNotificationHudSingleton();
        }
        return NoGameNotificationHudSingleton.instance;
    }
    public LogUtil logUtil;
    private GameNotificationHud gameNotificationHud;

    // Java field initializers run after the base constructor
    private void initFieldsNoGameNotificationHudSingleton() {
    this.logUtil = LogUtil.getInstance();
    this.gameNotificationHud = GameNotificationHud.NULL_GAME_NOTIFICATION;
    }
    

    public static NoGameNotificationHudSingleton getInstance() {
        return NoGameNotificationHudSingleton.staticGet_instance();
    }
    

    public NoGameNotificationHudSingleton() {
        base();
        this.initFieldsNoGameNotificationHudSingleton();
        {
            BasicHudFactory.getInstance();
            this.gameNotificationHud = new NoGameGameNotificationHud();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual GameNotificationHud getGameNotificationHud() {
        return this.gameNotificationHud;
    }
}

