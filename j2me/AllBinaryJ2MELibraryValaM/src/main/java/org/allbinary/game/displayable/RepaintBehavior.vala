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
// package org.allbinary.game.displayable
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.NullRunnable

public class RepaintBehavior : JObject {
    private static RepaintBehavior? instance;
    private static bool staticSet_instance = false;
    private static RepaintBehavior staticGet_instance() {
        if (!RepaintBehavior.staticSet_instance) {
            RepaintBehavior.staticSet_instance = true;
            RepaintBehavior.instance = new RepaintBehavior();
        }
        return RepaintBehavior.instance;
    }
    public LogUtil logUtil;
    private string NAME;

    // Java field initializers run after the base constructor
    private void initFieldsRepaintBehavior() {
    this.logUtil = LogUtil.getInstance();
    this.NAME = "RepaintBehavior";
    }

    public RepaintBehavior() {
        base();
        this.initFieldsRepaintBehavior();
    }
    

    public static RepaintBehavior getInstance() {
        return RepaintBehavior.staticGet_instance();
    }
    

    public virtual void repaint(Canvas canvas) {
    }
    

    public virtual void onChangeRepaint(Canvas canvas) {
        Features features = Features.getInstance();
        OpenGLFeatureFactory openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
        if (features.isFeature(openGLFeatureFactory.OPENGL)) {
            DisplayInfoSingleton.getInstance().process();
        } else {
            Thread thread = new Thread(new RepaintRunnable(canvas), this.NAME);
            thread.start();
        }
    }
}

