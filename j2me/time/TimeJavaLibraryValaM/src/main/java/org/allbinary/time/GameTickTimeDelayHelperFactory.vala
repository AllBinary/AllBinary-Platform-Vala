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
// package org.allbinary.time

public class GameTickTimeDelayHelperFactory : JObject {
    private static GameTickTimeDelayHelper? instance;
    private static bool staticSet_instance = false;
    private static GameTickTimeDelayHelper staticGet_instance() {
        if (!GameTickTimeDelayHelperFactory.staticSet_instance) {
            GameTickTimeDelayHelperFactory.staticSet_instance = true;
            GameTickTimeDelayHelperFactory.instance = new GameTickTimeDelayHelper(-1);
        }
        return GameTickTimeDelayHelperFactory.instance;
    }
    

    public static GameTickTimeDelayHelper getInstance() {
        return GameTickTimeDelayHelperFactory.staticGet_instance();
    }
    

    public GameTickTimeDelayHelperFactory() {
        base();
    }
}

