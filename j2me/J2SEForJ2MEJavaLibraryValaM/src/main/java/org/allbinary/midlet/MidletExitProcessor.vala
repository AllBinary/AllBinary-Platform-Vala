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
// import org.allbinary.canvas.Processor

public class MidletExitProcessor : Processor {
    private MIDlet midlet;

    // Java field initializers run after the base constructor
    private void initFieldsMidletExitProcessor() {
    
    }
    

    public MidletExitProcessor(MIDlet midlet) {
        base();
        this.initFieldsMidletExitProcessor();
        this.midlet = midlet;
    }
    

    public override void process() {
        System.exit(0);
    }
}

