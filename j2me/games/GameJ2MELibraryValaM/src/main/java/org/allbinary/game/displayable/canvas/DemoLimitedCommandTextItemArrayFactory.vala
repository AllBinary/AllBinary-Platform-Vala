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
// package org.allbinary.game.displayable.canvas
// import org.allbinary.graphics.form.item.CommandTextItemArrayFactory
// import org.allbinary.graphics.form.item.LimitCommandsVisitor

public class DemoLimitedCommandTextItemArrayFactory : JObject {
    private static DemoLimitedCommandTextItemArrayFactory? instance;
    private static bool staticSet_instance = false;
    private static DemoLimitedCommandTextItemArrayFactory staticGet_instance() {
        if (!DemoLimitedCommandTextItemArrayFactory.staticSet_instance) {
            DemoLimitedCommandTextItemArrayFactory.staticSet_instance = true;
            DemoLimitedCommandTextItemArrayFactory.instance = new DemoLimitedCommandTextItemArrayFactory();
        }
        return DemoLimitedCommandTextItemArrayFactory.instance;
    }
    private CommandTextItemArrayFactory commandTextItemArrayFactory;

    // Java field initializers run after the base constructor
    private void initFieldsDemoLimitedCommandTextItemArrayFactory() {
    this.commandTextItemArrayFactory = new CommandTextItemArrayFactory(new LimitCommandsVisitor());
    }

    public DemoLimitedCommandTextItemArrayFactory() {
        base();
        this.initFieldsDemoLimitedCommandTextItemArrayFactory();
    }
    

    public static DemoLimitedCommandTextItemArrayFactory getInstance() {
        return DemoLimitedCommandTextItemArrayFactory.staticGet_instance();
    }
    

    public virtual CommandTextItemArrayFactory getCommandTextItemArrayFactory() {
        return this.commandTextItemArrayFactory;
    }
}

