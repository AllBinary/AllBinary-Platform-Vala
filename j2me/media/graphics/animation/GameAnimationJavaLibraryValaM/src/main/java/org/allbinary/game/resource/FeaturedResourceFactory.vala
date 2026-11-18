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
// package org.allbinary.game.resource
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureControlledInterface
// import org.allbinary.game.configuration.feature.GraphicsFeatureFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class FeaturedResourceFactory : JObject {
    public LogUtil logUtil;
    private BasicArrayList list;
    private CommonStrings commonStrings;
    private string ANIMATION_FEATURES;
    private string IMAGE_LABEL;
    private string IMAGE_GRAPHICS_ARRAY;
    private string IMAGE_GRAPHICS_ROTATION;
    private string SPRITE_QUARTER;
    private string SPRITE_FULL;
    private string IS_LOADING_LEVEL_LABEL;
    private string IS_FEATURE;
    private string GAME_FEATURE_CONTROLLED;

    // Java field initializers run after the base constructor
    private void initFieldsFeaturedResourceFactory() {
    this.logUtil = LogUtil.getInstance();
    this.list = new BasicArrayListD();
    this.commonStrings = CommonStrings.getInstance();
    this.ANIMATION_FEATURES = "Animation Features: Vector: ";
    this.IMAGE_LABEL = " Image: ";
    this.IMAGE_GRAPHICS_ARRAY = "Image Array: ";
    this.IMAGE_GRAPHICS_ROTATION = "Image Rotate: ";
    this.SPRITE_QUARTER = " Sprite Quarter: ";
    this.SPRITE_FULL = " Sprite Full: ";
    this.IS_LOADING_LEVEL_LABEL = " isLoadingLevel ";
    this.IS_FEATURE = " isFeature: ";
    this.GAME_FEATURE_CONTROLLED = "GameFeatureControlledInterface: ";
    }
    

    public FeaturedResourceFactory() {
        base();
        this.initFieldsFeaturedResourceFactory();
    }
    

    public virtual void init(int32 level) {
        int32 size = this.list.size();
        for (int32 index = 0; index < size; index++) {
            GameFeatureControlledInterface featureInterface = ((GameFeatureControlledInterface) this.list.objectArray[index]);
            bool isLoadingLevel = featureInterface.isLoadingLevel(level);
            bool isFeature = featureInterface.isFeature();
            this.logUtil.putF(new StringMaker().append(this.GAME_FEATURE_CONTROLLED).append(featureInterface.toString()).append(this.IS_LOADING_LEVEL_LABEL).append(ResourceLoadingLevelFactory.getInstance().getLevelString(level)).append(CommonSeps.getInstance().COLON_SEP).appendboolean(isLoadingLevel).append(this.IS_FEATURE).appendboolean(isFeature).toString(), this, this.commonStrings.INIT);
            if (isLoadingLevel && isFeature) {
                featureInterface.init(level);
            }
        }
        Features features = Features.getInstance();
        GraphicsFeatureFactory graphicsFeatureFactory = GraphicsFeatureFactory.getInstance();
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(this.ANIMATION_FEATURES);
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS));
        stringBuffer.append(this.IMAGE_LABEL);
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS));
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
        if (features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)) {
            stringBuffer.@delete(0, stringBuffer.length());
            stringBuffer.append(this.IMAGE_GRAPHICS_ARRAY);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append(this.IMAGE_GRAPHICS_ROTATION);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append(this.SPRITE_QUARTER);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS));
            stringBuffer.append(this.SPRITE_FULL);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS));
            this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
        }
    }
    

    public virtual void clear() {
        this.list.clear();
    }
    

    public virtual void add(GameFeatureControlledInterface featureInterface) {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString1(featureInterface)).toString(), this, this.commonStrings.ADD);
        this.list.add(featureInterface);
    }
    

    public virtual BasicArrayList getList() {
        return this.list;
    }
}

