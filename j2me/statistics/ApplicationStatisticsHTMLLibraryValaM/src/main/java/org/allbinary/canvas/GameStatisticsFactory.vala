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
// package org.allbinary.canvas
// import org.allbinary.logic.string.StringMaker

//ActualPlatform
public class GameStatisticsFactory : BaseGameStatistics {
    private static GameStatisticsFactory? instance;
    private static bool staticSet_instance = false;
    private static GameStatisticsFactory staticGet_instance() {
        if (!GameStatisticsFactory.staticSet_instance) {
            GameStatisticsFactory.staticSet_instance = true;
            GameStatisticsFactory.instance = new GameStatisticsFactory();
        }
        return GameStatisticsFactory.instance;
    }
    private StringMaker stringBuffer;

    // Java field initializers run after the base constructor
    private void initFieldsGameStatisticsFactory() {
    this.stringBuffer = new StringMaker();
    }

    public GameStatisticsFactory() {
        base();
        this.initFieldsGameStatisticsFactory();
    }
    

    public static GameStatisticsFactory getInstance() {
        return GameStatisticsFactory.staticGet_instance();
    }
    

    public override void add(string string) {
        if (this.stringBuffer.length() > 12000) {
            this.stringBuffer.@delete(0, this.stringBuffer.length());
            this.stringBuffer.append("Old Stats Cleared");
        }
        this.stringBuffer.append(string);
    }
    

    public override string toString() {
        return new StringMaker().append(base.toString()).append(this.stringBuffer.toString()).toString();
    }
}

