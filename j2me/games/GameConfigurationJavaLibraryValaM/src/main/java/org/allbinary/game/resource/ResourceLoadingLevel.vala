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

public class ResourceLoadingLevel : JObject {
    private string name;
    private int32 level;

    // Java field initializers run after the base constructor
    private void initFieldsResourceLoadingLevel() {
    
    
    }
    

    public ResourceLoadingLevel(string name, int32 level) {
        base();
        this.initFieldsResourceLoadingLevel();
        this.name = name;
        this.level = level;
    }
    

    public virtual int32 getLevel() {
        return this.level;
    }
    

    public virtual string getName() {
        return this.name;
    }
}

