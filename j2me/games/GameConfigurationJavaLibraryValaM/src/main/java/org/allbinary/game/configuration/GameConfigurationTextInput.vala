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
// import javax.microedition.lcdui.TextField
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.ABHashtable

public class GameConfigurationTextInput : JObject {
    private static ABHashtable? hashtable;
    private static bool staticSet_hashtable = false;
    private static ABHashtable staticGet_hashtable() {
        if (!GameConfigurationTextInput.staticSet_hashtable) {
            GameConfigurationTextInput.staticSet_hashtable = true;
            GameConfigurationTextInput.hashtable = StdUtil.getInstance().createHashtable();
        }
        return GameConfigurationTextInput.hashtable;
    }
    public static GameConfigurationTextInput? SIMULATOR_IP;
    private static bool staticSet_SIMULATOR_IP = false;
    public static GameConfigurationTextInput staticGet_SIMULATOR_IP() {
        if (!GameConfigurationTextInput.staticSet_SIMULATOR_IP) {
            GameConfigurationTextInput.staticSet_SIMULATOR_IP = true;
            GameConfigurationTextInput.SIMULATOR_IP = new GameConfigurationTextInput("IP: ", "192.168.1.3");
        }
        return GameConfigurationTextInput.SIMULATOR_IP;
    }
    public static GameConfigurationTextInput? SIMULATOR_PORT;
    private static bool staticSet_SIMULATOR_PORT = false;
    public static GameConfigurationTextInput staticGet_SIMULATOR_PORT() {
        if (!GameConfigurationTextInput.staticSet_SIMULATOR_PORT) {
            GameConfigurationTextInput.staticSet_SIMULATOR_PORT = true;
            GameConfigurationTextInput.SIMULATOR_PORT = new GameConfigurationTextInput("Port: ", "8010");
        }
        return GameConfigurationTextInput.SIMULATOR_PORT;
    }
    private string label;
    private string text;

    // Java field initializers run after the base constructor
    private void initFieldsGameConfigurationTextInput() {
    this.label = StringUtil.getInstance().EMPTY_STRING;
    this.text = StringUtil.getInstance().EMPTY_STRING;
    }
    

    public GameConfigurationTextInput(string label, string text) {
        base();
        this.initFieldsGameConfigurationTextInput();
        this.setText(text);
        this.setLabel(label);
        GameConfigurationTextInput.staticGet_hashtable().put(this.getLabel(), this);
    }
    

    public static void update(TextField textField) {
        JObject anyType = ((JObject) textField.getLabel());
        GameConfigurationTextInput gameConfigurationTextInput = ((GameConfigurationTextInput) GameConfigurationTextInput.staticGet_hashtable().@get(anyType));
        gameConfigurationTextInput.setText(textField.getString());
    }
    

    public virtual void setText(string text) {
        this.text = text;
    }
    

    public virtual string getText() {
        return this.text;
    }
    

    public virtual void setLabel(string label) {
        this.label = label;
    }
    

    public virtual string getLabel() {
        return this.label;
    }
    

    public static ABHashtable getHashtable() {
        return GameConfigurationTextInput.staticGet_hashtable();
    }
}

