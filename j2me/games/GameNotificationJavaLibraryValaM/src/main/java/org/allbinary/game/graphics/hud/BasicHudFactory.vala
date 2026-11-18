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
// package org.allbinary.game.graphics.hud

public class BasicHudFactory : JObject {
    private static BasicHudFactory? instance;
    private static bool staticSet_instance = false;
    private static BasicHudFactory staticGet_instance() {
        if (!BasicHudFactory.staticSet_instance) {
            BasicHudFactory.staticSet_instance = true;
            BasicHudFactory.instance = new BasicHudFactory();
        }
        return BasicHudFactory.instance;
    }
    public string DIRECTION_EXCEPTION;
    public int32 VERTICAL;
    public int32 HORIZONTAL;
    public int32 BOTTOMLEFT;
    public int32 BOTTOMRIGHT;
    public int32 TOPLEFT;
    public int32 TOPRIGHT;
    public int32 BOTTOMCENTER;
    public int32 TOPCENTER;
    public int32 ABSOLUTE;

    // Java field initializers run after the base constructor
    private void initFieldsBasicHudFactory() {
    this.DIRECTION_EXCEPTION = "Only Horizontal Direction is Allowed Currently";
    this.VERTICAL = 0;
    this.HORIZONTAL = 1;
    this.BOTTOMLEFT = 0;
    this.BOTTOMRIGHT = 1;
    this.TOPLEFT = 2;
    this.TOPRIGHT = 3;
    this.BOTTOMCENTER = 4;
    this.TOPCENTER = 5;
    this.ABSOLUTE = 6;
    }
    

    public static BasicHudFactory getInstance() {
        return BasicHudFactory.staticGet_instance();
    }
    

    public BasicHudFactory() {
        base();
        this.initFieldsBasicHudFactory();
    }
}

