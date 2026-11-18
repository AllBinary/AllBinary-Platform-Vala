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
// import org.allbinary.ai.ArtificialIntelligence
// import org.allbinary.ai.ArtificialIntelligenceInterface
// import org.allbinary.game.collision.CollidableBaseBehavior
// import org.allbinary.game.collision.CollidableBaseBehaviorFactory
// import org.allbinary.game.collision.CollidableInterfaceCompositeInterface
// import org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.view.ViewPositionBase
// import org.allbinary.logic.NullUtil

public class CollidableCompositeLayer : AllBinaryGameLayer, CollidableInterfaceCompositeInterface {
    private static JObject? NULL_COLLIDABLE_COMPOSITE_LAYER;
    private static bool staticSet_NULL_COLLIDABLE_COMPOSITE_LAYER = false;
    private static JObject staticGet_NULL_COLLIDABLE_COMPOSITE_LAYER() {
        if (!CollidableCompositeLayer.staticSet_NULL_COLLIDABLE_COMPOSITE_LAYER) {
            CollidableCompositeLayer.staticSet_NULL_COLLIDABLE_COMPOSITE_LAYER = true;
            CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER = NullUtil.getInstance().NULL_OBJECT;
        }
        return CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER;
    }
    private CollidableBaseBehavior collidableInferface;

    // Java field initializers run after the base constructor
    private void initFieldsCollidableCompositeLayer() {
    this.collidableInferface = CollidableNeverCollideBehaviorFactory.getInstance().createBehavior();
    }
    

    public static CollidableCompositeLayer getNullInstance() {
        if (CollidableCompositeLayer.staticGet_NULL_COLLIDABLE_COMPOSITE_LAYER() == NullUtil.getInstance().NULL_OBJECT) {
            CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER = new CollidableCompositeLayer(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION, CollidableNeverCollideBehaviorFactory.getInstance());
        }
        return ((CollidableCompositeLayer) CollidableCompositeLayer.staticGet_NULL_COLLIDABLE_COMPOSITE_LAYER());
    }
    

    public CollidableCompositeLayer(string name, Rectangle layerInfo, ViewPositionBase viewPosition, CollidableBaseBehaviorFactory collidableBaseBehaviorFactory) {
        base(name, layerInfo, viewPosition);
        this.initFieldsCollidableCompositeLayer();
        if (collidableBaseBehaviorFactory != CollidableNeverCollideBehaviorFactory.getInstance()) {
            this.setCollidableInferface(collidableBaseBehaviorFactory.createBehavior());
        }
    }
    

    public virtual ArtificialIntelligenceInterface getArtificialIntelligenceInterface() {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
        return ArtificialIntelligence.getInstance();
    }
    

    public virtual CollidableBaseBehavior getCollidableInferface() {
        return this.collidableInferface;
    }
    

    public virtual void setCollidableInferface(CollidableBaseBehavior collidableInferface) {
        this.collidableInferface = collidableInferface;
    }
    

    public override bool implmentsCollidableInterface() {
        return true;
    }
    

    public override void toStringAppend(StringMaker stringBuffer) {
        CommonSeps commonSeps = CommonSeps.getInstance();
        base.toStringAppend(stringBuffer);
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(this.getCollidableInferface().toString());
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        this.toStringAppend(stringBuffer);
        return stringBuffer.toString();
    }
}

