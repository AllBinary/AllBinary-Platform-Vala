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
// package org.allbinary.graphics.displayable
// import javax.microedition.lcdui.Displayable
// import org.allbinary.AndroidUtil
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent
// import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
// import org.allbinary.graphics.displayable.event.LastDisplayChangeEventHandler
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.graphics.threed.SWTJOGLProcessor
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class DisplayInfoSingleton : JObject {
    private static DisplayInfoSingleton? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static DisplayInfoSingleton staticGet_SINGLETON() {
        if (!DisplayInfoSingleton.staticSet_SINGLETON) {
            DisplayInfoSingleton.staticSet_SINGLETON = true;
            DisplayInfoSingleton.SINGLETON = new DisplayInfoSingleton();
        }
        return DisplayInfoSingleton.SINGLETON;
    }
    public LogUtil logUtil;
    private CommonLabels commonLabels;
    private CommonSeps commonSeps;
    private CommonStrings commonStrings;
    public string ORIENTATION;
    public string ADJUSTING_FOR_SCALING_IN_PORTRAIT;
    public string ADJUSTING_FOR_SCALING_IN_LANDSCAPE;
    private int32[] last;
    private int32[] lastHalf;
    private int32[] full;
    private int32 top;
    private int32 left;
    private int32 xOffset;
    private int32 yOffset;
    private float scaleLargestTo;
    public int32 WIDTH;
    public int32 HEIGHT;
    public int32 CUSTOM_WIDTH;
    public int32 CUSTOM_HEIGHT;
    private BaseScalable scalableListener;
    private float displayRatio;
    private float ratio;
    private string SET_LAST_SIZE_METHOD_NAME;
    private string FULL_WIDTH;
    private string FULL_HEIGHT;
    private string LAST_WIDTH;
    private string LAST_HEIGHT;
    private string PORTRAIT;
    private string LANDSCAPE;
    public DisplayChangeEvent displayChangeEvent;
    private string FIRE_METHOD_NAME;
    private string REASON;
    private string UPDATE_FROM_ORIENTATION_CHANGE;
    private BasicArrayList list;
    private string DISPLAY_INFO;
    private string FULL;
    private string LAST;
    private string LAST_HALF;

    // Java field initializers run after the base constructor
    private void initFieldsDisplayInfoSingleton() {
    this.logUtil = LogUtil.getInstance();
    this.commonLabels = CommonLabels.getInstance();
    this.commonSeps = CommonSeps.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.ORIENTATION = "ORIENTATION";
    this.ADJUSTING_FOR_SCALING_IN_PORTRAIT = "Adjusting for Scaling in portrait display ratio: ";
    this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE = "Adjusting for Scaling in landscape display ratio: ";
    this.last = new int32[4];
    this.lastHalf = new int32[4];
    this.full = new int32[4];
    this.top = 0;
    this.left = 0;
    this.xOffset = 0;
    this.yOffset = 0;
    this.scaleLargestTo = 0.0;
    this.WIDTH = 0;
    this.HEIGHT = 1;
    this.CUSTOM_WIDTH = 2;
    this.CUSTOM_HEIGHT = 3;
    this.scalableListener = new BaseScalable();
    this.displayRatio = 0.0;
    this.ratio = 1.0f;
    this.SET_LAST_SIZE_METHOD_NAME = "setLastSize";
    this.FULL_WIDTH = " FullWidth: ";
    this.FULL_HEIGHT = " FullHeight: ";
    this.LAST_WIDTH = "LastWidth: ";
    this.LAST_HEIGHT = " LastHeight: ";
    this.PORTRAIT = "Portrait";
    this.LANDSCAPE = "Landscape";
    this.displayChangeEvent = new DisplayChangeEvent(this);
    this.FIRE_METHOD_NAME = "fire";
    this.REASON = "reason: ";
    this.UPDATE_FROM_ORIENTATION_CHANGE = "Updating from Orientation Change ";
    this.list = new BasicArrayListD();
    this.DISPLAY_INFO = "Display Info: ";
    this.FULL = "full";
    this.LAST = "last";
    this.LAST_HALF = "lastHalf";
    }
    

    public static DisplayInfoSingleton getInstance() {
        return DisplayInfoSingleton.staticGet_SINGLETON();
    }
    

    public DisplayInfoSingleton() {
        base();
        this.initFieldsDisplayInfoSingleton();
        int32 size = this.last.length;
        for (int32 index = 0; index < size; index++) {
            this.last[index] = 0;
            this.lastHalf[index] = 0;
            this.full[index] = 0;
        }
        if (AndroidUtil.isAndroid()) {
            this.scaleLargestTo = 640.0f;
        } else {
            this.scaleLargestTo = 1080.0f;
        }
    }
    

    public virtual int32[] getLastHalf() {
        return this.lastHalf;
    }
    

    public virtual int32[] getLast() {
        return this.last;
    }
    

    public virtual int32[] getFull() {
        return this.full;
    }
    

    public virtual float getScaleLargestTo() {
        return this.scaleLargestTo;
    }
    

    public virtual void setScaleLargestTo(int32 scaleLargestTo) {
        this.scaleLargestTo = ((float) (scaleLargestTo));
    }
    

    public virtual void setLastSize(int32 aLastWidth, int32 aLastHeight, string reason) {
        if (this.full[this.WIDTH] != aLastWidth || this.full[this.HEIGHT] != aLastHeight) {
            this.setLastSizeForce(aLastWidth, aLastHeight, reason);
        }
    }
    

    private void setLastSizeForce(int32 aLastWidth, int32 aLastHeight, string reason) {
        StringMaker stringMaker = new StringMaker();
        this.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
        int32 aFullWidth = aLastWidth;
        int32 aFullHeight = aLastHeight;
        stringMaker.@delete(0, stringMaker.length());
        this.logUtil.putF(stringMaker.append(this.FULL_WIDTH).appendint(aFullWidth).append(this.FULL_HEIGHT).appendint(aFullHeight).append(this.toString()).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
        GenericOperatingSystem operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
        if (operatingSystemInterface.isOverScan()) {
            aLastWidth = aLastWidth * operatingSystemInterface.getOverScanXPercent() / 100;
            aLastHeight = aLastHeight * operatingSystemInterface.getOverScanYPercent() / 100;
        }
        if (operatingSystemInterface.isScalable()) {
            if (this.isPortraitWH(aLastWidth, aLastHeight)) {
                if (((float) (aLastHeight)) > this.scaleLargestTo) {
                    this.displayRatio = this.scaleLargestTo / ((float) (aLastHeight));
                    this.ratio = ((float) (aLastHeight)) / this.scaleLargestTo;
                    stringMaker.@delete(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(this.displayRatio).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth = ((int32) JMath.toInt32((((float) (aLastWidth)) * this.displayRatio)));
                    aLastHeight = ((int32) JMath.toInt32((((float) (aLastHeight)) * this.displayRatio)));
                    this.scalableListener.scale(this.ratio);
                } else {
                    this.ratio = 1.0f;
                    this.scalableListener.scale(this.ratio);
                }
            } else {
                if (((float) (aLastWidth)) > this.scaleLargestTo) {
                    this.displayRatio = this.scaleLargestTo / ((float) (aLastWidth));
                    this.ratio = ((float) (aLastWidth)) / this.scaleLargestTo;
                    stringMaker.@delete(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(this.displayRatio).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth = ((int32) JMath.toInt32((((float) (aLastWidth)) * this.displayRatio)));
                    aLastHeight = ((int32) JMath.toInt32((((float) (aLastHeight)) * this.displayRatio)));
                    this.scalableListener.scale(this.ratio);
                } else {
                    this.ratio = 1.0f;
                    this.scalableListener.scale(this.ratio);
                }
            }
        }
        stringMaker.@delete(0, stringMaker.length());
        this.logUtil.putF(stringMaker.append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
        this.xOffset = aFullWidth - aLastWidth;
        this.yOffset = aFullHeight - aLastHeight;
        this.left = this.scalableListener.getLeft(this.xOffset);
        this.top = this.scalableListener.getTop(this.yOffset);
        this.full[this.WIDTH] = aFullWidth;
        this.full[this.HEIGHT] = aFullHeight;
        this.last[this.WIDTH] = aLastWidth;
        this.lastHalf[this.WIDTH] = (this.last[this.WIDTH] >> 1);
        this.last[this.HEIGHT] = aLastHeight;
        this.lastHalf[this.HEIGHT] = (this.last[this.HEIGHT] >> 1);
        SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, this.ratio);
        this.add(this.SET_LAST_SIZE_METHOD_NAME);
    }
    

    public virtual bool isPortraitWH(int32 lastWidth, int32 lastHeight) {
        if (lastHeight > lastWidth) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual bool isPortrait() {
        return this.isPortraitWH(this.last[this.WIDTH], this.last[this.HEIGHT]);
    }
    

    public virtual void add(string reason) {
        StringMaker stringMaker = new StringMaker();
        this.logUtil.putF(stringMaker.append(this.REASON).append(reason).toString(), this, this.FIRE_METHOD_NAME);
        stringMaker.@delete(0, stringMaker.length());
        this.logUtil.putF(this.toStringAppend(stringMaker), this, this.FIRE_METHOD_NAME);
        this.list.add(JString.box(reason));
    }
    

    public virtual void process() {
        {
            if (this.list.size() > 0) {
                this.processForced();
            }
            this.list.clear();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void processForced() {
        {
            SWTJOGLProcessor swtJOGLProcessor = SWTJOGLProcessor.getInstance();
            swtJOGLProcessor.clear();
            DisplayChangeEventHandler.getInstance().fireEvent(this.displayChangeEvent);
            LastDisplayChangeEventHandler.getInstance().fireEvent(this.displayChangeEvent);
            swtJOGLProcessor.onSurfaceChanged();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void update(Displayable displayable, string reason) {
        int32 aLastWidth = displayable.getWidth();
        int32 aLastHeight = displayable.getHeight();
        int32 aFullWidth = aLastWidth;
        int32 aFullHeight = aLastHeight;
        StringMaker stringMaker = new StringMaker();
        this.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).append(this.commonSeps.SPACE).append(this.toString()).toString(), this, this.commonStrings.UPDATE);
        if (aLastWidth > 0 && aLastHeight > 0) {
            Features features = Features.getInstance();
            OpenGLFeatureFactory openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
            if (!features.isDefault(openGLFeatureFactory.OPENGL) || this.last[this.WIDTH] != aLastWidth || this.last[this.HEIGHT] != aLastHeight) {
                stringMaker.@delete(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append(this.UPDATE_FROM_ORIENTATION_CHANGE).toString(), this, this.commonStrings.UPDATE);
                GenericOperatingSystem operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
                if (operatingSystemInterface.isOverScan()) {
                    aLastWidth = aLastWidth * operatingSystemInterface.getOverScanXPercent() / 100;
                    aLastHeight = aLastHeight * operatingSystemInterface.getOverScanYPercent() / 100;
                }
                if (operatingSystemInterface.isScalable()) {
                    if (this.isPortraitWH(aLastWidth, aLastHeight)) {
                        if (((float) (aLastHeight)) > this.scaleLargestTo) {
                            this.displayRatio = this.scaleLargestTo / ((float) (aLastHeight));
                            this.ratio = ((float) (aLastHeight)) / this.scaleLargestTo;
                            stringMaker.@delete(0, stringMaker.length());
                            this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(this.displayRatio).toString(), this, this.commonStrings.UPDATE);
                            aLastWidth = ((int32) JMath.toInt32((((float) (aLastWidth)) * this.displayRatio)));
                            aLastHeight = ((int32) JMath.toInt32((((float) (aLastHeight)) * this.displayRatio)));
                            this.scalableListener.scale(this.ratio);
                        } else {
                            this.ratio = 1.0f;
                            this.scalableListener.scale(this.ratio);
                        }
                    } else {
                        if (((float) (aLastWidth)) > this.scaleLargestTo) {
                            this.displayRatio = this.scaleLargestTo / ((float) (aLastWidth));
                            this.ratio = ((float) (aLastWidth)) / this.scaleLargestTo;
                            stringMaker.@delete(0, stringMaker.length());
                            this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(this.displayRatio).toString(), this, this.commonStrings.UPDATE);
                            aLastWidth = ((int32) JMath.toInt32((((float) (aLastWidth)) * this.displayRatio)));
                            aLastHeight = ((int32) JMath.toInt32((((float) (aLastHeight)) * this.displayRatio)));
                            this.scalableListener.scale(this.ratio);
                        } else {
                            this.ratio = 1.0f;
                            this.scalableListener.scale(this.ratio);
                        }
                    }
                }
                stringMaker.@delete(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append(this.UPDATE_FROM_ORIENTATION_CHANGE).append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).toString(), this, this.commonStrings.UPDATE);
                this.xOffset = aFullWidth - aLastWidth;
                this.yOffset = aFullHeight - aLastHeight;
                this.left = this.scalableListener.getLeft(this.xOffset);
                this.top = this.scalableListener.getTop(this.yOffset);
                this.full[this.WIDTH] = aFullWidth;
                this.full[this.HEIGHT] = aFullHeight;
                this.last[this.WIDTH] = aLastWidth;
                this.lastHalf[this.WIDTH] = (this.last[this.WIDTH] >> 1);
                this.last[this.HEIGHT] = aLastHeight;
                this.lastHalf[this.HEIGHT] = (this.last[this.HEIGHT] >> 1);
                SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, this.ratio);
                this.add(this.commonStrings.UPDATE);
            }
        }
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        return this.toStringAppend(stringBuffer);
    }
    

    public virtual string toStringAppend(StringMaker stringBuffer) {
        stringBuffer.append(this.DISPLAY_INFO);
        stringBuffer.append(this.FULL);
        stringBuffer.append(this.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.full[this.WIDTH]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.FULL);
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.full[this.HEIGHT]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST);
        stringBuffer.append(this.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.last[this.WIDTH]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST);
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.last[this.HEIGHT]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST_HALF);
        stringBuffer.append(this.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.lastHalf[this.WIDTH]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST_HALF);
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.lastHalf[this.HEIGHT]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append((this.isPortrait() ? this.PORTRAIT : this.LANDSCAPE));
        return stringBuffer.toString();
    }
    

    public virtual int32 getTop() {
        return this.top;
    }
    

    public virtual int32 getLeft() {
        return this.left;
    }
    

    public virtual int32 getLastWidth() {
        return this.last[this.WIDTH];
    }
    

    public virtual int32 getLastHeight() {
        return this.last[this.HEIGHT];
    }
    

    public virtual int32 getLastHalfWidth() {
        return this.lastHalf[this.WIDTH];
    }
    

    public virtual int32 getLastHalfHeight() {
        return this.lastHalf[this.HEIGHT];
    }
    

    public virtual int32 getCustomLastWidth() {
        return this.last[this.CUSTOM_WIDTH];
    }
    

    public virtual int32 getCustomLastHeight() {
        return this.last[this.CUSTOM_HEIGHT];
    }
    

    public virtual int32 getRawLastWidth() {
        return this.last[this.WIDTH];
    }
    

    public virtual int32 getRawLastHeight() {
        return this.last[this.HEIGHT];
    }
    

    public virtual void setCustom(int32 width, int32 height) {
        this.last[this.CUSTOM_WIDTH] = width;
        this.lastHalf[this.CUSTOM_WIDTH] = (this.last[this.CUSTOM_WIDTH] >> 1);
        this.last[this.CUSTOM_HEIGHT] = height;
        this.lastHalf[this.CUSTOM_HEIGHT] = (this.last[this.CUSTOM_HEIGHT] >> 1);
    }
    

    public virtual void setScalableListener(BaseScalable scalableListener) {
        this.scalableListener = scalableListener;
    }
    

    public virtual ScalableListener getScalableListener() {
        return this.scalableListener;
    }
    

    public virtual float getRatio() {
        return this.ratio;
    }
    

    public virtual float getDisplayRatio() {
        return this.displayRatio;
    }
    

    public virtual void setOffset(int32 left, int32 top) {
        this.left = left;
    }
    

    public virtual int32 getxOffset() {
        return this.xOffset;
    }
    

    public virtual int32 getyOffset() {
        return this.yOffset;
    }
}

