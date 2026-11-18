/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.layer
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.game.Sprite
// import org.allbinary.logic.communication.log.LogUtil

public class SpriteFactory : JObject, SpriteFactoryInterface {
    private static SpriteFactory? instance;
    private static bool staticSet_instance = false;
    private static SpriteFactory staticGet_instance() {
        if (!SpriteFactory.staticSet_instance) {
            SpriteFactory.staticSet_instance = true;
            SpriteFactory.instance = new SpriteFactory();
        }
        return SpriteFactory.instance;
    }
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsSpriteFactory() {
    this.logUtil = LogUtil.getInstance();
    }

    public SpriteFactory() {
        base();
        this.initFieldsSpriteFactory();
    }
    

    public static SpriteFactory getInstance() {
        return SpriteFactory.staticGet_instance();
    }
    

    public virtual Sprite createSprite(Image image, int32 frameWidth, int32 frameHeight) {
        return new Sprite(image, frameWidth, frameHeight);
    }
}

