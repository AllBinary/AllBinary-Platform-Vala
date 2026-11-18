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
// import org.allbinary.game.GameInfo
// import org.allbinary.game.input.NullPlayerGameInputComposite
// import org.allbinary.game.input.PlayerGameInputCompositeInterface
// import org.allbinary.graphics.ItemColorFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.layer.LayerProcessor
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.util.BasicArrayList

public class AllBinaryGameLayerManager : AllBinaryLayerManager {
    private static JObject? NULL_ALLBINARY_LAYER_MANAGER;
    private static bool staticSet_NULL_ALLBINARY_LAYER_MANAGER = false;
    private static JObject staticGet_NULL_ALLBINARY_LAYER_MANAGER() {
        if (!AllBinaryGameLayerManager.staticSet_NULL_ALLBINARY_LAYER_MANAGER) {
            AllBinaryGameLayerManager.staticSet_NULL_ALLBINARY_LAYER_MANAGER = true;
            AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER = NullUtil.getInstance().NULL_OBJECT;
        }
        return AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER;
    }
    public static int32?? ID;
    private static bool staticSet_ID = false;
    public static int32? staticGet_ID() {
        if (!AllBinaryGameLayerManager.staticSet_ID) {
            AllBinaryGameLayerManager.staticSet_ID = true;
            AllBinaryGameLayerManager.ID = SmallIntegerSingletonFactory.getInstance().getAt(22);
        }
        return AllBinaryGameLayerManager.ID;
    }
    private BasicColor backgroundBasicColor;
    private BasicColor foregroundBasicColor;
    private GameInfo gameInfo;
    private PlayerGameInputCompositeInterface playerGameInputCompositeInterface;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinaryGameLayerManager() {
    
    
    
    this.playerGameInputCompositeInterface = NullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE;
    }
    

    public static AllBinaryGameLayerManager getNullInstance() {
        if (AllBinaryGameLayerManager.staticGet_NULL_ALLBINARY_LAYER_MANAGER() == NullUtil.getInstance().NULL_OBJECT) {
            AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER = new AllBinaryGameLayerManager(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE, GameInfo.NONE);
        }
        return ((AllBinaryGameLayerManager) AllBinaryGameLayerManager.staticGet_NULL_ALLBINARY_LAYER_MANAGER());
    }
    

    public AllBinaryGameLayerManager(BasicColor backgroundBasicColor, BasicColor foregroundBasicColor, GameInfo gameInfo) {
        base();
        this.initFieldsAllBinaryGameLayerManager();
        this.backgroundBasicColor = backgroundBasicColor;
        this.foregroundBasicColor = foregroundBasicColor;
        ItemColorFactory itemColorFactory = ItemColorFactory.getInstance();
        itemColorFactory.INVERT_PAINT = this.backgroundBasicColor.intValue();
        itemColorFactory.PAINT = this.foregroundBasicColor.intValue();
        this.gameInfo = gameInfo;
    }
    

    public virtual AllBinaryLayerManager getLayerManager() {
        return this;
    }
    

    public virtual void init() {
    }
    

    public virtual BasicColor getBackgroundBasicColor() {
        return this.backgroundBasicColor;
    }
    

    public virtual void setBackgroundBasicColor(BasicColor backgroundBasicColor) {
        this.backgroundBasicColor = backgroundBasicColor;
        ItemColorFactory.getInstance().INVERT_PAINT = this.backgroundBasicColor.intValue();
    }
    

    public virtual BasicColor getForegroundBasicColor() {
        return this.foregroundBasicColor;
    }
    

    public virtual void setForegroundBasicColor(BasicColor foregroundBasicColor) {
        this.foregroundBasicColor = foregroundBasicColor;
        ItemColorFactory.getInstance().PAINT = this.foregroundBasicColor.intValue();
    }
    

    public virtual GameInfo getGameInfo() {
        return this.gameInfo;
    }
    

    public virtual void setGameInfo(GameInfo gameInfo) {
        this.gameInfo = gameInfo;
    }
    

    public virtual void setLayerProcessorList(BasicArrayList list) {
        LayerProcessor[] layerProcessorInterfaceArray = new LayerProcessor[list.size()];
        int32 size = layerProcessorInterfaceArray.length;
        for (int32 index = 0; index < size; index++) {
            layerProcessorInterfaceArray[index] = ((LayerProcessor) list.objectArray[index]);
        }
        this.setLayerProcessorArray(layerProcessorInterfaceArray);
    }
    

    public virtual void setPlayerGameInputCompositeInterface(PlayerGameInputCompositeInterface playerGameInputCompositeInterface) {
        this.playerGameInputCompositeInterface = playerGameInputCompositeInterface;
    }
    

    public virtual PlayerGameInputCompositeInterface getPlayerGameInputCompositeInterface() {
        return this.playerGameInputCompositeInterface;
    }
}

