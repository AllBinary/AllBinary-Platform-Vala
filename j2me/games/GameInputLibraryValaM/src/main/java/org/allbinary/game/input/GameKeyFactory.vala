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
// package org.allbinary.game.input
// import javax.microedition.lcdui.Canvas
// import org.allbinary.logic.NullUtil
// import org.allbinary.string.CommonPhoneStrings

public class GameKeyFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!GameKeyFactory.staticSet_instance) {
            GameKeyFactory.staticSet_instance = true;
            GameKeyFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameKeyFactory.instance;
    }
    public GameKey NONE;
    public GameKey UP;
    public GameKey DOWN;
    public GameKey LEFT;
    public GameKey RIGHT;
    public GameKey KEY_POUND;
    public GameKey KEY_STAR;
    public GameKey KEY_NUM0;
    public GameKey KEY_NUM1;
    public GameKey KEY_NUM2;
    public GameKey KEY_NUM3;
    public GameKey KEY_NUM4;
    public GameKey KEY_NUM5;
    public GameKey KEY_NUM6;
    public GameKey KEY_NUM7;
    public GameKey KEY_NUM8;
    public GameKey KEY_NUM9;
    public GameKey GAME_A;
    public GameKey GAME_B;
    public GameKey GAME_C;
    public GameKey GAME_D;
    public GameKey FIRE;
    public GameKey LEVEL_DOWN;
    public GameKey LEVEL_UP;

    // Java field initializers run after the base constructor
    private void initFieldsGameKeyFactory() {
    this.NONE = new GameKey(InputFactory.getInstance().MAX_ - 1, "None");
    this.UP = new GameKey(Canvas.UP, CommonPhoneStrings.getInstance().UP);
    this.DOWN = new GameKey(Canvas.DOWN, CommonPhoneStrings.getInstance().DOWN);
    this.LEFT = new GameKey(Canvas.LEFT, CommonPhoneStrings.getInstance().LEFT);
    this.RIGHT = new GameKey(Canvas.RIGHT, CommonPhoneStrings.getInstance().RIGHT);
    this.KEY_POUND = new GameKey(Canvas.KEY_POUND, "POUND");
    this.KEY_STAR = new GameKey(Canvas.KEY_STAR, "STAR");
    this.KEY_NUM0 = new GameKey(Canvas.KEY_NUM0, CommonPhoneStrings.getInstance().ZERO);
    this.KEY_NUM1 = new GameKey(Canvas.KEY_NUM1, CommonPhoneStrings.getInstance().ONE);
    this.KEY_NUM2 = new GameKey(Canvas.KEY_NUM2, CommonPhoneStrings.getInstance().TWO);
    this.KEY_NUM3 = new GameKey(Canvas.KEY_NUM3, CommonPhoneStrings.getInstance().THREE);
    this.KEY_NUM4 = new GameKey(Canvas.KEY_NUM4, CommonPhoneStrings.getInstance().FOUR);
    this.KEY_NUM5 = new GameKey(Canvas.KEY_NUM5, CommonPhoneStrings.getInstance().FIVE);
    this.KEY_NUM6 = new GameKey(Canvas.KEY_NUM6, CommonPhoneStrings.getInstance().SIX);
    this.KEY_NUM7 = new GameKey(Canvas.KEY_NUM7, CommonPhoneStrings.getInstance().SEVEN);
    this.KEY_NUM8 = new GameKey(Canvas.KEY_NUM8, CommonPhoneStrings.getInstance().EIGHT);
    this.KEY_NUM9 = new GameKey(Canvas.KEY_NUM9, CommonPhoneStrings.getInstance().NINE);
    this.GAME_A = new GameKey(Canvas.GAME_A, "Game A");
    this.GAME_B = new GameKey(Canvas.GAME_B, "Game B");
    this.GAME_C = new GameKey(Canvas.GAME_C, "Game C");
    this.GAME_D = new GameKey(Canvas.GAME_D, "Game D");
    this.FIRE = new GameKey(Canvas.FIRE, CommonPhoneStrings.getInstance().FIRE);
    this.LEVEL_DOWN = new GameKey(Canvas.KEY_NUM9 + 1, "Cheat Level Up");
    this.LEVEL_UP = new GameKey(Canvas.KEY_NUM9 + 2, "Cheat Level Down");
    }

    public GameKeyFactory() {
        base();
        this.initFieldsGameKeyFactory();
    }
    

    public static GameKeyFactory getInstance() {
        if (GameKeyFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            GameKeyFactory.instance = new GameKeyFactory();
        }
        return ((GameKeyFactory) GameKeyFactory.staticGet_instance());
    }
}

