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
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.paint.ColorFillBasePaintable
// import org.allbinary.game.paint.ColorFillPaintableFactory
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.draw.DrawStringUtil
// import org.allbinary.logic.string.StringUtil

public class GameInputMappingInstructionsCanvas : GameCommandCanvas {
    public static Command? DISPLAY;
    private static bool staticSet_DISPLAY = false;
    public static Command staticGet_DISPLAY() {
        if (!GameInputMappingInstructionsCanvas.staticSet_DISPLAY) {
            GameInputMappingInstructionsCanvas.staticSet_DISPLAY = true;
            GameInputMappingInstructionsCanvas.DISPLAY = new Command("Help", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
        }
        return GameInputMappingInstructionsCanvas.DISPLAY;
    }
    public static Command? CLOSE;
    private static bool staticSet_CLOSE = false;
    public static Command staticGet_CLOSE() {
        if (!GameInputMappingInstructionsCanvas.staticSet_CLOSE) {
            GameInputMappingInstructionsCanvas.staticSet_CLOSE = true;
            GameInputMappingInstructionsCanvas.CLOSE = new Command("Close", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
        }
        return GameInputMappingInstructionsCanvas.CLOSE;
    }
    public const string NAME = "GameInputMappingInstructionsCanvas";
    private DrawStringUtil drawStringUtil;
    public string TITLE;
    private string[] instructions;
    private ColorFillBasePaintable colorFillPaintable;
    private int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsGameInputMappingInstructionsCanvas() {
    this.drawStringUtil = DrawStringUtil.getInstance();
    this.TITLE = "Input Instructions";
    this.instructions = new string[] {"Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", StringUtil.getInstance().EMPTY_STRING, "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key."};
    
    this.anchor = Anchor.TOP_LEFT;
    }
    

    public GameInputMappingInstructionsCanvas(CommandListener commandListener, AllBinaryGameLayerManager allBinaryGameLayerManager) {
        base(commandListener, GameInputMappingInstructionsCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor());
        this.initFieldsGameInputMappingInstructionsCanvas();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
    }
    

    public override void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        this.addCommand(GameInputMappingInstructionsCanvas.staticGet_CLOSE());
        this.setCommandListener(cmdListener);
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        this.colorFillPaintable.paint(graphics);
        int32 halfWidth = this.displayInfo.getLastHalfWidth();
        int32 beginWidth = (graphics.getFont().stringWidth(this.TITLE) >> 1);
        graphics.setColor(this.foregroundColor);
        graphics.drawString(this.TITLE, halfWidth - beginWidth, this.fontHeight, this.anchor);
        this.drawStringUtil.drawCenterStrings(graphics, this.instructions, this.displayInfo.getLastWidth(), this.fontHeight, halfWidth, 3 * this.fontHeight);
        base.paint(graphics);
    }
}

