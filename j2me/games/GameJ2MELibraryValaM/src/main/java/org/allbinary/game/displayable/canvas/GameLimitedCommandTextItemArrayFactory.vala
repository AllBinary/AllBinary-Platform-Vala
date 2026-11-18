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

public class GameLimitedCommandTextItemArrayFactory : JObject {
    private static GameLimitedCommandTextItemArrayFactory? instance;
    private static bool staticSet_instance = false;
    private static GameLimitedCommandTextItemArrayFactory staticGet_instance() {
        if (!GameLimitedCommandTextItemArrayFactory.staticSet_instance) {
            GameLimitedCommandTextItemArrayFactory.staticSet_instance = true;
            GameLimitedCommandTextItemArrayFactory.instance = new GameLimitedCommandTextItemArrayFactory();
        }
        return GameLimitedCommandTextItemArrayFactory.instance;
    }
    private CommandTextItemArrayFactory commandTextItemArrayFactory;

    // Java field initializers run after the base constructor
    private void initFieldsGameLimitedCommandTextItemArrayFactory() {
    this.commandTextItemArrayFactory = new CommandTextItemArrayFactory(new LimitCommandsVisitor());
    }

    public GameLimitedCommandTextItemArrayFactory() {
        base();
        this.initFieldsGameLimitedCommandTextItemArrayFactory();
    }
    

    public static GameLimitedCommandTextItemArrayFactory getInstance() {
        return GameLimitedCommandTextItemArrayFactory.staticGet_instance();
    }
    

    public virtual CommandTextItemArrayFactory getCommandTextItemArrayFactory() {
        return this.commandTextItemArrayFactory;
    }
}

