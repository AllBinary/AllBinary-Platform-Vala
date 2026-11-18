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
// package org.allbinary.graphics.displayable.screen
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class WebCommandProcessor : JObject {
    private static WebCommandProcessor? instance;
    private static bool staticSet_instance = false;
    private static WebCommandProcessor staticGet_instance() {
        if (!WebCommandProcessor.staticSet_instance) {
            WebCommandProcessor.staticSet_instance = true;
            WebCommandProcessor.instance = new WebCommandProcessor();
        }
        return WebCommandProcessor.instance;
    }
    public LogUtil logUtil;
    private AboutCommandProcessor aboutCommandProcessor;
    public BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsWebCommandProcessor() {
    this.logUtil = LogUtil.getInstance();
    this.aboutCommandProcessor = AboutCommandProcessor.getInstance();
    this.list = new BasicArrayListD();
    }

    public WebCommandProcessor() {
        base();
        this.initFieldsWebCommandProcessor();
    }
    

    public static WebCommandProcessor getInstance() {
        return WebCommandProcessor.staticGet_instance();
    }
    

    public virtual void process(CommandListener midletCommandListener, Command command, Canvas canvas) {
        {
            this.list.removeAt(0);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

