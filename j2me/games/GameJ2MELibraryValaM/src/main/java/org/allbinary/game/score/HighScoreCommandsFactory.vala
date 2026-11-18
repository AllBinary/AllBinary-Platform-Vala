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
// package org.allbinary.game.score
// import javax.microedition.lcdui.Command

public class HighScoreCommandsFactory : HighScoreCommandsBaseFactory {
    private static HighScoreCommandsFactory? instance;
    private static bool staticSet_instance = false;
    private static HighScoreCommandsFactory staticGet_instance() {
        if (!HighScoreCommandsFactory.staticSet_instance) {
            HighScoreCommandsFactory.staticSet_instance = true;
            HighScoreCommandsFactory.instance = new HighScoreCommandsFactory();
        }
        return HighScoreCommandsFactory.instance;
    }
    

    public static HighScoreCommandsFactory getInstance() {
        return HighScoreCommandsFactory.staticGet_instance();
    }
    

    public HighScoreCommandsFactory() {
        base(new Command[] {HighScoreCommands.getInstance().PERSONAL, HighScoreCommands.getInstance().WORLD});
    }
}

