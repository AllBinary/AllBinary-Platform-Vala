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
// package org.allbinary.canvas
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.MainFeatureFactory

public class FullScreenUtil : JObject {
    private static FullScreenUtil? instance;
    private static bool staticSet_instance = false;
    private static FullScreenUtil staticGet_instance() {
        if (!FullScreenUtil.staticSet_instance) {
            FullScreenUtil.staticSet_instance = true;
            FullScreenUtil.instance = new FullScreenUtil();
        }
        return FullScreenUtil.instance;
    }

    public FullScreenUtil() {
        base();
    }
    

    public static FullScreenUtil getInstance() {
        return FullScreenUtil.staticGet_instance();
    }
    

    public virtual void initOnRun(Canvas fullScreenInterface, CommandListener commandListener) {
        if (commandListener != null) {
            this.init(fullScreenInterface);
        }
    }
    

    public virtual void init(Canvas fullScreenInterface) {
    }
    

    public virtual bool isScreenChange(bool isFullScreen) {
        MainFeatureFactory mainFeatureFactory = MainFeatureFactory.getInstance();
        Features features = Features.getInstance();
        if (features.isFeature(mainFeatureFactory.FULL_SCREEN) != isFullScreen) {
            return true;
        }
        return false;
    }
    

    public virtual bool isScreenChangeCanvas(Canvas fullScreenInterface) {
        return this.isScreenChange(false);
    }
}

