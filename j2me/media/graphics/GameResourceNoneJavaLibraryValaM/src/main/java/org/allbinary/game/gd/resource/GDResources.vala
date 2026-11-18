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
// package org.allbinary.game.gd.resource

public class GDResources : JObject {
    private static GDResources? instance;
    private static bool staticSet_instance = false;
    private static GDResources staticGet_instance() {
        if (!GDResources.staticSet_instance) {
            GDResources.staticSet_instance = true;
            GDResources.instance = new GDResources();
        }
        return GDResources.instance;
    }
    public string[] resourceStringArray;
    public int32 currentLayoutRequiredTotal;

    // Java field initializers run after the base constructor
    private void initFieldsGDResources() {
    this.resourceStringArray = new string[] {};
    this.currentLayoutRequiredTotal = 0;
    }

    public GDResources() {
        base();
        this.initFieldsGDResources();
    }
    

    public static GDResources getInstance() {
        return GDResources.staticGet_instance();
    }
}

