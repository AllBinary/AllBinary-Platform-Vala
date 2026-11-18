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
// package org.allbinary.game.ag.layer.hud.basic.score
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.ag.layer.hud.basic.NumberStringHud
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory

public class ScoreHudWidget : NumberStringHud {
    

    public static ScoreHudWidget getInstance3(int32 maxscore, int32 location, int32 direction) {
        return new ScoreHudWidget(maxscore, location, direction, 2, BasicColorFactory.getInstance().GREY);
    }
    

    public ScoreHudWidget(int32 maxscore, int32 location, int32 direction, int32 bufferZone, BasicColor basicColor) {
        base("Pts ", maxscore, location, direction, bufferZone, basicColor);
        this.updateMaxHeight = 14;
    }
    

    public override void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.updateMaxWidth = font.getSize() * 5;
        base.updateMeasurement(graphics);
    }
}

