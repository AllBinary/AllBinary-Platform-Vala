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
// package org.allbinary.game.ag.layer.hud.basic.level
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.graphics.hud.BasicHud
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.math.PrimitiveLongUtil

public class LevelHudWidget : BasicHud, PaintableInterface {
    private int32 level;
    private int32 maxlevel;
    private uint16[] levelString;
    private uint16[] levelNumberCharArray;
    private int32 levelNumberTotalDigits;
    private int32 offset;
    private PrimitiveLongUtil primitiveLongUtil;

    // Java field initializers run after the base constructor
    private void initFieldsLevelHudWidget() {
    
    
    
    this.levelNumberCharArray = NullUtil.getInstance().NULL_CHAR_ARRAY;
    this.levelNumberTotalDigits = 0;
    this.offset = 0;
    
    }
    

    public static LevelHudWidget createHud(int32 maxlevel, int32 location, int32 direction) {
        return new LevelHudWidget(maxlevel, location, direction);
    }
    

    public LevelHudWidget(int32 maxlevel, int32 location, int32 direction) {
        base(location, direction, 2, BasicColorFactory.getInstance().GREY);
        this.initFieldsLevelHudWidget();
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000);
        string LEVEL = "Lv ";
        this.levelString = JString.toCharArray(LEVEL);
        this.maxlevel = maxlevel;
        this.level = maxlevel;
        this.update();
        this.updateMaxHeight = 14;
    }
    

    public override void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.updateMaxWidth = font.getSize() * 4;
        this.offset = font.charsWidth(this.levelString, 0, this.levelString.length) + font.getSize();
        base.updateMeasurement(graphics);
    }
    

    private void update() {
        this.levelNumberCharArray = this.primitiveLongUtil.getCharArray(this.level);
        this.levelNumberTotalDigits = this.primitiveLongUtil.getCurrentTotalDigits();
    }
    

    public virtual void setLevel(int32 level) {
        this.level = level;
        this.update();
    }
    

    public virtual void nextLevel() {
        this.level++;
        this.update();
    }
    

    public virtual void previousLevel() {
        this.level--;
        if (this.level < 0) {
            this.level = 0;
        }
        this.update();
    }
    

    public virtual bool isComplete() {
        if (this.level <= this.maxlevel) {
            return false;
        } else {
            return true;
        }
    }
    

    public virtual void paint(Graphics graphics) {
        base.paintDX(graphics, this.levelString, 0, this.levelString.length, this.levelNumberCharArray, 0, this.levelNumberTotalDigits, this.offset);
    }
    

    public virtual void paintThreed(Graphics graphics) {
    }
}

