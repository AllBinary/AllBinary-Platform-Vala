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
// import org.allbinary.game.input.mapping.PersistentInputMapping
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class PlatformInputMappingFactory : JObject {
    private static PlatformInputMappingFactory? instance;
    private static bool staticSet_instance = false;
    private static PlatformInputMappingFactory staticGet_instance() {
        if (!PlatformInputMappingFactory.staticSet_instance) {
            PlatformInputMappingFactory.staticSet_instance = true;
            PlatformInputMappingFactory.instance = new PlatformInputMappingFactory();
        }
        return PlatformInputMappingFactory.instance;
    }
    public LogUtil logUtil;
    private PersistentInputMapping inputToGameKeyMapping;

    // Java field initializers run after the base constructor
    private void initFieldsPlatformInputMappingFactory() {
    this.logUtil = LogUtil.getInstance();
    this.inputToGameKeyMapping = PersistentInputMapping.getNullInstance();
    }

    public PlatformInputMappingFactory() {
        base();
        this.initFieldsPlatformInputMappingFactory();
    }
    

    public static PlatformInputMappingFactory getInstance() {
        return PlatformInputMappingFactory.staticGet_instance();
    }
    

    public virtual PersistentInputMapping getPersistentInputMappingInstance() {
        {
            if (this.inputToGameKeyMapping == PersistentInputMapping.getNullInstance()) {
                this.inputToGameKeyMapping = new LaptopGameInputMapping();
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
        return this.inputToGameKeyMapping;
    }
}

