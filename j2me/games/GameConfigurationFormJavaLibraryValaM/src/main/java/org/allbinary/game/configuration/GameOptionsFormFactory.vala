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
// package org.allbinary.game.configuration
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class GameOptionsFormFactory : JObject {
    private static GameOptionsFormFactory? instance;
    private static bool staticSet_instance = false;
    private static GameOptionsFormFactory staticGet_instance() {
        if (!GameOptionsFormFactory.staticSet_instance) {
            GameOptionsFormFactory.staticSet_instance = true;
            GameOptionsFormFactory.instance = new GameOptionsFormFactory();
        }
        return GameOptionsFormFactory.instance;
    }
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsGameOptionsFormFactory() {
    this.logUtil = LogUtil.getInstance();
    }
    

    public GameOptionsFormFactory() {
        base();
        this.initFieldsGameOptionsFormFactory();
    }
    

    public static GameOptionsFormFactory getInstance() {
        return GameOptionsFormFactory.staticGet_instance();
    }
    

    public virtual CommandForm init(CommandListener commandListener, string title, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) {
        {
            return new GameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

