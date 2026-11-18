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
// import java.util.Enumeration
// import javax.microedition.lcdui.ChoiceGroup
// import org.allbinary.TsUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.EnumerationUtil
// import org.allbinary.util.HashtableUtil

public class GameFeatureUtil : JObject {
    private static GameFeatureUtil? instance;
    private static bool staticSet_instance = false;
    private static GameFeatureUtil staticGet_instance() {
        if (!GameFeatureUtil.staticSet_instance) {
            GameFeatureUtil.staticSet_instance = true;
            GameFeatureUtil.instance = new GameFeatureUtil();
        }
        return GameFeatureUtil.instance;
    }
    public LogUtil logUtil;
    private TsUtil tsUtil;
    private EnumerationUtil enumerationUtil;
    public string ON_GAME_FEATURE_CHANGE;
    public string GAME_FEATURE_CHANGED;

    // Java field initializers run after the base constructor
    private void initFieldsGameFeatureUtil() {
    this.logUtil = LogUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.enumerationUtil = EnumerationUtil.getInstance();
    this.ON_GAME_FEATURE_CHANGE = "onGameFeatureChange";
    this.GAME_FEATURE_CHANGED = "Game Feature Changed: ";
    }

    public GameFeatureUtil() {
        base();
        this.initFieldsGameFeatureUtil();
    }
    

    public static GameFeatureUtil getInstance() {
        return GameFeatureUtil.staticGet_instance();
    }
    

    public virtual void setDefault(ChoiceGroup choiceGroup) {
        StringMaker stringBuffer = new StringMaker();
        string METHOD_NAME = "setDefault";
        string SELECTED_ARRAY_RETURN = "selectedArray_return[";
        string SELECTED_SEP = "] = ";
        bool[] selectedArray_return = new bool[choiceGroup.size()];
        int32 total = choiceGroup.getSelectedFlags(selectedArray_return);
        stringBuffer.append("Multiple Total Choices: ");
        stringBuffer.appendint(total);
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
        Features features = Features.getInstance();
        for (int32 index = 0; index < selectedArray_return.length; index++) {
            bool isSelected = selectedArray_return[index];
            stringBuffer.@delete(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            string selectedChoiceLabel = choiceGroup.getString(index);
            Feature gameFeature = Feature.getInstance1(selectedChoiceLabel);
            if (features.isDefault(gameFeature)) {
                features.add(gameFeature);
                choiceGroup.setSelectedIndex(index, true);
            } else {
                features.remove(gameFeature);
                choiceGroup.setSelectedIndex(index, false);
            }
        }
    }
    

    public virtual void updateMultiple(ChoiceGroup choiceGroup) {
        StringMaker stringBuffer = new StringMaker();
        string METHOD_NAME = "updateMultiple";
        string SELECTED_ARRAY_RETURN = "selectedArray_return[";
        string SELECTED_SEP = "] = ";
        bool[] selectedArray_return = new bool[choiceGroup.size()];
        int32 total = choiceGroup.getSelectedFlags(selectedArray_return);
        stringBuffer.append("Multiple Total Choices: ");
        stringBuffer.appendint(total);
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
        Features features = Features.getInstance();
        for (int32 index = 0; index < selectedArray_return.length; index++) {
            bool isSelected = selectedArray_return[index];
            stringBuffer.@delete(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            string selectedChoiceLabel = choiceGroup.getString(index);
            Feature gameFeature = Feature.getInstance1(selectedChoiceLabel);
            if (!isSelected && features.isFeature(gameFeature)) {
                features.remove(gameFeature);
            } else if (isSelected && !features.isFeature(gameFeature)) {
                features.add(gameFeature);
            }
        }
    }
    

    public virtual void updateExclusiveForChoiceGroup(ChoiceGroup choiceGroup) {
        StringMaker stringBuffer = new StringMaker();
        string METHOD_NAME = "updateExclusive";
        string SELECTED_ARRAY_RETURN = "selectedArray_return[";
        string SELECTED_SEP = "] = ";
        bool[] selectedArray_return = new bool[choiceGroup.size()];
        int32 total = choiceGroup.getSelectedFlags(selectedArray_return);
        stringBuffer.append("Exclusive Total Choices: 1==");
        stringBuffer.appendint(total);
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
        for (int32 index = 0; index < selectedArray_return.length; index++) {
            bool isSelected = selectedArray_return[index];
            stringBuffer.@delete(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            if (isSelected) {
                string selectedChoiceLabel = choiceGroup.getString(index);
                this.updateExclusive(selectedChoiceLabel);
            }
        }
    }
    

    public virtual bool isExclusive(string itemLabel) {
        Enumeration enumeration = GameFeatureChoiceGroups.getExclusiveInstance().@get().keys();
        string name = null;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            name = JString.unbox(this.enumerationUtil.nextElement(enumeration));
            if (this.tsUtil.compareTo(itemLabel, name) == 0) {
                return true;
            }
        }
        return false;
    }
    

    private void updateExclusive(string selectedChoiceLabel) {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(selectedChoiceLabel).toString(), this, "updateExclusive");
        Feature gameFeature = Feature.getInstance1(selectedChoiceLabel);
        ABHashtable hashtable = GameFeatureChoiceGroups.getExclusiveInstance().@get();
        JObject[] objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable);
        BasicArrayList basicArrayList = null;
        JObject anyType = null;
        int32 size = objectArray.length;
        for (int32 index = 0; index < size; index++) {
            anyType = ((JObject) objectArray[index]);
            basicArrayList = ((BasicArrayList) hashtable.@get(anyType));
            this.updateExclusiveList(gameFeature, basicArrayList);
        }
    }
    

    public virtual void updateExclusiveList(Feature gameFeature, BasicArrayList list) {
        if (list.contains(gameFeature)) {
            Features features = Features.getInstance();
            int32 addIndex = list.indexOf(gameFeature);
            int32 size = list.size();
            for (int32 index = 0; index < size; index++) {
                if (addIndex != index) {
                    features.remove(((Feature) list.objectArray[index]));
                } else {
                    features.add(((Feature) list.objectArray[index]));
                }
            }
        }
    }
}

