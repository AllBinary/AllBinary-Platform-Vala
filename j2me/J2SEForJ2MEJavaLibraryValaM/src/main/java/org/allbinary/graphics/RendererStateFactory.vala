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
// package org.allbinary.graphics

public class RendererStateFactory : JObject {
    private static RendererStateFactory? instance;
    private static bool staticSet_instance = false;
    private static RendererStateFactory staticGet_instance() {
        if (!RendererStateFactory.staticSet_instance) {
            RendererStateFactory.staticSet_instance = true;
            RendererStateFactory.instance = new RendererStateFactory();
        }
        return RendererStateFactory.instance;
    }
    private bool loaded;
    private bool surfaceChanged;

    // Java field initializers run after the base constructor
    private void initFieldsRendererStateFactory() {
    this.loaded = false;
    this.surfaceChanged = false;
    }

    public RendererStateFactory() {
        base();
        this.initFieldsRendererStateFactory();
    }
    

    public static RendererStateFactory getInstance() {
        return RendererStateFactory.staticGet_instance();
    }
    

    public virtual void setLoaded(bool loaded) {
        this.loaded = loaded;
    }
    

    public virtual bool isLoaded() {
        return this.loaded;
    }
    

    public virtual void setSurfaceChanged(bool initialized) {
        this.surfaceChanged = initialized;
    }
    

    public virtual bool isSurfaceChanged() {
        return this.surfaceChanged;
    }
}

