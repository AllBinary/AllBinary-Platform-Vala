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
// import javax.microedition.lcdui.NullImage
// import org.allbinary.MIDPUtil
// import org.allbinary.game.configuration.GameConfigurationGauge
// import org.allbinary.game.configuration.GameConfigurationUtil
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.HashtableUtil

public class GameFeatureFormUtil : JObject {
    private static GameFeatureFormUtil? instance;
    private static bool staticSet_instance = false;
    private static GameFeatureFormUtil staticGet_instance() {
        if (!GameFeatureFormUtil.staticSet_instance) {
            GameFeatureFormUtil.staticSet_instance = true;
            GameFeatureFormUtil.instance = new GameFeatureFormUtil();
        }
        return GameFeatureFormUtil.instance;
    }
    public LogUtil logUtil;
    private MIDPUtil meUtil;

    // Java field initializers run after the base constructor
    private void initFieldsGameFeatureFormUtil() {
    this.logUtil = LogUtil.getInstance();
    this.meUtil = MIDPUtil.getInstance();
    }

    public GameFeatureFormUtil() {
        base();
        this.initFieldsGameFeatureFormUtil();
    }
    

    public static GameFeatureFormUtil getInstance() {
        return GameFeatureFormUtil.staticGet_instance();
    }
    

    public virtual ChoiceGroup getChoiceGroup(ABHashtable hashtable, string name, int32 option) {
        StringMaker stringMaker = new StringMaker();
        ChoiceGroup choiceGroup = new ChoiceGroup(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY);
        BasicArrayList list = ((BasicArrayList) hashtable.@get(((JObject) name)));
        Features features = Features.getInstance();
        string ADD_CHOICE = ": Adding Choice: ";
        string GET_CHOICE_GROUP = "getChoiceGroup";
        int32 size = list.size();
        for (int32 index = 0; index < size; index++) {
            Feature gameFeature = ((Feature) list.objectArray[index]);
            stringMaker.@delete(0, stringMaker.length());
            this.logUtil.putF(stringMaker.append(name).append(ADD_CHOICE).append(gameFeature.toString()).toString(), this, GET_CHOICE_GROUP);
            choiceGroup.append(gameFeature.toString(), NullImage.NULL_IMAGE);
            if (features.isFeature(gameFeature)) {
                choiceGroup.setSelectedIndex(index, true);
            }
        }
        return choiceGroup;
    }
    

    public virtual void addChoiceGroup(CommandForm form, ABHashtable hashtable, int32 option) {
        StringMaker stringMaker = new StringMaker();
        string ADDING_CHOICE_GROUP = "Adding Choice Group: ";
        string ADD_CHOICE_GROUP = "addChoiceGroup";
        int32 size = hashtable.size();
        JObject[] objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable);
        string name = null;
        for (int32 index = 0; index < size; index++) {
            name = JString.unbox(objectArray[index]);
            stringMaker.@delete(0, stringMaker.length());
            this.logUtil.putF(stringMaker.append(ADDING_CHOICE_GROUP).append(name).toString(), this, ADD_CHOICE_GROUP);
            this.meUtil.appendItem(form, this.getChoiceGroup(hashtable, name, option));
        }
    }
    

    public virtual void setDefault(CommandForm form) {
        int32 size = form.size();
        for (int32 index = 0; index < size; index++) {
            Item item = form.@get(index);
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().setDefault(((GameConfigurationGauge) item));
            } else if ((item is ChoiceGroup)) {
                GameFeatureUtil.getInstance().setDefault(((ChoiceGroup) item));
            }
        }
    }
}

