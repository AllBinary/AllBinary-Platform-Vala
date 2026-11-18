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
// package org.allbinary.game.ag.ai.scroller
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.media.audio.PlayerQueue
// import org.allbinary.media.audio.SecondaryPlayerQueueFactory
// import org.allbinary.media.audio.Sound
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.ABHashtable

public class HorizontalScreenPatrolAI : BasicAI {
    public static int32?? SOUND;
    private static bool staticSet_SOUND = false;
    public static int32? staticGet_SOUND() {
        if (!HorizontalScreenPatrolAI.staticSet_SOUND) {
            HorizontalScreenPatrolAI.staticSet_SOUND = true;
            HorizontalScreenPatrolAI.SOUND = SmallIntegerSingletonFactory.getInstance().getAt(433);
        }
        return HorizontalScreenPatrolAI.SOUND;
    }
    public int32 keyDirection;
    private DisplayInfoSingleton displayInfoSingleton;
    private int32 firingX;
    private int32 firedIndex;
    private int32 MAX_FIRE;
    private TimeDelayHelper timeDelayHelper;
    private PlayerQueue secondaryPlayerQueue;
    private Sound sound;

    // Java field initializers run after the base constructor
    private void initFieldsHorizontalScreenPatrolAI() {
    this.keyDirection = Canvas.LEFT;
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.firingX = this.displayInfoSingleton.getLastHalfWidth();
    this.firedIndex = 0;
    this.MAX_FIRE = 28;
    this.timeDelayHelper = new TimeDelayHelper(240);
    this.secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance();
    
    }
    

    public HorizontalScreenPatrolAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(ownerLayerInterface, gameInput);
        this.initFieldsHorizontalScreenPatrolAI();
        this.sound = ((Sound) hashtable.@get(HorizontalScreenPatrolAI.staticGet_SOUND()));
        if (this.sound == null) {
            JSystem.fatal(new JException("Exception", "No Sound Provided!!"));
        }
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        base.processKeyAI(this.keyDirection);
        if (this.timeDelayHelper.isTimeTNT()) {
            AllBinaryLayer layerInterface = this.getOwnerLayerInterface();
            int32 currentOwnerLayerX = layerInterface.getXP();
            if (currentOwnerLayerX < -layerInterface.getWidth()) {
                int32 y = MyRandomFactory.getInstance().getAbsoluteNextIntAllowZero(50);
                layerInterface.setPosition(this.displayInfoSingleton.getLastWidth() + layerInterface.getWidth() + 50, y, layerInterface.getZP());
                this.firedIndex = 0;
                this.firingX = this.displayInfoSingleton.getLastHalfWidth() + MyRandomFactory.getInstance().getNextInt(this.displayInfoSingleton.getLastHalfWidth());
                this.secondaryPlayerQueue.add(this.sound);
            }
            if (currentOwnerLayerX < this.firingX && currentOwnerLayerX > -layerInterface.getWidth()) {
                base.processKeyAI(Canvas.KEY_NUM1);
                AllBinaryGameLayerManager gameLayerManager = ((AllBinaryGameLayerManager) allBinaryLayerManager);
                int32 FIRE = (gameLayerManager.getGameInfo().getCurrentLevel() + 12) >> 2;
                if (FIRE > this.MAX_FIRE) {
                    FIRE = this.MAX_FIRE;
                }
                if (this.firedIndex > FIRE) {
                    this.firedIndex = 0;
                    this.firingX = Integer.MIN_VALUE;
                }
                this.firedIndex++;
            }
        }
    }
    

    public virtual void nextDirection() {
    }
}

