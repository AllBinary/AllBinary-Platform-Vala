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
// package org.allbinary.game.configuration.feature
// import org.allbinary.logic.string.StringUtil

public class GraphicsFeatureFactory : JObject {
    private static GraphicsFeatureFactory? instance;
    private static bool staticSet_instance = false;
    private static GraphicsFeatureFactory staticGet_instance() {
        if (!GraphicsFeatureFactory.staticSet_instance) {
            GraphicsFeatureFactory.staticSet_instance = true;
            GraphicsFeatureFactory.instance = new GraphicsFeatureFactory();
        }
        return GraphicsFeatureFactory.instance;
    }
    public GraphicsFeature NONE;
    public GraphicsFeature TRANSPARENT_IMAGE_CREATION;
    public GraphicsFeature IMAGE_GRAPHICS;
    public GraphicsFeature IMAGE_ROTATION_ON_THE_FLY;
    public GraphicsFeature IMAGE_TO_ARRAY_GRAPHICS;
    public GraphicsFeature SPRITE_QUARTER_ROTATION_GRAPHICS;
    public GraphicsFeature SPRITE_FULL_GRAPHICS;
    public GraphicsFeature VECTOR_GRAPHICS;
    public GraphicsFeature VECTOR_TO_IMAGE_GRAPHICS;

    // Java field initializers run after the base constructor
    private void initFieldsGraphicsFeatureFactory() {
    this.NONE = new GraphicsFeature(StringUtil.getInstance().NULL_STRING);
    this.TRANSPARENT_IMAGE_CREATION = new GraphicsFeature("Transparent Image Creation");
    this.IMAGE_GRAPHICS = new GraphicsFeature("Image Graphics");
    this.IMAGE_ROTATION_ON_THE_FLY = new GraphicsFeature("Image Rotated On The Fly");
    this.IMAGE_TO_ARRAY_GRAPHICS = new GraphicsFeature("Image To Array Graphics");
    this.SPRITE_QUARTER_ROTATION_GRAPHICS = new GraphicsFeature("Sprite Quarter Rotation Graphics");
    this.SPRITE_FULL_GRAPHICS = new GraphicsFeature("Sprite Full Rotation Graphics");
    this.VECTOR_GRAPHICS = new GraphicsFeature("BasicArrayList Graphics");
    this.VECTOR_TO_IMAGE_GRAPHICS = new GraphicsFeature("BasicArrayList To Image Graphics");
    }
    

    public static GraphicsFeatureFactory getInstance() {
        return GraphicsFeatureFactory.staticGet_instance();
    }
    

    public GraphicsFeatureFactory() {
        base();
        this.initFieldsGraphicsFeatureFactory();
    }
}

