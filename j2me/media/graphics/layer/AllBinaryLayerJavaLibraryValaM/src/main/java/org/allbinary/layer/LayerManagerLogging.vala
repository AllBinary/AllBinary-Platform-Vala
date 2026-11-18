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
// import org.allbinary.TsUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps

public class LayerManagerLogging : LayerManagerLoggingBase {
    private static LayerManagerLogging? instance;
    private static bool staticSet_instance = false;
    private static LayerManagerLogging staticGet_instance() {
        if (!LayerManagerLogging.staticSet_instance) {
            LayerManagerLogging.staticSet_instance = true;
            LayerManagerLogging.instance = new LayerManagerLogging();
        }
        return LayerManagerLogging.instance;
    }
    private static bool removeFailed = false;
    public LogUtil logUtil;
    private StringMaker stringBuilder;
    private string APPEND;
    private string APPEND_;
    private string _AT_;
    private string ATTEMPT_REMOVE_;
    private string REMOVE_;
    private string REMOVE;
    private string DID_NOT_REMOVE;
    private string CLEAR;

    // Java field initializers run after the base constructor
    private void initFieldsLayerManagerLogging() {
    this.logUtil = LogUtil.getInstance();
    this.stringBuilder = new StringMaker();
    this.APPEND = "append";
    this.APPEND_ = " append: ";
    this._AT_ = " at: ";
    this.ATTEMPT_REMOVE_ = " Remove Attempt: ";
    this.REMOVE_ = " Remove: ";
    this.REMOVE = "remove";
    this.DID_NOT_REMOVE = " Did not remove: ";
    this.CLEAR = " Clear List";
    }

    public LayerManagerLogging() {
        base();
        this.initFieldsLayerManagerLogging();
    }
    

    public static LayerManagerLogging getInstance() {
        return LayerManagerLogging.staticGet_instance();
    }
    

    public override void append(AllBinaryLayer layerInterface) {
        this.stringBuilder.@delete(0, this.stringBuilder.length());
        this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.APPEND_).append(layerInterface.getName()).toString(), this, this.APPEND);
    }
    

    public override void appendAt(AllBinaryLayer layerInterface, int32 index) {
        this.stringBuilder.@delete(0, this.stringBuilder.length());
        this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.APPEND_).append(layerInterface.getName()).append(this._AT_).appendint(index).toString(), this, this.APPEND);
    }
    

    public override void remove(AllBinaryLayer layerInterface) {
        if (layerInterface == null) {
            this.stringBuilder.@delete(0, this.stringBuilder.length());
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.ATTEMPT_REMOVE_).append(StringUtil.getInstance().toString1(layerInterface)).toString(), this, this.REMOVE);
        } else {
            this.stringBuilder.@delete(0, this.stringBuilder.length());
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.ATTEMPT_REMOVE_).append(layerInterface.getName()).toString(), this, this.REMOVE);
        }
    }
    

    public override void removeResult(LayerManager layerManager, AllBinaryLayer layerInterface, bool result) {
        if (layerInterface == null) {
            this.stringBuilder.@delete(0, this.stringBuilder.length());
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.REMOVE_).append(StringUtil.getInstance().toString1(layerInterface)).toString(), this, this.REMOVE);
        } else if (result) {
            if (LayerManagerLogging.removeFailed) {
                this.stringBuilder.@delete(0, this.stringBuilder.length());
                this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.REMOVE_).append(layerInterface.getName()).toString(), this, this.REMOVE);
            }
        } else {
            this.stringBuilder.@delete(0, this.stringBuilder.length());
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.DID_NOT_REMOVE).append(layerInterface.getName()).toString(), this, this.REMOVE);
            LayerManagerLogging.removeFailed = true;
        }
    }
    

    private void log(LayerManager layerManager) {
        this.stringBuilder.@delete(0, this.stringBuilder.length());
        int32 size = layerManager.getSize();
        CommonSeps commonSeps = CommonSeps.getInstance();
        this.stringBuilder.append(Integer.toHexString(TsUtil.getInstance().hashCode1(layerManager))).append(commonSeps.COLON_SEP);
        this.stringBuilder.appendint(size).append(commonSeps.COLON_SEP);
        AllBinaryLayer allBinaryLayer = null;
        for (int32 index = 0; index < size; index++) {
            allBinaryLayer = (((AllBinaryLayer) layerManager.getLayerAt(index)));
            this.stringBuilder.append(allBinaryLayer.getName()).append(commonSeps.COMMA);
        }
        this.logUtil.putF(this.stringBuilder.toString(), this, this.REMOVE);
    }
    

    public override void clear() {
        this.stringBuilder.@delete(0, this.stringBuilder.length());
        this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.CLEAR).toString(), this, this.CLEAR);
    }
}

