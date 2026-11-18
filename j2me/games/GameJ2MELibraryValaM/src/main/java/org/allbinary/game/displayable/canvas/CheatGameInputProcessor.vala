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
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.PlayerGameInput
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventUtil
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.layer.special.SpecialGameInputFactory
// import org.allbinary.game.layer.special.SpecialGameInputInterface
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class CheatGameInputProcessor : PlayerGameInput {
    public static SpecialGameInputInterface? inputProcessor;
    private static bool staticSet_inputProcessor = false;
    public static SpecialGameInputInterface staticGet_inputProcessor() {
        if (!CheatGameInputProcessor.staticSet_inputProcessor) {
            CheatGameInputProcessor.staticSet_inputProcessor = true;
            CheatGameInputProcessor.inputProcessor = SpecialGameInputFactory.NO_SPECIAL_GAME_INPUT;
        }
        return CheatGameInputProcessor.inputProcessor;
    }
    private string PROCESS_GAME;
    private AllBinaryGameCanvas gameCanvas;
    private GameKeyFactory gameKeyFactory;

    // Java field initializers run after the base constructor
    private void initFieldsCheatGameInputProcessor() {
    this.PROCESS_GAME = "processGame";
    
    this.gameKeyFactory = GameKeyFactory.getInstance();
    }
    

    public CheatGameInputProcessor(AllBinaryGameCanvas gameCanvas) {
        base(new BasicArrayListD(), new BasicArrayListD(), -1);
        this.initFieldsCheatGameInputProcessor();
        this.gameCanvas = gameCanvas;
    }
    

    public override void update() {
        {
            AllBinaryGameLayerManager gameLayerManager = this.gameCanvas.getLayerManager();
            BasicArrayList list = this.getGameKeyEventList();
            int32 size = list.size();
            for (int32 index = 0; index < size; index++) {
                JObject anyType = list.objectArray[index];
                int32 key = GameKeyEventUtil.getKey(anyType);
                if (key == this.gameKeyFactory.LEVEL_DOWN.getId()) {
                    CheatGameInputProcessor.staticGet_inputProcessor().strafeLeft();
                    break;
                } else if (key == this.gameKeyFactory.LEVEL_UP.getId()) {
                    CheatGameInputProcessor.staticGet_inputProcessor().strafeRight();
                    break;
                }
                if (key == this.gameKeyFactory.LEFT.getId()) {
                    CheatGameInputProcessor.staticGet_inputProcessor().left();
                    break;
                } else if (key == this.gameKeyFactory.RIGHT.getId()) {
                    CheatGameInputProcessor.staticGet_inputProcessor().right();
                    break;
                } else if (key == this.gameKeyFactory.UP.getId()) {
                    CheatGameInputProcessor.staticGet_inputProcessor().up();
                    break;
                } else if (key == this.gameKeyFactory.DOWN.getId()) {
                    CheatGameInputProcessor.staticGet_inputProcessor().down();
                    break;
                } else if (key == this.gameKeyFactory.KEY_NUM1.getId()) {
                    CheatGameInputProcessor.staticGet_inputProcessor().special1(gameLayerManager, GameKeyEvent.NONE);
                    break;
                } else if (key == this.gameKeyFactory.KEY_NUM3.getId()) {
                    CheatGameInputProcessor.staticGet_inputProcessor().special2(gameLayerManager, GameKeyEvent.NONE);
                    break;
                }
            }
            list.clear();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

