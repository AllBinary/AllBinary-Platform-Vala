/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory

public class GameGlobalsFactory : JObject {
    private static GameGlobalsFactory? instance;
    private static bool staticSet_instance = false;
    private static GameGlobalsFactory staticGet_instance() {
        if (!GameGlobalsFactory.staticSet_instance) {
            GameGlobalsFactory.staticSet_instance = true;
            GameGlobalsFactory.instance = new GameGlobalsFactory();
        }
        return GameGlobalsFactory.instance;
    }
    public bool newCanvas;
    public int64 newDisplaybleTime;
    public GPoint point;

    // Java field initializers run after the base constructor
    private void initFieldsGameGlobalsFactory() {
    this.newCanvas = true;
    this.newDisplaybleTime = ((int64) (Integer.MIN_VALUE));
    this.point = PointFactory.getInstance().ZERO_ZERO;
    }

    public GameGlobalsFactory() {
        base();
        this.initFieldsGameGlobalsFactory();
    }
    

    public static GameGlobalsFactory getInstance() {
        return GameGlobalsFactory.staticGet_instance();
    }
}

