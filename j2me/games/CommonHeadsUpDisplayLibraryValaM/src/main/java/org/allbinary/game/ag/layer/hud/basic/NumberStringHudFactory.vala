/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.ag.layer.hud.basic
// import org.allbinary.game.graphics.hud.BasicHudFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

public class NumberStringHudFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!NumberStringHudFactory.staticSet_instance) {
            NumberStringHudFactory.staticSet_instance = true;
            NumberStringHudFactory.instance = NullUtil.getInstance();
        }
        return NumberStringHudFactory.instance;
    }
    public NumberStringHud NULL_NUMBER_STRING_HUD;

    // Java field initializers run after the base constructor
    private void initFieldsNumberStringHudFactory() {
    this.NULL_NUMBER_STRING_HUD = this.createHud();
    }

    public NumberStringHudFactory() {
        base();
        this.initFieldsNumberStringHudFactory();
    }
    

    public static NumberStringHudFactory getInstance() {
        if (NumberStringHudFactory.staticGet_instance() == NullUtil.getInstance()) {
            NumberStringHudFactory.instance = new NumberStringHudFactory();
        }
        return ((NumberStringHudFactory) NumberStringHudFactory.staticGet_instance());
    }
    

    public virtual NumberStringHud createHud() {
        {
            return new NumberStringHud(StringUtil.getInstance().EMPTY_STRING, 9, BasicHudFactory.getInstance().ABSOLUTE, 1, 0, BasicColorFactory.getInstance().NULL_COLOR);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

