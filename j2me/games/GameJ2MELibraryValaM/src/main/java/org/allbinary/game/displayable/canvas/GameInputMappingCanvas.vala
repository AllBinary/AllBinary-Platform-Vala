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
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.mapping.InputMappingInterface
// import org.allbinary.game.input.mapping.PersistentInputMapping
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.paint.ColorFillBasePaintable
// import org.allbinary.game.paint.ColorFillPaintableFactory
// import org.allbinary.game.paint.help.HelpPaintable
// import org.allbinary.game.paint.help.InputMappingHelpPaintable
// import org.allbinary.graphics.paint.ProcessPaintable
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.util.BasicArrayList

public class GameInputMappingCanvas : GameCommandCanvas, InputMappingInterface {
    public const string NAME = "GameInputMappingCanvas";
    public static Command? DISPLAY;
    private static bool staticSet_DISPLAY = false;
    public static Command staticGet_DISPLAY() {
        if (!GameInputMappingCanvas.staticSet_DISPLAY) {
            GameInputMappingCanvas.staticSet_DISPLAY = true;
            GameInputMappingCanvas.DISPLAY = new Command("Controls", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
        }
        return GameInputMappingCanvas.DISPLAY;
    }
    public static Command? DEFAULT;
    private static bool staticSet_DEFAULT = false;
    public static Command staticGet_DEFAULT() {
        if (!GameInputMappingCanvas.staticSet_DEFAULT) {
            GameInputMappingCanvas.staticSet_DEFAULT = true;
            GameInputMappingCanvas.DEFAULT = new Command("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
        }
        return GameInputMappingCanvas.DEFAULT;
    }
    private ProcessPaintable paintable;
    private InputMappingHelpPaintable helpPaintable;
    public ColorFillBasePaintable colorFillPaintable;
    private PersistentInputMapping inputMapping;
    private GameKey NONE;
    private AbeClientInformationInterface abeClientInformation;
    private GameKey selectedGameKey;
    private Input selectedInput;
    private InputFactory inputFactory;

    // Java field initializers run after the base constructor
    private void initFieldsGameInputMappingCanvas() {
    
    
    
    
    this.NONE = GameKeyFactory.getInstance().NONE;
    
    this.selectedGameKey = this.NONE;
    this.selectedInput = this.NONE;
    this.inputFactory = InputFactory.getInstance();
    }
    

    public GameInputMappingCanvas(AbeClientInformationInterface abeClientInformation, CommandListener commandListener, AllBinaryGameLayerManager allBinaryGameLayerManager, HelpPaintable helpPaintable) {
        base(commandListener, GameInputMappingCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor());
        this.initFieldsGameInputMappingCanvas();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        if (helpPaintable == null) {
            JSystem.fatal(new JException("Exception", "Help Paintable Exception"));
        }
        this.abeClientInformation = abeClientInformation;
        this.helpPaintable = ((InputMappingHelpPaintable) helpPaintable);
        this.inputMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance();
        this.paintable = new ProcessPaintable();
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
    }
    

    public override void close() {
        base.close();
        this.paintable.process();
        this.selectedGameKey = this.NONE;
        this.selectedInput = this.NONE;
        this.update();
    }
    

    public override void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.addCommand(GameInputMappingCanvas.staticGet_DEFAULT());
        this.addCommand(GameInputMappingInstructionsCanvas.DISPLAY);
        this.setCommandListener(cmdListener);
    }
    

    public override void keyPressed(int32 keyCode) {
        this.keyPressedByDevice(keyCode, 0);
    }
    

    public override void keyReleased(int32 keyCode) {
        this.keyReleasedByDevice(keyCode, 0);
    }
    

    public override void keyRepeated(int32 keyCode) {
        this.keyRepeatedByDevice(keyCode, 0);
    }
    

    public override void keyPressedByDevice(int32 keyCode, int32 deviceId) {
        this.addGameKey(keyCode, false);
        base.keyPressedByDevice(keyCode, 0);
    }
    

    private void addGameKey(int32 keyCode, bool repeated) {
        {
            this.logUtil.putF(new StringMaker().append("Raw Device Key Code: ").append(Integer.toHexString(keyCode)).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            Input input = this.inputFactory.getInstanceById(keyCode);
            this.processInputMapping(gameKey, input);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void processInputMapping(GameKey gameKey, Input input) {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("Start Passed GameKey: ");
        stringBuffer.append(this.stringUtil.toString1(gameKey));
        stringBuffer.append(" Input: ");
        stringBuffer.append(this.stringUtil.toString1(input));
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.PROCESS);
        if (this.selectedGameKey != this.NONE) {
            this.gameActionCrud(gameKey, input);
        } else {
            this.setSelectedAction(gameKey);
        }
    }
    

    private void setSelectedAction(GameKey gameKey) {
        this.logUtil.putF(new StringMaker().append("Selected GameKey: ").append(this.stringUtil.toString1(gameKey)).toString(), this, "setSelectedAction");
        this.selectedGameKey = gameKey;
        this.selectedInput = this.NONE;
        this.helpPaintable.update(this.selectedGameKey, this.selectedInput);
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    private void gameActionCrud(GameKey gameKey, Input input) {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("Start GameKey: ");
        stringBuffer.append(this.stringUtil.toString1(this.selectedGameKey));
        stringBuffer.append(" Input: ");
        stringBuffer.append(this.stringUtil.toString1(this.selectedInput));
        this.logUtil.putF(stringBuffer.toString(), this, "gameActionCrud");
        if (this.selectedInput == this.NONE) {
            BasicArrayList list = this.inputMapping.getInputMapping().getMappedInput(this.selectedGameKey);
            bool isInputAlreadyMappedToSelectedAction = list.contains(input);
            if (isInputAlreadyMappedToSelectedAction) {
                this.logUtil.putF(new StringMaker().append("Already Mapped Input: ").append(this.stringUtil.toString1(input)).toString(), this, "gameActionCrud");
                this.selectedInput = input;
                this.helpPaintable.update(this.selectedGameKey, this.selectedInput);
                this.repaintBehavior.onChangeRepaint(this);
            } else {
                this.addNewMapping(gameKey, input);
            }
        } else if (this.inputMapping.isDelete(input)) {
            this.deleteCurrentMapping();
        } else {
            this.setSelectedAction(gameKey);
        }
    }
    

    private void addNewMapping(GameKey gameKey, Input input) {
        string METHOD_NAME = "addNewMapping";
        this.logUtil.putF(this.commonStrings.START, this, METHOD_NAME);
        bool isInputAlreadyMapped = this.inputMapping.getInputMapping().isMapped(input);
        if (!isInputAlreadyMapped && !this.inputMapping.isSystemInput(input)) {
            StringMaker stringBuffer = new StringMaker();
            stringBuffer.append("Add Key Mapping : GameKey: ");
            stringBuffer.append(this.stringUtil.toString1(this.selectedGameKey));
            stringBuffer.append(" Input: ");
            stringBuffer.append(this.stringUtil.toString1(this.selectedInput));
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            this.inputMapping.getInputMapping().add(this.selectedGameKey, input);
            this.selectedInput = input;
            this.update();
        } else {
            this.logUtil.putF("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to", this, METHOD_NAME);
            this.setSelectedAction(gameKey);
        }
    }
    

    private void deleteCurrentMapping() {
        string METHOD_NAME = "deleteCurrentMapping";
        BasicArrayList list = this.inputMapping.getInputMapping().getMappedInput(this.selectedGameKey);
        if (list.size() > 1) {
            StringMaker stringBuffer = new StringMaker();
            stringBuffer.append("Start GameKey: ");
            stringBuffer.append("Remove Key Mapping: GameKey: ");
            stringBuffer.append(this.stringUtil.toString1(this.selectedGameKey));
            stringBuffer.append(" Input: ");
            stringBuffer.append(this.stringUtil.toString1(this.selectedInput));
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            this.inputMapping.getInputMapping().remove(this.selectedGameKey, this.selectedInput);
            this.selectedInput = this.NONE;
            this.update();
        } else {
            this.logUtil.putF("Can't Remove Last Key Mapping", this, METHOD_NAME);
        }
    }
    

    public virtual void setDefault() {
        this.inputMapping.setDefault(this.abeClientInformation);
        this.helpPaintable.update(this.NONE, this.NONE);
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    public override void update() {
        this.inputMapping.update(this.abeClientInformation);
        this.helpPaintable.update(this.selectedGameKey, this.selectedInput);
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    public override void paint(Graphics graphics) {
        this.colorFillPaintable.paint(graphics);
        this.helpPaintable.paint(graphics);
        this.paintable.paint(graphics);
        base.paint(graphics);
    }
}

