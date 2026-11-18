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
// import javax.microedition.lcdui.Gauge

public class GameConfigurationGauge : Gauge {
    

    public GameConfigurationGauge(GameConfiguration gameConfiguration) {
        base(gameConfiguration.getName(), gameConfiguration.isModifiable().booleanValue(), gameConfiguration.getMaxValue().intValue() - gameConfiguration.getMinValue().intValue(), gameConfiguration.getValue().intValue() - gameConfiguration.getMinValue().intValue());
    }
}

