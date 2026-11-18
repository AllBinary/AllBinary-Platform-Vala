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
// package org.allbinary.game.init

public class BasicBuildGameInitializerFactory : JObject, GameInitializationInterfaceFactoryInterface {
    public static BasicBuildGameInitializerFactory? NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY;
    private static bool staticSet_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = false;
    public static BasicBuildGameInitializerFactory staticGet_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY() {
        if (!BasicBuildGameInitializerFactory.staticSet_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY) {
            BasicBuildGameInitializerFactory.staticSet_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = true;
            BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = new BasicBuildGameInitializerFactory();
        }
        return BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY;
    }

    public BasicBuildGameInitializerFactory() {
        base();
    }
    

    public virtual GameInitializationInterface getInstance() {
        return BaseGameInitialization.NULL_BASE_GAME_INITIALIZATION;
    }
}

