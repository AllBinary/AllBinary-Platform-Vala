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
// package org.allbinary.game.configuration.feature
// import javax.microedition.lcdui.ChoiceGroup
// import javax.microedition.lcdui.Item
// import javax.microedition.lcdui.ItemStateListener
// import org.allbinary.game.configuration.GameConfigurationGauge
// import org.allbinary.game.configuration.GameConfigurationUtil
// import org.allbinary.game.configuration.GameOptionsForm
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class GameFeatureItemStateListener : JObject, ItemStateListener {
    private static BasicArrayList? toggleList;
    private static bool staticSet_toggleList = false;
    private static BasicArrayList staticGet_toggleList() {
        if (!GameFeatureItemStateListener.staticSet_toggleList) {
            GameFeatureItemStateListener.staticSet_toggleList = true;
            GameFeatureItemStateListener.toggleList = new BasicArrayListD();
        }
        return GameFeatureItemStateListener.toggleList;
    }
    public LogUtil logUtil;
    private GameOptionsForm gameOptionsForm;

    // Java field initializers run after the base constructor
    private void initFieldsGameFeatureItemStateListener() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    public GameFeatureItemStateListener(GameOptionsForm gameOptionsForm) {
        base();
        this.initFieldsGameFeatureItemStateListener();
        this.gameOptionsForm = gameOptionsForm;
        GameFeatureFactory gameFeatureFactory = GameFeatureFactory.getInstance();
        GameFeatureItemStateListener.add(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR);
        GameFeatureItemStateListener.add(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR);
        GameFeatureItemStateListener.add(gameFeatureFactory.DAMAGE_FLOATERS);
        GameFeatureItemStateListener.add(gameFeatureFactory.DROPPED_ITEMS);
        GameFeatureItemStateListener.add(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR);
        GameFeatureItemStateListener.add(gameFeatureFactory.HEALTH_BARS);
        GameFeatureItemStateListener.add(gameFeatureFactory.SOUND);
        GameFeatureItemStateListener.add(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR);
    }
    

    public static void add(GameFeature gameFeature) {
        if (!GameFeatureItemStateListener.staticGet_toggleList().contains(gameFeature)) {
            GameFeatureItemStateListener.staticGet_toggleList().add(gameFeature);
        }
    }
    

    public virtual void itemStateChanged(Item item) {
        {
            string itemLabel = item.getLabel();
            this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).toString(), this, "itemStateChanged");
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().change(this.gameOptionsForm, ((GameConfigurationGauge) item));
            } else if ((item is ChoiceGroup)) {
                GameFeatureUtil gameFeatureUtil = GameFeatureUtil.getInstance();
                if (gameFeatureUtil.isExclusive(itemLabel)) {
                    gameFeatureUtil.updateExclusiveForChoiceGroup(((ChoiceGroup) item));
                } else {
                    gameFeatureUtil.updateMultiple(((ChoiceGroup) item));
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

