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

public class InputFeatureFactory : JObject {
    private static InputFeatureFactory? instance;
    private static bool staticSet_instance = false;
    private static InputFeatureFactory staticGet_instance() {
        if (!InputFeatureFactory.staticSet_instance) {
            InputFeatureFactory.staticSet_instance = true;
            InputFeatureFactory.instance = new InputFeatureFactory();
        }
        return InputFeatureFactory.instance;
    }
    public InputFeature REMOVE_DUPLICATE_KEY_PRESSES;
    public InputFeature INPUT_MAPPING;
    public InputFeature MULTI_KEY_PRESS;
    public InputFeature SINGLE_KEY_REPEAT_PRESS;
    public InputFeature SINGLE_KEY_PRESS;

    // Java field initializers run after the base constructor
    private void initFieldsInputFeatureFactory() {
    this.REMOVE_DUPLICATE_KEY_PRESSES = new InputFeature("Remove Duplicate Key Presses");
    this.INPUT_MAPPING = new InputFeature("Input Mapping");
    this.MULTI_KEY_PRESS = new InputFeature("Multi Key Press");
    this.SINGLE_KEY_REPEAT_PRESS = new InputFeature("Single Key Repeat Press");
    this.SINGLE_KEY_PRESS = new InputFeature("Single Key Press");
    }
    

    public static InputFeatureFactory getInstance() {
        return InputFeatureFactory.staticGet_instance();
    }
    

    public InputFeatureFactory() {
        base();
        this.initFieldsInputFeatureFactory();
    }
    

    public virtual bool isSingleKeyProcessing() {
        Features features = Features.getInstance();
        if (features.isFeature(this.SINGLE_KEY_REPEAT_PRESS) || features.isFeature(this.SINGLE_KEY_PRESS)) {
            return true;
        } else {
            return false;
        }
    }
}

