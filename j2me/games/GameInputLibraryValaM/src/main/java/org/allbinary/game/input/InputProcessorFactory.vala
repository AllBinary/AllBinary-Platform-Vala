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
// package org.allbinary.game.input

public class InputProcessorFactory : JObject {
    private static InputProcessorFactory? instance;
    private static bool staticSet_instance = false;
    private static InputProcessorFactory staticGet_instance() {
        if (!InputProcessorFactory.staticSet_instance) {
            InputProcessorFactory.staticSet_instance = true;
            InputProcessorFactory.instance = new InputProcessorFactory();
        }
        return InputProcessorFactory.instance;
    }
    private InputProcessor inputProcessor;

    // Java field initializers run after the base constructor
    private void initFieldsInputProcessorFactory() {
    this.inputProcessor = new InputProcessor();
    }

    public InputProcessorFactory() {
        base();
        this.initFieldsInputProcessorFactory();
    }
    

    public static InputProcessorFactory getInstance() {
        return InputProcessorFactory.staticGet_instance();
    }
    

    public virtual InputProcessor getInputProcessor() {
        return this.inputProcessor;
    }
}

