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
// package org.allbinary.game.input
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.layer.AllBinaryGameLayer
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.view.ViewPosition

public class TestingInputSingleton : AllBinaryGameLayer, GameInputInterface, NamedInterface {
    private static TestingInputSingleton? instance;
    private static bool staticSet_instance = false;
    private static TestingInputSingleton staticGet_instance() {
        if (!TestingInputSingleton.staticSet_instance) {
            TestingInputSingleton.staticSet_instance = true;
            TestingInputSingleton.instance = new TestingInputSingleton();
        }
        return TestingInputSingleton.instance;
    }
    public GameInputProcessor[] inputProcessorArray;
    private PaintableInterface testInputPaintable;

    // Java field initializers run after the base constructor
    private void initFieldsTestingInputSingleton() {
    this.inputProcessorArray = new GameInputProcessor[InputFactory.getInstance().MAX_];
    this.testInputPaintable = NullPaintable.getInstance();
    }
    

    public static TestingInputSingleton getInstance() {
        return TestingInputSingleton.staticGet_instance();
    }
    

    public TestingInputSingleton() {
        base(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPosition.getInstanceD());
        this.initFieldsTestingInputSingleton();
        GameInputProcessorUtil.init(this.inputProcessorArray);
    }
    

    public virtual void initInputProcessors() {
    }
    

    public virtual void initInputProcessorsForTestInput(TestInputInterface aTestInputInterface) {
        TestInputInterface testInputInterface = aTestInputInterface;
        this.testInputPaintable = testInputInterface;
        this.inputProcessorArray[Canvas.UP] = new GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            public virtual void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
                testInputInterface.up();
            } */;
        this.inputProcessorArray[Canvas.DOWN] = new GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            public virtual void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
                testInputInterface.down();
            } */;
        this.inputProcessorArray[Canvas.LEFT] = new GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            public virtual void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
                testInputInterface.left();
            } */;
        this.inputProcessorArray[Canvas.RIGHT] = new GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            public virtual void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
                testInputInterface.right();
            } */;
        this.inputProcessorArray[Canvas.KEY_NUM7] = new GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            public virtual void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
                testInputInterface.strafeLeft();
            } */;
        this.inputProcessorArray[Canvas.KEY_NUM9] = new GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            public virtual void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
                testInputInterface.strafeRight();
            } */;
        GameInputProcessorUtil.init(this.inputProcessorArray);
    }
    

    public virtual void processInputList(AllBinaryLayerManager allbinaryLayerManager, BasicArrayList list) {
        int32 key = 0;
        GameKeyEvent gameKeyEvent = null;
        int32 size = list.size();
        for (int32 index = 0; index < size; index++) {
            gameKeyEvent = (((GameKeyEvent) list.objectArray[index]));
            key = gameKeyEvent.getKey();
            this.inputProcessorArray[key].processEvent(allbinaryLayerManager, GameKeyEvent.NONE);
        }
    }
    

    public override void processInput(AllBinaryLayerManager allbinaryLayerManager) {
        this.processInputList(allbinaryLayerManager, this.getGameKeyEventList());
        this.getGameKeyEventList().clear();
    }
    

    public override void paint(Graphics graphics) {
        this.testInputPaintable.paint(graphics);
    }
    

    public override bool implmentsGameInputInterface() {
        return true;
    }
}

