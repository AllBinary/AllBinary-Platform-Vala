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
// import javax.microedition.lcdui.Item
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

public class GameConfigurationUtil : JObject {
    private static GameConfigurationUtil? instance;
    private static bool staticSet_instance = false;
    private static GameConfigurationUtil staticGet_instance() {
        if (!GameConfigurationUtil.staticSet_instance) {
            GameConfigurationUtil.staticSet_instance = true;
            GameConfigurationUtil.instance = new GameConfigurationUtil();
        }
        return GameConfigurationUtil.instance;
    }
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    private string GAUGE_UPDATE;
    private string FROM;
    private string TO;
    private int32 COMPETITION_VALUE;

    // Java field initializers run after the base constructor
    private void initFieldsGameConfigurationUtil() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.GAUGE_UPDATE = "Gauge Update: ";
    this.FROM = " from: ";
    this.TO = " to: ";
    this.COMPETITION_VALUE = 1;
    }

    public GameConfigurationUtil() {
        base();
        this.initFieldsGameConfigurationUtil();
    }
    

    public static GameConfigurationUtil getInstance() {
        return GameConfigurationUtil.staticGet_instance();
    }
    

    public virtual void change(GameOptionsForm gameOptionsForm, GameConfigurationGauge gauge) {
        this.update(gauge);
        GameConfigurationSingleton gameConfigurationSingleton = GameConfigurationSingleton.getInstance();
        GameConfiguration gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel());
        this.updateChallange(gameOptionsForm, gameConfiguration);
    }
    

    public virtual void update(GameConfigurationGauge gauge) {
        GameConfigurationSingleton gameConfigurationSingleton = GameConfigurationSingleton.getInstance();
        GameConfiguration gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel());
        SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        int32? value = smallIntegerSingletonFactory.getAt(gauge.getValue() + gameConfiguration.getMinValue().intValue());
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(this.GAUGE_UPDATE);
        stringBuffer.append(gameConfiguration.getName());
        stringBuffer.append(this.FROM);
        stringBuffer.appendint(((int32) (gameConfiguration.getValue().intValue())));
        stringBuffer.append(this.TO);
        stringBuffer.appendint(((int32) (((int32) value))));
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.UPDATE);
        gameConfiguration.setValue(value);
    }
    

    public virtual void setDefault(GameConfigurationGauge gauge) {
        GameConfigurationSingleton gameConfigurationSingleton = GameConfigurationSingleton.getInstance();
        GameConfiguration gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel());
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("Gauge Default: ");
        stringBuffer.append(gameConfiguration.getName());
        stringBuffer.append(this.TO);
        stringBuffer.appendint(((int32) (gameConfiguration.getDefaultValue().intValue())));
        this.logUtil.putF(stringBuffer.toString(), this, "setDefault");
        gauge.setValue(gameConfiguration.getDefaultValue().intValue() - gameConfiguration.getMinValue().intValue());
        gameConfiguration.setValue(gameConfiguration.getDefaultValue());
    }
    

    public virtual void updateChallange(GameOptionsForm gameOptionsForm, GameConfiguration gameConfiguration) {
        GameConfigurationSingleton gameConfigurationSingleton = GameConfigurationSingleton.getInstance();
        GameConfigurationCentral gameConfigurationCentral = GameConfigurationCentral.getInstance();
        if (gameConfiguration == gameConfigurationCentral.CHALLENGE_LEVEL) {
            this.logUtil.putF(this.commonStrings.START, this, "updateChallange");
            gameConfigurationCentral.COLLIDE_DAMAGE.setValue(gameConfiguration.getValue());
            gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue());
            gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue());
            gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue());
            int32 size = gameOptionsForm.size();
            for (int32 index = 0; index < size; index++) {
                Item item = gameOptionsForm.@get(index);
                if ((item is GameConfigurationGauge)) {
                    GameConfigurationGauge gauge = ((GameConfigurationGauge) item);
                    string name = item.getLabel();
                    GameConfiguration nextGameConfiguration = gameConfigurationSingleton.getInstanceByName(name);
                    if (nextGameConfiguration == gameConfigurationCentral.COLLIDE_DAMAGE) {
                        gauge.setValue(gameConfigurationCentral.COLLIDE_DAMAGE.getValue().intValue() - gameConfiguration.getMinValue().intValue());
                    } else if (nextGameConfiguration == gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL) {
                        gauge.setValue(gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue());
                    } else if (nextGameConfiguration == gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL) {
                        gauge.setValue(gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue());
                    } else if (nextGameConfiguration == gameConfigurationCentral.SPEED_CHALLENGE_LEVEL) {
                        gauge.setValue(gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue());
                    }
                }
            }
        }
    }
    

    public virtual void updateCompetitionValue() {
        this.logUtil.putF(this.commonStrings.START, this, "updateCompetitionValue");
        GameConfigurationCentral gameConfigurationCentral = GameConfigurationCentral.getInstance();
        this.COMPETITION_VALUE = gameConfigurationCentral.COLLIDE_DAMAGE.getValue().intValue() + gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().intValue() + gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().intValue() + gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().intValue();
        this.COMPETITION_VALUE = (this.COMPETITION_VALUE >> 2);
    }
    

    public virtual int32 getCompetitionValue() {
        return this.COMPETITION_VALUE;
    }
}

