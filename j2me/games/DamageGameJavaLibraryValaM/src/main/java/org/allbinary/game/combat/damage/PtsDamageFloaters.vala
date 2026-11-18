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
// package org.allbinary.game.combat.damage
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorArrayIndexer
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.java.character.CharArrayFactory
// import org.allbinary.logic.math.PrimitiveLongUtil
// import org.allbinary.util.CircularIndexUtil
// import org.allbinary.view.ViewPosition
// import org.allbinary.view.ViewPositionBase

public class PtsDamageFloaters : DamageFloaters {
    private static BasicColorArrayIndexer? basicColorArrayIndexer;
    private static bool staticSet_basicColorArrayIndexer = false;
    private static BasicColorArrayIndexer staticGet_basicColorArrayIndexer() {
        if (!PtsDamageFloaters.staticSet_basicColorArrayIndexer) {
            PtsDamageFloaters.staticSet_basicColorArrayIndexer = true;
            PtsDamageFloaters.basicColorArrayIndexer = new BasicColorArrayIndexer(new BasicColor[] {BasicColorFactory.getInstance().WHITE, BasicColorFactory.getInstance().RED, BasicColorFactory.getInstance().YELLOW, BasicColorFactory.getInstance().BLUE});
        }
        return PtsDamageFloaters.basicColorArrayIndexer;
    }
    public BasicColorSetUtil basicSetColorUtil;
    private AllBinaryLayer layerInterface;
    private int32[] lastDamage;
    private uint16[,] lastDamageString;
    private int32[] lastDamageStringSizeArray;
    private CircularIndexUtil circularIndexUtil;
    private PrimitiveLongUtil primitiveLongUtil;
    private MyRandomFactory myRandomFactory;

    // Java field initializers run after the base constructor
    private void initFieldsPtsDamageFloaters() {
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    
    this.lastDamage = new int32[5];
    this.lastDamageString = new uint16[5, 0];
    this.lastDamageStringSizeArray = new int32[5];
    this.circularIndexUtil = CircularIndexUtil.createInstance(5);
    
    this.myRandomFactory = MyRandomFactory.getInstance();
    }
    

    public PtsDamageFloaters(AllBinaryLayer layerInterface) {
        base();
        this.initFieldsPtsDamageFloaters();
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(100000);
        this.layerInterface = layerInterface;
        uint16[] CHAR_ARRAY = CharArrayFactory.getInstance().getZeroCharArray();
        for (int32 index = this.lastDamageString.length[0] - 1; index >= 0; index--) {
            JArrays.rowUint16(this.lastDamageString, index) = CHAR_ARRAY;
        }
    }
    

    public override void add(int32 damage) {
        int32 index = this.circularIndexUtil.getIndex();
        this.lastDamage[index] = damage;
        JArrays.rowUint16(this.lastDamageString, index) = this.primitiveLongUtil.getCharArray(this.lastDamage[index]);
        this.lastDamageStringSizeArray[index] = this.primitiveLongUtil.getCurrentTotalDigits();
        this.circularIndexUtil.next();
    }
    

    public override void paint(Graphics graphics) {
        ViewPositionBase viewPosition = this.layerInterface.getViewPosition();
        int32 x = viewPosition.getX();
        int32 y = viewPosition.getY();
        for (int32 index = this.lastDamage.length - 1; index >= 0; index--) {
            if (this.lastDamage[index] != 0) {
                int32 delta = 10 * (index + 2);
                this.basicSetColorUtil.setBasicColorP(graphics, PtsDamageFloaters.staticGet_basicColorArrayIndexer().@get());
                graphics.drawChars(JArrays.rowUint16(this.lastDamageString, index), 0, this.lastDamageStringSizeArray[index], x - this.myRandomFactory.getNextInt(delta), y - delta, 0);
                PtsDamageFloaters.staticGet_basicColorArrayIndexer().next();
            }
            this.lastDamage[index] = 0;
        }
    }
}

