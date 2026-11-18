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

public class AlwaysRepaintBehavior : RepaintBehavior {
    private static AlwaysRepaintBehavior? instanceC;
    private static bool staticSet_instanceC = false;
    private static AlwaysRepaintBehavior staticGet_instanceC() {
        if (!AlwaysRepaintBehavior.staticSet_instanceC) {
            AlwaysRepaintBehavior.staticSet_instanceC = true;
            AlwaysRepaintBehavior.instanceC = new AlwaysRepaintBehavior();
        }
        return AlwaysRepaintBehavior.instanceC;
    }
    private string NAME;

    // Java field initializers run after the base constructor
    private void initFieldsAlwaysRepaintBehavior() {
    this.NAME = "AlwaysRepaintBehavior";
    }

    public AlwaysRepaintBehavior() {
        base();
        this.initFieldsAlwaysRepaintBehavior();
    }
    

    public static AlwaysRepaintBehavior getInstance() {
        return AlwaysRepaintBehavior.staticGet_instanceC();
    }
    

    public override void repaint(Canvas canvas) {
        Features features = Features.getInstance();
        OpenGLFeatureFactory openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
        if (features.isFeature(openGLFeatureFactory.OPENGL)) {
            DisplayInfoSingleton.getInstance().process();
        } else {
            Thread thread = new Thread(new RepaintRunnable(canvas), this.NAME);
            thread.start();
        }
    }
    

    public override void onChangeRepaint(Canvas canvas) {
    }
}

