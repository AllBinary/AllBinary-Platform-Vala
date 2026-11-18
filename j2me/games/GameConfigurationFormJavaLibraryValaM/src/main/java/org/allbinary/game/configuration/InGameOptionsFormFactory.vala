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
// import org.allbinary.init.Init
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class InGameOptionsFormFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!InGameOptionsFormFactory.staticSet_instance) {
            InGameOptionsFormFactory.staticSet_instance = true;
            InGameOptionsFormFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return InGameOptionsFormFactory.instance;
    }
    public LogUtil logUtil;
    private CommandForm SINGLETON;

    // Java field initializers run after the base constructor
    private void initFieldsInGameOptionsFormFactory() {
    this.logUtil = LogUtil.getInstance();
    this.SINGLETON = CommandForm.getNullCommandForm();
    }

    public InGameOptionsFormFactory() {
        base();
        this.initFieldsInGameOptionsFormFactory();
    }
    

    public static InGameOptionsFormFactory getInstance() {
        if (InGameOptionsFormFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            InGameOptionsFormFactory.instance = new InGameOptionsFormFactory();
        }
        return ((InGameOptionsFormFactory) InGameOptionsFormFactory.staticGet_instance());
    }
    

    public virtual void init(CommandListener commandListener, Init initInterface, string title, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) {
        {
            if (this.SINGLETON == CommandForm.getNullCommandForm()) {
                initInterface.init();
                this.SINGLETON = new InGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual CommandForm @get() {
        return this.SINGLETON;
    }
}

