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

public class J2MEKeyFactory : JObject {
    private static J2MEKeyFactory? instance;
    private static bool staticSet_instance = false;
    private static J2MEKeyFactory staticGet_instance() {
        if (!J2MEKeyFactory.staticSet_instance) {
            J2MEKeyFactory.staticSet_instance = true;
            J2MEKeyFactory.instance = new J2MEKeyFactory();
        }
        return J2MEKeyFactory.instance;
    }
    private GameKeyFactory gameKeyFactory;

    // Java field initializers run after the base constructor
    private void initFieldsJ2MEKeyFactory() {
    this.gameKeyFactory = GameKeyFactory.getInstance();
    }
    

    public static J2MEKeyFactory getInstance() {
        return J2MEKeyFactory.staticGet_instance();
    }
    

    public J2MEKeyFactory() {
        base();
        this.initFieldsJ2MEKeyFactory();
    }
    

    public virtual void init() {
        GameKey[] gameKeyArray = new GameKey[] {this.gameKeyFactory.DOWN, this.gameKeyFactory.FIRE, this.gameKeyFactory.GAME_A, this.gameKeyFactory.GAME_B, this.gameKeyFactory.GAME_C, this.gameKeyFactory.GAME_D, this.gameKeyFactory.KEY_NUM0, this.gameKeyFactory.KEY_NUM1, this.gameKeyFactory.KEY_NUM2, this.gameKeyFactory.KEY_NUM3, this.gameKeyFactory.KEY_NUM4, this.gameKeyFactory.KEY_NUM5, this.gameKeyFactory.KEY_NUM6, this.gameKeyFactory.KEY_NUM7, this.gameKeyFactory.KEY_NUM8, this.gameKeyFactory.KEY_NUM9, this.gameKeyFactory.KEY_POUND, this.gameKeyFactory.KEY_STAR, this.gameKeyFactory.LEFT, this.gameKeyFactory.LEVEL_DOWN, this.gameKeyFactory.LEVEL_UP, this.gameKeyFactory.NONE, this.gameKeyFactory.RIGHT, this.gameKeyFactory.UP};
        InputFactory inputFactory = InputFactory.getInstance();
        for (int32 index = gameKeyArray.length; --index >= 0; ) {
            inputFactory.add(gameKeyArray[index].getId(), gameKeyArray[index]);
        }
    }
    

    public virtual bool isSubmission(Input input) {
        if (input == this.gameKeyFactory.FIRE) {
            return true;
        }
        return false;
    }
    

    public virtual bool isDelete(Input input) {
        if (input == this.gameKeyFactory.GAME_D) {
            return true;
        }
        return false;
    }
    

    public virtual bool isBackSpace(Input input) {
        return false;
    }
    

    public virtual bool isUp(Input input) {
        if (input == this.gameKeyFactory.UP) {
            return true;
        }
        return false;
    }
    

    public virtual bool isDown(Input input) {
        if (input == this.gameKeyFactory.DOWN) {
            return true;
        }
        return false;
    }
    

    public virtual bool isLeft(Input input) {
        if (input == this.gameKeyFactory.LEFT) {
            return true;
        }
        return false;
    }
    

    public virtual bool isRight(Input input) {
        if (input == this.gameKeyFactory.RIGHT) {
            return true;
        }
        return false;
    }
    

    public virtual bool isEnter(Input input) {
        if (input == this.gameKeyFactory.FIRE) {
            return true;
        }
        return false;
    }
}

