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
// package org.allbinary.media.audio
// import java.io.InputStream
// import javax.microedition.media.Player
// import org.allbinary.TsUtil
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

//NotDeviceSpecificNoMediaMIDP1Library
public class AllBinaryMediaManager : JObject {
    private const string THIS = "AllBinaryMediaManagerNoMediaMIDP1";
    

    public AllBinaryMediaManager() {
        base();
    }
    

    public static bool isMuted() {
        return false;
    }
    

    public static void setMuted(bool aMuted) {
    }
    

    public static bool update() {
        return true;
    }
    

    public static void init(SoundsFactoryInterface soundsFactoryInterface) {
        LogUtil logUtil = LogUtil.getInstance();
        CommonStrings commonString = CommonStrings.getInstance();
        logUtil.putF(commonString.START, JString.box(AllBinaryMediaManager.THIS), commonString.INIT);
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Media Manager");
        new Sounds(soundsFactoryInterface).init();
    }
    

    public static void shutdown(SoundsFactoryInterface soundsFactoryInterface) {
        new Sounds(soundsFactoryInterface).stopAll();
        new Sounds(soundsFactoryInterface).closeAll();
        TsUtil.getInstance().gc();
    }
    

    public static Player createPlayerFromInputStream(InputStream stream, string type) {
        LogUtil logUtil = LogUtil.getInstance();
        CommonStrings commonString = CommonStrings.getInstance();
        logUtil.putF(commonString.START, JString.box(AllBinaryMediaManager.THIS), "creatPlayer(InputStream)");
        return ((Player) NoPlayer.NO_PLAYER);
    }
    

    public static Player createPlayer(string locator) {
        LogUtil logUtil = LogUtil.getInstance();
        CommonStrings commonString = CommonStrings.getInstance();
        logUtil.putF(commonString.START, JString.box(AllBinaryMediaManager.THIS), "creatPlayer(locator)");
        return ((Player) NoPlayer.NO_PLAYER);
    }
    

    public static void playTone(int32 frequency, int32 time, int32 volume) {
    }
    

    public static string[] getSupportedContentTypes(string protocol) {
        return StringUtil.getInstance().getArrayInstance();
    }
    

    public static string[] getSupportedProtocols(string content_type) {
        return StringUtil.getInstance().getArrayInstance();
    }
}

