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
// import org.allbinary.game.input.mapping.InputToGameKeyMapping
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class PlatformFormInputMappingFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!PlatformFormInputMappingFactory.staticSet_instance) {
            PlatformFormInputMappingFactory.staticSet_instance = true;
            PlatformFormInputMappingFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return PlatformFormInputMappingFactory.instance;
    }
    public LogUtil logUtil;
    private InputToGameKeyMapping inputToGameKeyMapping;

    // Java field initializers run after the base constructor
    private void initFieldsPlatformFormInputMappingFactory() {
    this.logUtil = LogUtil.getInstance();
    this.inputToGameKeyMapping = InputToGameKeyMapping.getNullInstance();
    }

    public PlatformFormInputMappingFactory() {
        base();
        this.initFieldsPlatformFormInputMappingFactory();
    }
    

    public static PlatformFormInputMappingFactory getInstance() {
        if (PlatformFormInputMappingFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            PlatformFormInputMappingFactory.instance = new PlatformFormInputMappingFactory();
        }
        return ((PlatformFormInputMappingFactory) PlatformFormInputMappingFactory.staticGet_instance());
    }
    

    public virtual InputToGameKeyMapping getOrCreate() {
        {
            if (this.inputToGameKeyMapping == InputToGameKeyMapping.getNullInstance()) {
                PCKeyFactory pcKeyFactory = PCKeyFactory.getInstance();
                InputToGameKeyMapping inputToGameKeyMapping = new InputToGameKeyMapping();
                GameKeyFactory gameKeyFactory = GameKeyFactory.getInstance();
                inputToGameKeyMapping.add(gameKeyFactory.UP, pcKeyFactory.DPAD_UP);
                inputToGameKeyMapping.add(gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN);
                inputToGameKeyMapping.add(gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT);
                inputToGameKeyMapping.add(gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT);
                inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, pcKeyFactory.ENTER);
                this.inputToGameKeyMapping = inputToGameKeyMapping;
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
        return this.inputToGameKeyMapping;
    }
}

