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
// import org.allbinary.game.input.InputProcessor
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.event.DownGameKeyEventHandler
// import org.allbinary.game.input.event.DownKeyEventHandler
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.input.event.UpGameKeyEventHandler
// import org.allbinary.game.input.mapping.InputToGameKeyMapping
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker

public class GameCanvasInputProcessor : InputProcessor {
    public LogUtil logUtil;
    private AllBinaryGameCanvas allBinaryGameCanvas;
    private DownGameKeyEventHandler downGameKeyEventHandler;
    private UpGameKeyEventHandler upGameKeyEventHandler;
    private DownKeyEventHandler downKeyEventHandler;
    private SmallIntegerSingletonFactory smallIntegerSingletonFactory;
    private InputToGameKeyMapping inputToGameKeyMapping;
    private GameKey NONE;
    private GameKeyEventFactory gameKeyEventFactory;

    // Java field initializers run after the base constructor
    private void initFieldsGameCanvasInputProcessor() {
    this.logUtil = LogUtil.getInstance();
    
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    this.downKeyEventHandler = DownKeyEventHandler.getInstance();
    this.smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
    this.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping();
    this.NONE = GameKeyFactory.getInstance().NONE;
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    }
    

    public GameCanvasInputProcessor(AllBinaryGameCanvas allBinaryGameCanvas) {
        base();
        this.initFieldsGameCanvasInputProcessor();
        this.allBinaryGameCanvas = allBinaryGameCanvas;
        this.inputToGameKeyMapping.init(this.allBinaryGameCanvas);
    }
    

    public override void keyPressedByDevice(int32 keyCode, int32 deviceId) {
        {
            GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this.allBinaryGameCanvas, keyCode);
            if (gameKey != this.NONE) {
                GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this.allBinaryGameCanvas, gameKey);
                this.downGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(new StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            }
            int32? keyCodeAsInteger = this.smallIntegerSingletonFactory.getAtNoThrow(keyCode);
            this.downKeyEventHandler.fireEventI(keyCodeAsInteger);
            this.downKeyEventHandler.getInstanceForDevice(deviceId).fireEventI(keyCodeAsInteger);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void keyReleasedByDevice(Canvas canvas, int32 keyCode, int32 deviceId) {
        this.removeGameKeyEvent(canvas, keyCode, deviceId, false);
    }
    

    private void removeGameKeyEvent(Canvas canvas, int32 keyCode, int32 deviceId, bool repeated) {
        {
            GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(canvas, keyCode);
            if (gameKey != this.NONE) {
                GameKeyEventSourceInterface gameKeyEventSourceInterface = ((GameKeyEventSourceInterface) canvas);
                GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey);
                this.upGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(new StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT);
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

