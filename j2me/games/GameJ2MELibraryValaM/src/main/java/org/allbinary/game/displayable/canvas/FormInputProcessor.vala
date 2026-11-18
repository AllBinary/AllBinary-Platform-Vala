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
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyEventSourceInterface
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.game.input.InputProcessor
// import org.allbinary.game.input.PlatformKeyFactory
// import org.allbinary.game.input.event.DownKeyEventHandler
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.input.event.UpGameKeyEventHandler
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

public class FormInputProcessor : InputProcessor {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private GameKeyEventFactory gameKeyEventFactory;
    private DownKeyEventHandler downKeyEventHandler;
    private UpGameKeyEventHandler upGameKeyEventHandler;
    private InputFactory inputFactory;
    private PlatformKeyFactory platformKeyFactory;
    private AllBinaryGameCanvas allBinaryGameCanvas;

    // Java field initializers run after the base constructor
    private void initFieldsFormInputProcessor() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.downKeyEventHandler = DownKeyEventHandler.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    this.inputFactory = InputFactory.getInstance();
    this.platformKeyFactory = PlatformKeyFactory.getInstance();
    
    }
    

    public FormInputProcessor(AllBinaryGameCanvas allBinaryGameCanvas) {
        base();
        this.initFieldsFormInputProcessor();
        this.allBinaryGameCanvas = allBinaryGameCanvas;
    }
    

    public override void keyPressedByDevice(int32 keyCode, int32 deviceId) {
        {
            PreLogUtil.put(new StringMaker().append(this.inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(this.inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), this, this.gameInputStrings.KEY_PRESSED);
            Input input = this.inputFactory.getInstanceById(keyCode);
            GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this.allBinaryGameCanvas, input);
            this.downKeyEventHandler.fireEventForGameKeyEvent(gameKeyEvent);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void keyReleasedByDevice(Canvas canvas, int32 keyCode, int32 deviceId) {
        {
            Input input = this.inputFactory.getInstanceById(keyCode);
            if (this.platformKeyFactory.isEnter(input)) {
                PreLogUtil.put(new StringMaker().append(this.inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(this.inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), this, this.gameInputStrings.KEY_RELEASED);
                GameKey gameKey = GameKeyFactory.getInstance().KEY_NUM0;
                GameKeyEventSourceInterface gameKeyEventSourceInterface = ((GameKeyEventSourceInterface) canvas);
                GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey);
                this.upGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

