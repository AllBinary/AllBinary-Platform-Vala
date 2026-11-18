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
// import org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton
// import org.allbinary.game.configuration.persistance.KeyValuePersistance
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList

public class GameConfigurationCentral : JObject {
    private static JObject? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static JObject staticGet_SINGLETON() {
        if (!GameConfigurationCentral.staticSet_SINGLETON) {
            GameConfigurationCentral.staticSet_SINGLETON = true;
            GameConfigurationCentral.SINGLETON = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameConfigurationCentral.SINGLETON;
    }
    public LogUtil logUtil;
    public GameConfiguration SCALE;
    public GameConfiguration ORIENTATION;
    public GameConfiguration SENSOR_UPDATE_RATE;
    public GameConfiguration VIBRATION;
    public GameConfiguration CHALLENGE_LEVEL;
    public GameConfiguration COLLIDE_DAMAGE;
    public GameConfiguration DURABILITY_CHALLENGE_LEVEL;
    public GameConfiguration SPEED_CHALLENGE_LEVEL;
    public GameConfiguration ATTACK_CHALLENGE_LEVEL;
    public GameConfiguration CONTROL_LEVEL;
    public GameConfiguration PLAYER_INPUT_WAIT;
    public GameConfiguration SPEED;
    public GameConfiguration SOUND_VOLUME;
    public GameConfiguration MAX_GAME_OBJECTS;
    public GameConfiguration MAX_LAYERS;
    private int32 gameControlFidelity;

    // Java field initializers run after the base constructor
    private void initFieldsGameConfigurationCentral() {
    this.logUtil = LogUtil.getInstance();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    this.gameControlFidelity = 36;
    }
    

    public static GameConfigurationCentral getInstance() {
        if (GameConfigurationCentral.staticGet_SINGLETON() == NullUtil.getInstance().NULL_OBJECT) {
            GameConfigurationCentral.SINGLETON = new GameConfigurationCentral();
        }
        return ((GameConfigurationCentral) GameConfigurationCentral.staticGet_SINGLETON());
    }
    

    public GameConfigurationCentral() {
        base();
        this.initFieldsGameConfigurationCentral();
        SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        this.SCALE = new GameConfiguration("Scale", smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(3));
        this.ORIENTATION = new GameConfiguration("Orientation", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(8));
        this.SENSOR_UPDATE_RATE = new GameConfiguration("Sensor Update Rate", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3));
        this.VIBRATION = new GameConfiguration("Vibration", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3));
        this.CHALLENGE_LEVEL = new GameConfiguration("Global Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.COLLIDE_DAMAGE = new GameConfiguration("Collide Damage Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.DURABILITY_CHALLENGE_LEVEL = new GameConfiguration("Enemy Durability Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.SPEED_CHALLENGE_LEVEL = new GameConfiguration("Enemy Speed Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.ATTACK_CHALLENGE_LEVEL = new GameConfiguration("Enemy Attack Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.CONTROL_LEVEL = new GameConfiguration("Control Fidelity", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.PLAYER_INPUT_WAIT = new GameConfiguration("Input Wait", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.SPEED = new GameConfiguration("Game Speed (Device Specific)", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.SOUND_VOLUME = new GameConfiguration("Sound Volume", smallIntegerSingletonFactory.getAt(6), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(10));
        this.MAX_GAME_OBJECTS = new GameConfiguration("Max Game Objects", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50));
        this.MAX_LAYERS = new GameConfiguration("Max Layers", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50));
    }
    

    public virtual void load(AbeClientInformationInterface abeClientInformation) {
        CommonStrings commonStrings = CommonStrings.getInstance();
        {
            SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
            KeyValuePersistance keyValuePersistance = GameConfigurationPersistanceSingleton.getInstance();
            keyValuePersistance.clear();
            keyValuePersistance.loadAll(abeClientInformation);
            BasicArrayList list = keyValuePersistance.getIds();
            if (list.size() > 0) {
                ABHashtable hashtable = keyValuePersistance.@get(0);
                JObject anyType = ((JObject) this.SCALE.getName());
                string value = JString.unbox(hashtable.@get(anyType));
                this.SCALE.setValue(smallIntegerSingletonFactory.getAt(JString.ofString(value).intValue()));
            } else {
                this.logUtil.putF("No Game Configuration To Load", this, commonStrings.LOAD);
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void setGameControlFidelity(int32 gameControlFidelity) {
        this.gameControlFidelity = gameControlFidelity;
    }
    

    public virtual int32 getGameControlFidelity() {
        return this.gameControlFidelity;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        CommonSeps commonStrings = CommonSeps.getInstance();
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SCALE.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(((int32) (this.SCALE.getValue().intValue())));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.ORIENTATION.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(((int32) (this.ORIENTATION.getValue().intValue())));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SENSOR_UPDATE_RATE.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(((int32) (this.SENSOR_UPDATE_RATE.getValue().intValue())));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.VIBRATION.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(((int32) (this.VIBRATION.getValue().intValue())));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(((int32) (this.CHALLENGE_LEVEL.getValue().intValue())));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.COLLIDE_DAMAGE.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(((int32) (this.COLLIDE_DAMAGE.getValue().intValue())));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.DURABILITY_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(((int32) (this.DURABILITY_CHALLENGE_LEVEL.getValue().intValue())));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SPEED_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(((int32) (this.SPEED_CHALLENGE_LEVEL.getValue().intValue())));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.ATTACK_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(((int32) (this.ATTACK_CHALLENGE_LEVEL.getValue().intValue())));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.CONTROL_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(((int32) (this.CONTROL_LEVEL.getValue().intValue())));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SPEED.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(((int32) (this.SPEED.getValue().intValue())));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.MAX_GAME_OBJECTS.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(((int32) (this.MAX_GAME_OBJECTS.getValue().intValue())));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.MAX_LAYERS.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(((int32) (this.MAX_LAYERS.getValue().intValue())));
        return stringBuffer.toString();
    }
}

