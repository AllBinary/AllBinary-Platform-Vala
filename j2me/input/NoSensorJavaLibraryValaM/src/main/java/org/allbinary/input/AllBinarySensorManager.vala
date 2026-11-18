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
// package org.allbinary.input
// import org.allbinary.input.accelerometer.AccelerometerSensorFactory
// import org.allbinary.input.gyro.GyroSensorFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class AllBinarySensorManager : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!AllBinarySensorManager.staticSet_instance) {
            AllBinarySensorManager.staticSet_instance = true;
            AllBinarySensorManager.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return AllBinarySensorManager.instance;
    }
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    public string ORIENTATION_SENSOR_INPUT;
    public string ORIENTATION_TYPE;
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinarySensorManager() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input";
    this.ORIENTATION_TYPE = "Orientation Type";
    this.list = new BasicArrayListD();
    }
    

    public static AllBinarySensorManager getInstance() {
        if (AllBinarySensorManager.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            AllBinarySensorManager.instance = new AllBinarySensorManager();
        }
        return ((AllBinarySensorManager) AllBinarySensorManager.staticGet_instance());
    }
    

    public AllBinarySensorManager() {
        base();
        this.initFieldsAllBinarySensorManager();
        {
            GyroSensorFactory.init();
            AccelerometerSensorFactory.init();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void init() {
    }
    

    public virtual BasicArrayList getSensorNamesList() {
        return this.list;
    }
    

    public virtual void shutdown() {
    }
}

