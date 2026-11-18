/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.displayable

public class GameTickDisplayInfoSingleton : JObject {
    private static GameTickDisplayInfoSingleton? instance;
    private static bool staticSet_instance = false;
    private static GameTickDisplayInfoSingleton staticGet_instance() {
        if (!GameTickDisplayInfoSingleton.staticSet_instance) {
            GameTickDisplayInfoSingleton.staticSet_instance = true;
            GameTickDisplayInfoSingleton.instance = new GameTickDisplayInfoSingleton();
        }
        return GameTickDisplayInfoSingleton.instance;
    }
    private DisplayInfoSingleton displayInfoSingleton;
    private int32 lastWidth;
    private int32 lastHeight;
    private int32 lastHalfWidth;
    private int32 lastHalfHeight;

    // Java field initializers run after the base constructor
    private void initFieldsGameTickDisplayInfoSingleton() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.lastWidth = this.displayInfoSingleton.getLastWidth();
    this.lastHeight = this.displayInfoSingleton.getLastHeight();
    this.lastHalfWidth = this.displayInfoSingleton.getLastHalfWidth();
    this.lastHalfHeight = this.displayInfoSingleton.getLastHalfHeight();
    }

    public GameTickDisplayInfoSingleton() {
        base();
        this.initFieldsGameTickDisplayInfoSingleton();
    }
    

    public static GameTickDisplayInfoSingleton getInstance() {
        return GameTickDisplayInfoSingleton.staticGet_instance();
    }
    

    public virtual void update() {
        this.lastWidth = this.displayInfoSingleton.getLastWidth();
        this.lastHeight = this.displayInfoSingleton.getLastHeight();
        this.lastHalfWidth = this.displayInfoSingleton.getLastHalfWidth();
        this.lastHalfHeight = this.displayInfoSingleton.getLastHalfHeight();
    }
    

    public virtual int32 getLastWidth() {
        return this.lastWidth;
    }
    

    public virtual int32 getLastHeight() {
        return this.lastHeight;
    }
    

    public virtual int32 getLastHalfWidth() {
        return this.lastHalfWidth;
    }
    

    public virtual int32 getLastHalfHeight() {
        return this.lastHalfHeight;
    }
}

