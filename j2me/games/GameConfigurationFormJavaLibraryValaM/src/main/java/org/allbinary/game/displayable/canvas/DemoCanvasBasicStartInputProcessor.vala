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
// import javax.microedition.lcdui.NullCanvas
// import org.allbinary.canvas.RunnableCanvas
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.input.GameInputStrings
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList

public class DemoCanvasBasicStartInputProcessor : BasicMenuInputProcessor {
    

    public DemoCanvasBasicStartInputProcessor(BasicArrayList gameKeyEventList, RunnableCanvas gameCanvas) {
        base(gameKeyEventList, -1, gameCanvas);
    }
    

    public override int32 processInputList() {
        BasicArrayList list = this.getGameKeyEventList();
        int32 size = list.size();
        GameKeyEvent gameKeyEvent = null;
        for (int32 index = 0; index < size; index++) {
            gameKeyEvent = ((GameKeyEvent) list.objectArray[index]);
            this.logUtil.putF(new StringMaker().append("Start GameKey: ").append(StringUtil.getInstance().toString1(gameKeyEvent)).toString(), this, GameInputStrings.getInstance().PROCESS_INPUT);
        }
        this.getCanvas().getCustomCommandListener().commandAction(GameCommandsFactory.getInstance().START_COMMAND, NullCanvas.NULL_CANVAS);
        return size;
    }
}

