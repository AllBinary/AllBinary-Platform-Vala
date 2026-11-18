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
// package org.allbinary.layer
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.identification.BasicGroupFactory
// import org.allbinary.game.identification.Group
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.TsUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.math.PositionStrings
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.view.ViewPositionBase
// import org.allbinary.view.event.ViewPositionEvent

public class AllBinaryLayer : Layer, LayerInterface, NamedInterface, PaintableInterface, GroupInterfaceCompositeInterface, PositionInterface {
    public static AllBinaryLayer? NULL_ALLBINARY_LAYER;
    private static bool staticSet_NULL_ALLBINARY_LAYER = false;
    public static AllBinaryLayer staticGet_NULL_ALLBINARY_LAYER() {
        if (!AllBinaryLayer.staticSet_NULL_ALLBINARY_LAYER) {
            AllBinaryLayer.staticSet_NULL_ALLBINARY_LAYER = true;
            AllBinaryLayer.NULL_ALLBINARY_LAYER = new AllBinaryLayer(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION);
        }
        return AllBinaryLayer.NULL_ALLBINARY_LAYER;
    }
    private const string TYPE = "Type: ";
    public ViewPositionEvent viewPositionEvent;
    private int32 halfWidth;
    private int32 halfHeight;
    private string name;
    private ViewPositionBase viewPosition;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinaryLayer() {
    this.viewPositionEvent = new ViewPositionEvent(this);
    this.halfWidth = 0;
    this.halfHeight = 0;
    
    this.viewPosition = ViewPositionBase.NULL_VIEW_POSITION;
    }
    

    public AllBinaryLayer(string name, Rectangle rectangle, ViewPositionBase viewPosition) {
        base(rectangle.getWidth(), rectangle.getHeight());
        this.initFieldsAllBinaryLayer();
        string localName = null;
        localName = new StringMaker().append(name).append(CommonSeps.getInstance().COLON).append(Integer.toHexString(TsUtil.getInstance().hashCode1(this))).toString();
        this.name = localName;
        GPoint point = rectangle.getPoint();
        this.setPosition(point.getX(), point.getY(), point.getZ());
        this.setHalfWidth((this.getWidth() >> 1));
        this.setHalfHeight((this.getHeight() >> 1));
        this.viewPosition = viewPosition;
        this.viewPosition.setAllbinaryLayer(this);
    }
    

    public override void setPosition(int32 x, int32 y, int32 z) {
        base.setPosition(x, y, z);
    }
    

    public override void moveDXYZ(int32 dx, int32 dy, int32 dz) {
        base.moveDXYZ(dx, dy, dz);
    }
    

    public override int32 getXP() {
        return base.getXP();
    }
    

    public override int32 getYP() {
        return base.getYP();
    }
    

    public override int32 getZP() {
        return base.getZP();
    }
    

    public override int32 getWidth() {
        return base.getWidth();
    }
    

    public override int32 getHeight() {
        return base.getHeight();
    }
    

    public override void setVisible(bool visible) {
        base.setVisible(visible);
    }
    

    public override bool isVisible() {
        return base.isVisible();
    }
    

    public override void paint(Graphics graphics) {
        base.paint(graphics);
    }
    

    public virtual void onChangeEvent(ViewPositionEvent layerManagerEvent) {
    }
    

    public virtual void paintThreed(Graphics graphics) {
    }
    

    public virtual int32 getX2() {
        return this.getXP() + this.getWidth();
    }
    

    public virtual int32 getY2() {
        return this.getYP() + this.getHeight();
    }
    

    public virtual int32 getZ2() {
        return ((int32) ((((int64) (this.getZP())) + this.getDepth())));
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    public virtual void setHalfWidth(int32 halfWidth) {
        this.halfWidth = halfWidth;
    }
    

    public virtual int32 getHalfWidth() {
        return this.halfWidth;
    }
    

    public virtual void setHalfHeight(int32 halfHeight) {
        this.halfHeight = halfHeight;
    }
    

    public virtual int32 getHalfHeight() {
        return this.halfHeight;
    }
    

    public virtual int32 getHalfDepth() {
        return ((int32) (this.getDepth())) / 2;
    }
    

    public virtual ViewPositionBase getViewPosition() {
        return this.viewPosition;
    }
    

    public virtual void setViewPosition(ViewPositionBase viewPosition) {
        this.viewPosition = viewPosition;
    }
    

    public virtual Group[] getGroupInterface() {
        return BasicGroupFactory.getInstance().NONE_ARRAY;
    }
    

    public virtual bool implmentsTickableInterface() {
        return false;
    }
    

    public virtual bool implmentsGameInputInterface() {
        return false;
    }
    

    public virtual bool implmentsArtificialIntelligenceCompositeInterface() {
        return false;
    }
    

    public virtual bool implmentsCollidableInterface() {
        return false;
    }
    

    public virtual bool implementsThreedInterface() {
        return OpenGLFeatureUtil.getInstance().isAnyThreed();
    }
    

    public virtual int32 getType() {
        return -1;
    }
    

    public virtual int32 getMultiPlayerType() {
        return -1;
    }
    

    public override void toStringAppend(StringMaker stringBuffer) {
        CommonSeps commonSeps = CommonSeps.getInstance();
        PositionStrings positionStrings = PositionStrings.getInstance();
        CommonLabels commonLabels = CommonLabels.getInstance();
        stringBuffer.append(this.getName());
        stringBuffer.append(commonSeps.COLON);
        stringBuffer.append(AllBinaryLayer.TYPE);
        stringBuffer.appendint(this.getType());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.appendint(this.getXP());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.appendint(this.getYP());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.appendint(this.getZP());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.getWidth());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.getHeight());
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        this.toStringAppend(stringBuffer);
        return stringBuffer.toString();
    }
}

