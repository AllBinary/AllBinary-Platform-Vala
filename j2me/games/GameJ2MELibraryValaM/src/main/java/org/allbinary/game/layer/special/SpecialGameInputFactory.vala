/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.layer.special

public class SpecialGameInputFactory : JObject {
    public static SpecialGameInput? NO_SPECIAL_GAME_INPUT;
    private static bool staticSet_NO_SPECIAL_GAME_INPUT = false;
    public static SpecialGameInput staticGet_NO_SPECIAL_GAME_INPUT() {
        if (!SpecialGameInputFactory.staticSet_NO_SPECIAL_GAME_INPUT) {
            SpecialGameInputFactory.staticSet_NO_SPECIAL_GAME_INPUT = true;
            SpecialGameInputFactory.NO_SPECIAL_GAME_INPUT = new SpecialGameInput();
        }
        return SpecialGameInputFactory.NO_SPECIAL_GAME_INPUT;
    }

    public SpecialGameInputFactory() {
        base();
    }
}

