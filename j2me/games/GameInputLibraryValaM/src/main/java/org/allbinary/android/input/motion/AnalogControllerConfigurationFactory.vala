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
// package org.allbinary.android.input.motion
// import org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent
// import org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler
// import org.allbinary.logic.math.ScaleFactorFactory

public class AnalogControllerConfigurationFactory : JObject {
    private static AnalogControllerConfigurationFactory? instance;
    private static bool staticSet_instance = false;
    private static AnalogControllerConfigurationFactory staticGet_instance() {
        if (!AnalogControllerConfigurationFactory.staticSet_instance) {
            AnalogControllerConfigurationFactory.staticSet_instance = true;
            AnalogControllerConfigurationFactory.instance = new AnalogControllerConfigurationFactory();
        }
        return AnalogControllerConfigurationFactory.instance;
    }
    public int32 SCALE_FACTOR;
    public int32 SCALE_VALUE;
    private bool available;
    private AnalogControllerConfigurationEvent analogControllerConfigurationEvent;

    // Java field initializers run after the base constructor
    private void initFieldsAnalogControllerConfigurationFactory() {
    this.SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR;
    this.SCALE_VALUE = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE;
    this.available = false;
    this.analogControllerConfigurationEvent = new AnalogControllerConfigurationEvent(this);
    }
    

    public static AnalogControllerConfigurationFactory getInstance() {
        return AnalogControllerConfigurationFactory.staticGet_instance();
    }
    

    public AnalogControllerConfigurationFactory() {
        base();
        this.initFieldsAnalogControllerConfigurationFactory();
    }
    

    public virtual bool isAvailable() {
        return this.available;
    }
    

    public virtual void setAvailable(bool available) {
        this.available = available;
        AnalogControllerConfigurationEventHandler.getInstance().fireEvent(this.analogControllerConfigurationEvent);
    }
}

