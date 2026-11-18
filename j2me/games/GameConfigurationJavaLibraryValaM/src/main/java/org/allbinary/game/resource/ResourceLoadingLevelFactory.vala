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
// package org.allbinary.game.resource

public class ResourceLoadingLevelFactory : JObject {
    private static ResourceLoadingLevelFactory? instance;
    private static bool staticSet_instance = false;
    private static ResourceLoadingLevelFactory staticGet_instance() {
        if (!ResourceLoadingLevelFactory.staticSet_instance) {
            ResourceLoadingLevelFactory.staticSet_instance = true;
            ResourceLoadingLevelFactory.instance = new ResourceLoadingLevelFactory();
        }
        return ResourceLoadingLevelFactory.instance;
    }
    public ResourceLoadingLevel LOAD_EARLY;
    public ResourceLoadingLevel LOAD_TOUCH;
    public ResourceLoadingLevel LOAD_GAME;
    public ResourceLoadingLevel LEVEL;
    public ResourceLoadingLevel MAX_LEVEL;
    public ResourceLoadingLevel LOAD_ALL;
    private ResourceLoadingLevel[] RESOURCE_LOADING_LEVEL_ARRAY;

    // Java field initializers run after the base constructor
    private void initFieldsResourceLoadingLevelFactory() {
    this.LOAD_EARLY = new ResourceLoadingLevel("Load Early", Integer.MAX_VALUE);
    this.LOAD_TOUCH = new ResourceLoadingLevel("Load Touch", Integer.MAX_VALUE - 1);
    this.LOAD_GAME = new ResourceLoadingLevel("Load Game", Integer.MAX_VALUE - 2);
    this.LEVEL = new ResourceLoadingLevel("Level", Integer.MAX_VALUE - 99);
    this.MAX_LEVEL = new ResourceLoadingLevel("Max Level", Integer.MAX_VALUE - 100);
    this.LOAD_ALL = new ResourceLoadingLevel("Load All", -1);
    this.RESOURCE_LOADING_LEVEL_ARRAY = new ResourceLoadingLevel[] {this.LOAD_ALL, this.MAX_LEVEL, this.LEVEL, this.LOAD_GAME, this.LOAD_TOUCH, this.LOAD_EARLY};
    }

    public ResourceLoadingLevelFactory() {
        base();
        this.initFieldsResourceLoadingLevelFactory();
    }
    

    public static ResourceLoadingLevelFactory getInstance() {
        return ResourceLoadingLevelFactory.staticGet_instance();
    }
    

    public virtual string getLevelString(int32 level) {
        for (int32 index = 0; index < this.RESOURCE_LOADING_LEVEL_ARRAY.length; index++) {
            if (level == this.RESOURCE_LOADING_LEVEL_ARRAY[index].getLevel()) {
                return this.RESOURCE_LOADING_LEVEL_ARRAY[index].getName();
            }
        }
        return (level).to_string();
    }
}

