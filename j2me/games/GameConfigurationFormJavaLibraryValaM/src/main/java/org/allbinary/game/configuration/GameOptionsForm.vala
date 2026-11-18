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
// package org.allbinary.game.configuration
// import javax.microedition.lcdui.Choice
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Item
// import javax.microedition.lcdui.TextField
// import org.allbinary.MIDPUtil
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.feature.GameFeatureChoiceGroups
// import org.allbinary.game.configuration.feature.GameFeatureFormUtil
// import org.allbinary.game.configuration.feature.GameFeatureItemCommandListener
// import org.allbinary.game.configuration.feature.GameFeatureItemStateListener
// import org.allbinary.game.configuration.feature.SensorFeatureFactory
// import org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton
// import org.allbinary.game.configuration.persistance.KeyValuePersistance
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.input.gyro.OrientationData
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.HashtableUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

public class GameOptionsForm : CommandForm {
    private MIDPUtil meUtil;

    // Java field initializers run after the base constructor
    private void initFieldsGameOptionsForm() {
    this.meUtil = MIDPUtil.getInstance();
    }
    

    public GameOptionsForm(CommandListener commandListener, string title, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) {
        base(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.initFieldsGameOptionsForm();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.addConfiguration();
        GameFeatureFormUtil gameFeatureFormUtil = GameFeatureFormUtil.getInstance();
        gameFeatureFormUtil.addChoiceGroup(this, GameFeatureChoiceGroups.getExclusiveInstance().@get(), Choice.EXCLUSIVE);
        gameFeatureFormUtil.addChoiceGroup(this, GameFeatureChoiceGroups.getMultipleInstance().@get(), Choice.MULTIPLE);
        this.initCommands(commandListener);
        this.setItemStateListener(new GameFeatureItemStateListener(this));
        this.addTextFieldsIfSimulated();
    }
    

    public virtual void closeClientInformation(AbeClientInformationInterface abeClientInformation) {
        base.close();
        this.save(abeClientInformation);
    }
    

    private void addTextFieldsIfSimulated() {
        string key = OrientationData.getInstance().ORIENTATION_SENSOR_INPUT;
        ABHashtable hashtable = GameFeatureChoiceGroups.getExclusiveInstance().@get();
        if (hashtable != null) {
            JObject listCanBeNull = hashtable.@get(key);
            if (listCanBeNull != null) {
                BasicArrayList list = ((BasicArrayList) listCanBeNull);
                if (list.contains(SensorFeatureFactory.getInstance().SIMULATED_ORIENTATION_SENSORS)) {
                    this.addTextFields();
                }
            }
        }
    }
    

    private void addTextFields() {
        ABHashtable hashtable = GameConfigurationTextInput.getHashtable();
        int32 size = hashtable.size();
        JObject[] objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable);
        GameConfigurationTextInput gameConfigurationTextInput = null;
        TextField textField = null;
        for (int32 index = 0; index < size; index++) {
            gameConfigurationTextInput = ((GameConfigurationTextInput) hashtable.@get(((JObject) objectArray[index])));
            textField = new TextField(gameConfigurationTextInput.getLabel(), gameConfigurationTextInput.getText(), 30, TextField.ANY);
            this.meUtil.appendItem(this, textField);
        }
    }
    

    private void addConfiguration() {
        string METHOD_NAME = "addConfiguration";
        string NAME = "Name: ";
        BasicArrayList list = GameConfigurationSingleton.getInstance().getOptionsBasicArrayList();
        Command GAUGE_CHANGE = MyCommandsFactory.getInstance().GAUGE_CHANGE;
        StringMaker stringMaker = new StringMaker();
        int32 size = list.size();
        GameConfiguration gameConfiguration = null;
        GameConfigurationGauge gauge = null;
        for (int32 index = 0; index < size; index++) {
            gameConfiguration = ((GameConfiguration) list.objectArray[index]);
            stringMaker.@delete(0, stringMaker.length());
            this.logUtil.putF(stringMaker.append(NAME).append(gameConfiguration.toString()).toString(), this, METHOD_NAME);
            gauge = new GameConfigurationGauge(gameConfiguration);
            gauge.setDefaultCommand(GAUGE_CHANGE);
            gauge.setItemCommandListener(new GameFeatureItemCommandListener(this));
            this.meUtil.appendItem(this, gauge);
        }
    }
    

    public override void initCommands(CommandListener cmdListener) {
        GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.CLOSE_OPTIONS);
        this.addCommand(gameCommandsFactory.DEFAULT_OPTIONS);
        this.setCommandListener(cmdListener);
    }
    

    public virtual void save(AbeClientInformationInterface abeClientInformation) {
        int32 size = this.size();
        Item item = null;
        for (int32 index = 0; index < size; index++) {
            item = this.@get(index);
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().update(((GameConfigurationGauge) item));
            } else if ((item is TextField)) {
                GameConfigurationTextInput.update(((TextField) item));
            }
        }
        GameConfigurationUtil.getInstance().updateCompetitionValue();
        ABHashtable hashtable = StdUtil.getInstance().createHashtable();
        GameConfiguration SCALE = GameConfigurationCentral.getInstance().SCALE;
        hashtable.put(JString.box(SCALE.getName()), JString.box((SCALE.getValue().intValue()).to_string()));
        KeyValuePersistance keyValuePersistance = GameConfigurationPersistanceSingleton.getInstance();
        keyValuePersistance.clear();
        keyValuePersistance.loadAll(abeClientInformation);
        BasicArrayList list = keyValuePersistance.getIds();
        keyValuePersistance.save(abeClientInformation, hashtable);
        int32 size2 = list.size();
        int32? integer = null;
        for (int32 index = 0; index < size2; index++) {
            integer = JNumber.unboxInt(list.objectArray[index]);
            keyValuePersistance.@delete(abeClientInformation, ((int32) integer));
        }
    }
}

