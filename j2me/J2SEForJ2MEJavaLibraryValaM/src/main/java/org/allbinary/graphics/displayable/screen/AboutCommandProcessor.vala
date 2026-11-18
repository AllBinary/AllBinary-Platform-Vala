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

public class AboutCommandProcessor : JObject {
    private static AboutCommandProcessor? instance;
    private static bool staticSet_instance = false;
    private static AboutCommandProcessor staticGet_instance() {
        if (!AboutCommandProcessor.staticSet_instance) {
            AboutCommandProcessor.staticSet_instance = true;
            AboutCommandProcessor.instance = new AboutCommandProcessor();
        }
        return AboutCommandProcessor.instance;
    }

    public AboutCommandProcessor() {
        base();
    }
    

    public static AboutCommandProcessor getInstance() {
        return AboutCommandProcessor.staticGet_instance();
    }
    

    public virtual void process(CommandListener midletCommandListener, Command command, Canvas canvas) {
        midletCommandListener.commandAction(command, canvas);
    }
}

