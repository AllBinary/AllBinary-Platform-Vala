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
// package org.allbinary.game.layer
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.view.ViewPositionBase

public class GameLayerUtil : JObject {
    

    public GameLayerUtil() {
        base();
    }
    

    public static bool isOnScreen(AllBinaryLayer layer) {
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        ViewPositionBase viewPosition = layer.getViewPosition();
        return GameLayerUtil.isInside(viewPosition.getX(), viewPosition.getY(), viewPosition.getX2(), viewPosition.getY2(), 0, 0, displayInfo.getLastWidth(), displayInfo.getLastHeight());
    }
    

    public static bool isInside(int32 rectX1, int32 rectY1, int32 rectX2, int32 rectY2, int32 rect2X1, int32 rect2Y1, int32 rect2X2, int32 rect2Y2) {
        if (rectX1 > rect2X1 && rectX2 < rect2X2 && rectY1 > rect2Y1 && rectY2 < rect2Y2) {
            return true;
        } else {
            return false;
        }
    }
}

