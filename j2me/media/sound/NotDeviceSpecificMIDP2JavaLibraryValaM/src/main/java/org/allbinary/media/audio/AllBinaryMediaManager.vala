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
// import javax.microedition.media.Manager
// import javax.microedition.media.MediaException
// import javax.microedition.media.Player
// import org.allbinary.MIDPUtil
// import org.allbinary.TsUtil
// import org.allbinary.audio.AudioContentTypeDataFactory
// import org.allbinary.data.resource.ResourceUtil
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFactory
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

//NotDeviceSpecificMIDP2JavaLibrary
public class AllBinaryMediaManager : JObject {
    private const string THIS = "AllBinaryMediaManagerNoMIPD2";
    

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
    

    public static Player createPlayer(string resource) {
        if (Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND)) {
            if (TsUtil.getInstance().compareTo(resource, Manager.TONE_DEVICE_LOCATOR) == 0) {
                return Manager.createPlayer(resource);
            } else {
                InputStream inputStream = ResourceUtil.getInstance().getResourceAsStream(resource);
                return MIDPUtil.getInstance().createPlayerFromInputStream(inputStream, AudioContentTypeDataFactory.getInstance().MIME_AUDIO_WAV.getName());
            }
        } else {
            return NoPlayer.NO_PLAYER;
        }
    }
    

    public static void playTone(int32 frequency, int32 time, int32 volume) {
        if (Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND)) {
            Manager.playTone(frequency, time, volume);
        }
    }
}

