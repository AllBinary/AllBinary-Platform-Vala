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
// package org.allbinary.graphics.form.item
// import javax.microedition.lcdui.Command
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.form.ScreenInfo
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.util.visitor.Visitor

public class LimitCommandsVisitor : Visitor {
    private bool isNotSmallDisplay;

    // Java field initializers run after the base constructor
    private void initFieldsLimitCommandsVisitor() {
    
    }
    

    public LimitCommandsVisitor() {
        base();
        this.initFieldsLimitCommandsVisitor();
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        this.isNotSmallDisplay = (displayInfo.isPortrait() && displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_HEIGHT);
    }
    

    public override JObject visit(JObject anyType) {
        Command command = ((Command) anyType);
        BooleanFactory booleanFactory = BooleanFactory.getInstance();
        if (this.isNotSmallDisplay || command.getPriority() == 1 || command == GameCommandsFactory.getInstance().EXIT_COMMAND || command == GameCommandsFactory.getInstance().EXIT_WITHOUT_PROGRESS_COMMAND) {
            return booleanFactory.TRUE_;
        } else {
            return booleanFactory.FALSE_;
        }
    }
}

