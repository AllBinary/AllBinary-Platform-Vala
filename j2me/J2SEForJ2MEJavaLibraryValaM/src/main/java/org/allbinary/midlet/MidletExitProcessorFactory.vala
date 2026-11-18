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
// package org.allbinary.midlet
// import javax.microedition.midlet.MIDlet
// import org.allbinary.AppletUtil
// import org.allbinary.J2MEUtil
// import org.allbinary.canvas.Processor

public class MidletExitProcessorFactory : JObject {
    private static MidletExitProcessorFactory? instance;
    private static bool staticSet_instance = false;
    private static MidletExitProcessorFactory staticGet_instance() {
        if (!MidletExitProcessorFactory.staticSet_instance) {
            MidletExitProcessorFactory.staticSet_instance = true;
            MidletExitProcessorFactory.instance = new MidletExitProcessorFactory();
        }
        return MidletExitProcessorFactory.instance;
    }

    public MidletExitProcessorFactory() {
        base();
    }
    

    public static MidletExitProcessorFactory getInstance() {
        return MidletExitProcessorFactory.staticGet_instance();
    }
    

    public virtual Processor getExitInstance(MIDlet midlet) {
        if (AppletUtil.isAppletLoader(midlet) || J2MEUtil.isJ2ME()) {
            return Processor.getInstance();
        } else {
            return new MidletExitProcessor(midlet);
        }
    }
}

