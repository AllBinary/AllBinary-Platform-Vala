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
// import org.allbinary.game.configuration.event.GameFeatureEvent
// import org.allbinary.game.configuration.event.GameFeatureEventHandler
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class Features : JObject {
    private static JObject? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static JObject staticGet_SINGLETON() {
        if (!Features.staticSet_SINGLETON) {
            Features.staticSet_SINGLETON = true;
            Features.SINGLETON = NullUtil.getInstance().NULL_OBJECT;
        }
        return Features.SINGLETON;
    }
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    private BasicArrayList list;
    private BasicArrayList defaultList;

    // Java field initializers run after the base constructor
    private void initFieldsFeatures() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    }
    

    public static Features getInstance() {
        if (Features.staticGet_SINGLETON() == NullUtil.getInstance().NULL_OBJECT) {
            Features.SINGLETON = new Features();
        }
        return ((Features) Features.staticGet_SINGLETON());
    }
    

    public Features() {
        base();
        this.initFieldsFeatures();
        this.list = new BasicArrayListD();
        this.defaultList = new BasicArrayListD();
        this.init();
    }
    

    public virtual void addDefault(Feature gameFeature) {
        this.add(gameFeature);
        if (!this.defaultList.contains(gameFeature)) {
            this.defaultList.add(gameFeature);
        }
    }
    

    public virtual void add(Feature gameFeature) {
        if (!this.list.contains(gameFeature)) {
            this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), this, this.commonStrings.ADD);
            this.list.add(gameFeature);
            GameFeatureEventHandler.getInstance().fireEvent(new GameFeatureEvent(gameFeature, gameFeature.toString()));
        }
    }
    

    public virtual void removeDefault(Feature gameFeature) {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), this, "removeDefault");
        this.remove(gameFeature);
        this.defaultList.remove(gameFeature);
    }
    

    public virtual void remove(Feature gameFeature) {
        if (this.list.contains(gameFeature)) {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.REMOVE);
            this.list.remove(gameFeature);
            GameFeatureEventHandler.getInstance().fireEvent(new GameFeatureEvent(gameFeature, gameFeature.toString()));
        }
    }
    

    private void init() {
        {
            GameFeatureFactory gameFeatureFactory = GameFeatureFactory.getInstance();
            InputFeatureFactory inputFeatureFactory = InputFeatureFactory.getInstance();
            SensorFeatureFactory sensorFeatureFactory = SensorFeatureFactory.getInstance();
            TouchFeatureFactory touchFeatureFactory = TouchFeatureFactory.getInstance();
            this.addDefault(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR);
            this.addDefault(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR);
            this.addDefault(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR);
            this.addDefault(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR);
            this.addDefault(inputFeatureFactory.MULTI_KEY_PRESS);
            this.addDefault(inputFeatureFactory.REMOVE_DUPLICATE_KEY_PRESSES);
            this.addDefault(gameFeatureFactory.SCREEN_SHAKE);
            this.addDefault(gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION);
            GenericOperatingSystem operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
            if (operatingSystemInterface.isOverScan()) {
                this.addDefault(sensorFeatureFactory.NO_ORIENTATION);
                this.addDefault(touchFeatureFactory.HIDE_SCREEN_BUTTONS);
            } else {
                this.addDefault(sensorFeatureFactory.ORIENTATION_SENSORS);
                this.addDefault(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS);
            }
            this.addDefault(touchFeatureFactory.TOUCH_ENABLED);
            this.addDefault(MainFeatureFactory.getInstance().FULL_SCREEN);
            this.addDefault(MainFeatureFactory.getInstance().LOAD_ONDEMAND);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual bool isDefault(Feature gameFeature) {
        return this.defaultList.contains(gameFeature);
    }
    

    public virtual bool isFeature(Feature gameFeature) {
        return this.list.contains(gameFeature);
    }
    

    public virtual void toggle(Feature gameFeature) {
        if (this.isFeature(gameFeature)) {
            this.remove(gameFeature);
        } else {
            this.add(gameFeature);
        }
    }
}

