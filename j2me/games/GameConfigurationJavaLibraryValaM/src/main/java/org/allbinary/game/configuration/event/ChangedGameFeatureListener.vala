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
// package org.allbinary.game.configuration.event
// import org.allbinary.game.configuration.GameConfiguration

public class ChangedGameFeatureListener : BaseChangedGameFeatureListener {
    private static ChangedGameFeatureListener? gameFeatureListener;
    private static bool staticSet_gameFeatureListener = false;
    private static ChangedGameFeatureListener staticGet_gameFeatureListener() {
        if (!ChangedGameFeatureListener.staticSet_gameFeatureListener) {
            ChangedGameFeatureListener.staticSet_gameFeatureListener = true;
            ChangedGameFeatureListener.gameFeatureListener = new ChangedGameFeatureListener();
        }
        return ChangedGameFeatureListener.gameFeatureListener;
    }

    public ChangedGameFeatureListener() {
        base();
    }
    

    public static ChangedGameFeatureListener getInstance() {
        return ChangedGameFeatureListener.staticGet_gameFeatureListener();
    }
    

    public virtual bool isChangedGameConfiguration(GameConfiguration gameConfiguration) {
        return this.list.contains(gameConfiguration);
    }
}

