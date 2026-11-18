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
// import org.allbinary.game.configuration.event.GameFeatureEvent
// import org.allbinary.game.configuration.event.GameFeatureEventHandler
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

public class GameConfiguration : JObject {
    private static int32?? MIN_VALUE;
    private static bool staticSet_MIN_VALUE = false;
    private static int32? staticGet_MIN_VALUE() {
        if (!GameConfiguration.staticSet_MIN_VALUE) {
            GameConfiguration.staticSet_MIN_VALUE = true;
            GameConfiguration.MIN_VALUE = Integer.MIN_VALUE;
        }
        return GameConfiguration.MIN_VALUE;
    }
    private string name;
    private int32? defaultValue;
    private int32? value;
    private int32? minValue;
    private int32? maxValue;
    private bool modifiable;

    // Java field initializers run after the base constructor
    private void initFieldsGameConfiguration() {
    this.name = StringUtil.getInstance().EMPTY_STRING;
    this.defaultValue = SmallIntegerSingletonFactory.getInstance().getAt(0);
    this.value = GameConfiguration.staticGet_MIN_VALUE();
    this.minValue = this.defaultValue;
    this.maxValue = this.defaultValue;
    this.modifiable = BooleanFactory.getInstance().TRUE_;
    }
    

    public GameConfiguration(string name, int32? defaultValue, int32? minValue, int32? maxValue) {
        base();
        this.initFieldsGameConfiguration();
        this.setName(name);
        this.setDefaultValue(defaultValue);
        this.value = this.getDefaultValue();
        this.setMinValue(minValue);
        this.setMaxValue(maxValue);
        GameConfigurationSingleton.getInstance().getHashtable().put(JString.box(this.getName()), this);
    }
    

    public virtual void setValue(int32? value) {
        if (this.value != value) {
            int32? oldValue = this.value;
            this.value = value;
            GameFeatureEventHandler.getInstance().fireEvent(new GameFeatureEvent(this, new StringMaker().append(this.name).append(" value: from: ").appendint(((int32) (((int32) oldValue)))).append(" to ").appendint(((int32) (((int32) this.value)))).toString()));
        }
    }
    

    public virtual int32? getValue() {
        return this.value;
    }
    

    public virtual void setMaxValue(int32? maxValue) {
        this.maxValue = maxValue;
    }
    

    public virtual int32? getMaxValue() {
        return this.maxValue;
    }
    

    public virtual void setMinValue(int32? minValue) {
        this.minValue = minValue;
    }
    

    public virtual int32? getMinValue() {
        return this.minValue;
    }
    

    public virtual void setName(string name) {
        this.name = name;
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    public virtual void setDefaultValue(int32? defaultValue) {
        this.defaultValue = defaultValue;
    }
    

    public virtual int32? getDefaultValue() {
        return this.defaultValue;
    }
    

    public virtual void setDefault() {
        this.setValue(this.getDefaultValue());
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("Name: ");
        stringBuffer.append(this.name);
        stringBuffer.append(" Min: ");
        stringBuffer.appendint(((int32) (((int32) this.getMinValue()))));
        stringBuffer.append(" Max: ");
        stringBuffer.appendint(((int32) (((int32) this.getMaxValue()))));
        stringBuffer.append(" Value: ");
        stringBuffer.appendint(((int32) (((int32) this.getValue()))));
        stringBuffer.append(" Default: ");
        stringBuffer.appendint(((int32) (((int32) this.getDefaultValue()))));
        stringBuffer.append(" Modifiable: ");
        stringBuffer.appendboolean(this.isModifiable());
        return stringBuffer.toString();
    }
    

    public virtual void setModifiable(bool modifiable) {
        this.modifiable = modifiable;
    }
    

    public virtual bool isModifiable() {
        return this.modifiable;
    }
}

