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
// package org.allbinary.game.configuration

public class GameSpeed : JObject {
    private static GameSpeed? instance;
    private static bool staticSet_instance = false;
    private static GameSpeed staticGet_instance() {
        if (!GameSpeed.staticSet_instance) {
            GameSpeed.staticSet_instance = true;
            GameSpeed.instance = new GameSpeed();
        }
        return GameSpeed.instance;
    }

    public GameSpeed() {
        base();
    }
    

    public virtual int32 getSpeed() {
        GameConfiguration speedGameConfiguration = GameConfigurationCentral.getInstance().SPEED;
        return (speedGameConfiguration.getMaxValue().intValue() - speedGameConfiguration.getValue().intValue() + 1);
    }
    

    public virtual int32 getDelay() {
        GameConfiguration speedGameConfiguration = GameConfigurationCentral.getInstance().SPEED;
        return 19 * (speedGameConfiguration.getMaxValue().intValue() - speedGameConfiguration.getValue().intValue());
    }
    

    public static GameSpeed getInstance() {
        return GameSpeed.staticGet_instance();
    }
}

