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
// package org.allbinary.graphics.displayable.screen
// import org.allbinary.game.paint.AboutPaintable
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.string.StringUtil

public class AboutPaintableFactory : JObject {
    private static AboutPaintableFactory? instance;
    private static bool staticSet_instance = false;
    private static AboutPaintableFactory staticGet_instance() {
        if (!AboutPaintableFactory.staticSet_instance) {
            AboutPaintableFactory.staticSet_instance = true;
            AboutPaintableFactory.instance = new AboutPaintableFactory();
        }
        return AboutPaintableFactory.instance;
    }
    public Paintable[] paintableArray;

    // Java field initializers run after the base constructor
    private void initFieldsAboutPaintableFactory() {
    this.paintableArray = new Paintable[] {NullPaintable.getInstance()};
    }
    

    public static AboutPaintableFactory getInstance() {
        return AboutPaintableFactory.staticGet_instance();
    }
    

    public AboutPaintableFactory() {
        base();
        this.initFieldsAboutPaintableFactory();
        string[] INFO = new string[] {"Built with the", "AllBinary Platform", StringUtil.getInstance().EMPTY_STRING, "Comments or Questions:", "support@allbinary.com"};
        string[] DEVELOPERS = new string[] {"Developed By:", "Travis Berthelot"};
        this.paintableArray = AboutPaintable.getInstance2(INFO, DEVELOPERS).getPaintableArrayInstance();
    }
}

