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
// package org.allbinary.graphics.displayable.screen
// import javax.microedition.lcdui.Displayable
// import org.allbinary.J2MEUtil
// import org.allbinary.canvas.Processor

public class ScreenRepaintProcessorFactory : JObject {
    private static ScreenRepaintProcessorFactory? instance;
    private static bool staticSet_instance = false;
    private static ScreenRepaintProcessorFactory staticGet_instance() {
        if (!ScreenRepaintProcessorFactory.staticSet_instance) {
            ScreenRepaintProcessorFactory.staticSet_instance = true;
            ScreenRepaintProcessorFactory.instance = new ScreenRepaintProcessorFactory();
        }
        return ScreenRepaintProcessorFactory.instance;
    }
    

    public static ScreenRepaintProcessorFactory getInstance() {
        return ScreenRepaintProcessorFactory.staticGet_instance();
    }
    

    public ScreenRepaintProcessorFactory() {
        base();
    }
    

    public virtual Processor create(Displayable displayable) {
        if (!J2MEUtil.isJ2ME()) {
            return new ScreenRepaintProcessor(displayable);
        } else {
            return Processor.getInstance();
        }
    }
}

