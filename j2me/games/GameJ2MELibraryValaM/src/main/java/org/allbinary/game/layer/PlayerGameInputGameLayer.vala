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
// package org.allbinary.game.layer
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.input.PlayerGameInput
// import org.allbinary.game.input.PlayerGameInputCompositeInterface
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.view.StaticViewPosition

public class PlayerGameInputGameLayer : AllBinaryGameLayer, PlayerGameInputCompositeInterface, GameInputInterface, NamedInterface {
    private PlayerGameInput playerGameInput;

    // Java field initializers run after the base constructor
    private void initFieldsPlayerGameInputGameLayer() {
    
    }
    

    public PlayerGameInputGameLayer(int32 playerInputId) {
        base(StringUtil.getInstance().EMPTY_STRING, new Rectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0), new StaticViewPosition(0, 0, 0));
        this.initFieldsPlayerGameInputGameLayer();
        this.playerGameInput = new PlayerGameInput(this.getGameKeyEventList(), new BasicArrayListD(), playerInputId);
        CanvasStrings canvasStrings = CanvasStrings.getInstance();
        this.logUtil.putF("Danger Danger Danger: Should Not Be Called Except For Testing Input", this, canvasStrings.PAINT);
    }
    

    public virtual PlayerGameInput getPlayerGameInput() {
        return this.playerGameInput;
    }
    

    public virtual void initInputProcessors() {
    }
    

    public override void processInput(AllBinaryLayerManager myManager) {
    }
    

    public override void paint(Graphics graphics) {
    }
}

