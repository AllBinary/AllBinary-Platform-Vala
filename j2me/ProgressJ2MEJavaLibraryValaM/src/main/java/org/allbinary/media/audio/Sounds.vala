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
// import javax.microedition.media.Player
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings

public class Sounds : JObject {
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    private SoundStrings soundStrings;
    private SoundsFactoryInterface soundsFactoryInterface;

    // Java field initializers run after the base constructor
    private void initFieldsSounds() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.soundStrings = SoundStrings.getInstance();
    
    }
    

    public Sounds(SoundsFactoryInterface soundsFactoryInterface) {
        base();
        this.initFieldsSounds();
        this.soundsFactoryInterface = soundsFactoryInterface;
    }
    

    public virtual void init() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT);
        CommonLabels commonLabels = CommonLabels.getInstance();
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        this.soundsFactoryInterface.init();
        Sound[] soundInterfaceArray = this.soundsFactoryInterface.getSoundInterfaceArray();
        SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        int32? indexInteger = null;
        string indexString = null;
        StringMaker stringBuffer = new StringMaker();
        for (int32 i = 0; i < soundInterfaceArray.length; i++) {
            Sound soundInterface = soundInterfaceArray[i];
            if (soundInterface != null) {
                indexInteger = smallIntegerSingletonFactory.getAt(i);
                indexString = indexInteger.to_string();
                stringBuffer.@delete(0, stringBuffer.length());
                stringBuffer.append(commonLabels.INDEX_LABEL);
                stringBuffer.append(indexString);
                stringBuffer.append(this.soundStrings.SOUND);
                stringBuffer.append(JObject.className(soundInterface));
                this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
                soundInterface.init();
                progressCanvas.addNormalPortion(100, new StringMaker().append(this.soundStrings.INIT_SOUND).append(indexString).toString());
            }
        }
        this.soundsFactoryInterface.setInitialized(true);
        this.logUtil.putF(this.commonStrings.END, this, this.commonStrings.INIT);
    }
    

    public virtual void stopAll() {
        this.logUtil.putF(this.commonStrings.START, this, this.soundStrings.STOP_ALL);
        Sound[] soundInterfaceArray = this.soundsFactoryInterface.getSoundInterfaceArray();
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        Player player = null;
        for (int32 index = 0; index < soundInterfaceArray.length; index++) {
            if (soundInterfaceArray[index] != null) {
                player = soundInterfaceArray[index].getPlayerP();
                if (player != null) {
                    player.stop();
                    progressCanvas.addPortion(100, this.soundStrings.STOPPING_SOUND, index);
                }
            }
        }
    }
    

    public virtual void closeAll() {
        this.logUtil.putF(this.commonStrings.START, this, this.soundStrings.CLOSE_ALL);
        Sound[] soundInterfaceArray = this.soundsFactoryInterface.getSoundInterfaceArray();
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        Player player = null;
        for (int32 index = 0; index < soundInterfaceArray.length; index++) {
            if (soundInterfaceArray[index] != null) {
                player = soundInterfaceArray[index].getPlayerP();
                if (player != null) {
                    player.close();
                    progressCanvas.addPortion(100, this.soundStrings.CLOSING_SOUND, index);
                }
            }
        }
    }
}

