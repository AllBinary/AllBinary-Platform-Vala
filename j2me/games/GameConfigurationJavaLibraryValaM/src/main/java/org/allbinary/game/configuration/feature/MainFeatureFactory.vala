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
// package org.allbinary.game.configuration.feature

public class MainFeatureFactory : JObject {
    private static MainFeatureFactory? instance;
    private static bool staticSet_instance = false;
    private static MainFeatureFactory staticGet_instance() {
        if (!MainFeatureFactory.staticSet_instance) {
            MainFeatureFactory.staticSet_instance = true;
            MainFeatureFactory.instance = new MainFeatureFactory();
        }
        return MainFeatureFactory.instance;
    }
    public Feature FULL_SCREEN;
    public Feature TITLE_BAR;
    public Feature STATIC;
    public Feature LOAD_ONDEMAND;
    public Feature LOAD_ALL;

    // Java field initializers run after the base constructor
    private void initFieldsMainFeatureFactory() {
    this.FULL_SCREEN = new Feature("Full Screen");
    this.TITLE_BAR = new Feature("Title Bar");
    this.STATIC = new Feature("Static Dependent Feature");
    this.LOAD_ONDEMAND = new Feature("Load OnDemand");
    this.LOAD_ALL = new Feature("Load All");
    }

    public MainFeatureFactory() {
        base();
        this.initFieldsMainFeatureFactory();
    }
    

    public static MainFeatureFactory getInstance() {
        return MainFeatureFactory.staticGet_instance();
    }
}

