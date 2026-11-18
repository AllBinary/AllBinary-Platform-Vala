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
// import org.allbinary.J2MEUtil
// import org.allbinary.logic.communication.log.LogUtil

public class HighScoreCommandsBaseFactory : JObject {
    public LogUtil logUtil;
    public Command[] HIGH_SCORE_COMMANDS;

    // Java field initializers run after the base constructor
    private void initFieldsHighScoreCommandsBaseFactory() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    public HighScoreCommandsBaseFactory(Command[] HIGH_SCORE_COMMANDS) {
        base();
        this.initFieldsHighScoreCommandsBaseFactory();
        this.HIGH_SCORE_COMMANDS = HIGH_SCORE_COMMANDS;
    }
    

    public virtual bool isHighScoreCommand(Command command) {
        for (int32 index = this.HIGH_SCORE_COMMANDS.length - 1; index >= 0; index--) {
            if (command == this.HIGH_SCORE_COMMANDS[index]) {
                return true;
            }
        }
        return false;
    }
    

    public virtual int32 getIndex(Command command) {
        for (int32 index = this.HIGH_SCORE_COMMANDS.length - 1; index >= 0; index--) {
            if (command == this.HIGH_SCORE_COMMANDS[index]) {
                return index;
            }
        }
        JSystem.fatal(new JException("Exception", "No Such Command"));
    }
}

