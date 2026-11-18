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
// package org.allbinary.game.ai
// import org.allbinary.ai.ArtificialIntelligence
// import org.allbinary.game.displayable.canvas.CanvasUtil
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.input.GameKeyEventSourceInterface
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

public class BasicAI : ArtificialIntelligence, GameKeyEventSourceInterface {
    public static int32?? AI_VISITOR;
    private static bool staticSet_AI_VISITOR = false;
    public static int32? staticGet_AI_VISITOR() {
        if (!BasicAI.staticSet_AI_VISITOR) {
            BasicAI.staticSet_AI_VISITOR = true;
            BasicAI.AI_VISITOR = SmallIntegerSingletonFactory.getInstance().getAt(2);
        }
        return BasicAI.AI_VISITOR;
    }
    public static int32?? ID;
    private static bool staticSet_ID = false;
    public static int32? staticGet_ID() {
        if (!BasicAI.staticSet_ID) {
            BasicAI.staticSet_ID = true;
            BasicAI.ID = SmallIntegerSingletonFactory.getInstance().getAt(1);
        }
        return BasicAI.ID;
    }
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    public GameKeyEventFactory gameKeyEventFactory;
    private AllBinaryLayer ownerLayerInterface;
    private GameInput gameInput;
    private int32 lastKey;

    // Java field initializers run after the base constructor
    private void initFieldsBasicAI() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    
    
    this.lastKey = -1;
    }
    

    public BasicAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base();
        this.initFieldsBasicAI();
        this.ownerLayerInterface = ownerLayerInterface;
        this.gameInput = gameInput;
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual void processKeyAI(int32 key) {
        if (key != -1) {
            this.gameInput.add(this.gameKeyEventFactory.getInstanceForKey(this, key));
        }
    }
    

    public virtual void setLastKey(int32 lastKey) {
        this.lastKey = lastKey;
    }
    

    public virtual int32 getLastKey() {
        return this.lastKey;
    }
    

    public virtual AllBinaryLayer getOwnerLayerInterface() {
        return this.ownerLayerInterface;
    }
    

    public virtual GameInput getGameInput() {
        return this.gameInput;
    }
    

    public virtual string getName() {
        return JObject.className(this);
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE);
        stringBuffer.append(this.getName());
        stringBuffer.append(" LastKey: ");
        stringBuffer.append(CanvasUtil.getKeyName(this.getLastKey()));
        return stringBuffer.toString();
    }
    

    public virtual int32 getSourceId() {
        return 1;
    }
}

