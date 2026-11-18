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

public class GameInputStrings : JObject {
    private static GameInputStrings? instance;
    private static bool staticSet_instance = false;
    private static GameInputStrings staticGet_instance() {
        if (!GameInputStrings.staticSet_instance) {
            GameInputStrings.staticSet_instance = true;
            GameInputStrings.instance = new GameInputStrings();
        }
        return GameInputStrings.instance;
    }
    public string PROCESS_INPUT;
    public string KEY_PRESSED;
    public string KEY_RELEASED;
    public string KEY_REPEATED;
    public string ON_PRESS_GAME_KEY;
    public string ON_DOWN_GAME_KEY;
    public string ON_UP_GAME_KEY;
    public string NO_KEY;
    public string ADD_KEY_EVENT;
    public string REMOVE_KEY_EVENT;
    public string STRAFE_LEFT;
    public string STRAFE_RIGHT;
    public string PROCESS_MOTION_INPUT;
    public string UDPATE_CURRENT_TOUCH_INPUT_FACTORY;
    public string ENABLE_PLAYER_GAME_INPUTS;
    public string ENABLE_PLAYER_GAME_INPUT;

    // Java field initializers run after the base constructor
    private void initFieldsGameInputStrings() {
    this.PROCESS_INPUT = "processInput";
    this.KEY_PRESSED = "keyPressed";
    this.KEY_RELEASED = "keyReleased";
    this.KEY_REPEATED = "keyRepeated";
    this.ON_PRESS_GAME_KEY = "onPressGameKeyEvent";
    this.ON_DOWN_GAME_KEY = "onDownGameKeyEvent";
    this.ON_UP_GAME_KEY = "onUpGameKeyEvent";
    this.NO_KEY = "Key Code Not Mapped For Game: ";
    this.ADD_KEY_EVENT = "addGameKeyEvent";
    this.REMOVE_KEY_EVENT = "removeGameKeyEvent";
    this.STRAFE_LEFT = "strafeLeft";
    this.STRAFE_RIGHT = "strafeRight";
    this.PROCESS_MOTION_INPUT = "processMotionInput";
    this.UDPATE_CURRENT_TOUCH_INPUT_FACTORY = "updateCurrentTouchInputFactory";
    this.ENABLE_PLAYER_GAME_INPUTS = "Enabling PlayerGameInputs: ";
    this.ENABLE_PLAYER_GAME_INPUT = "Enabling PlayerGameInput: ";
    }

    public GameInputStrings() {
        base();
        this.initFieldsGameInputStrings();
    }
    

    public static GameInputStrings getInstance() {
        return GameInputStrings.staticGet_instance();
    }
}

