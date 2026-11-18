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
// package org.allbinary.media.image
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFactory
// import org.allbinary.graphics.Anchor
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class ImageCopyUtil : JObject {
    private static ImageCopyUtil? instance;
    private static bool staticSet_instance = false;
    private static ImageCopyUtil staticGet_instance() {
        if (!ImageCopyUtil.staticSet_instance) {
            ImageCopyUtil.staticSet_instance = true;
            ImageCopyUtil.instance = new ImageCopyUtil();
        }
        return ImageCopyUtil.instance;
    }
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    private ImageCreationUtil imageCreationUtil;
    private int32 anchor;
    private GameFeatureFactory gameFeatureFactory;
    private Features features;
    private string NO_COPY;

    // Java field initializers run after the base constructor
    private void initFieldsImageCopyUtil() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.imageCreationUtil = ImageCreationUtil.getInstance();
    this.anchor = Anchor.TOP_LEFT;
    this.gameFeatureFactory = GameFeatureFactory.getInstance();
    this.features = Features.getInstance();
    this.NO_COPY = "J2ME does not need to copy images after initial loading";
    }
    

    public static ImageCopyUtil getInstance() {
        return ImageCopyUtil.staticGet_instance();
    }
    

    public ImageCopyUtil() {
        base();
        this.initFieldsImageCopyUtil();
    }
    

    public virtual Image createImageForRotation(Image originalImage) {
        return this.createImage(originalImage);
    }
    

    public virtual Image createImage(Image originalImage) {
        if (!this.features.isFeature(this.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) {
            this.logUtil.put(this.NO_COPY, this, this.commonStrings.CONSTRUCTOR, new JException("Exception", ""));
            return originalImage;
        }
        Image image = this.imageCreationUtil.createImageWH(originalImage.getWidth(), originalImage.getHeight());
        if (image.isMutable()) {
            image.getGraphics().drawImage(originalImage, 0, 0, this.anchor);
            return image;
        } else {
            JSystem.fatal(new JException("Exception", "Not Mutable"));
        }
    }
    

    public virtual Image createImageScale(Image originalImage, float canvasScale, bool resize) {
        if (!this.features.isFeature(this.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) {
            this.logUtil.put(this.NO_COPY, this, this.commonStrings.CONSTRUCTOR, new JException("Exception", ""));
            return originalImage;
        }
        int32 newWidth = ((int32) ((originalImage.getWidth() * canvasScale)));
        int32 newHeight = ((int32) ((originalImage.getHeight() * canvasScale)));
        if (resize) {
            if (newWidth < newHeight) {
                newWidth = newHeight;
            }
            if (newHeight < newWidth) {
                newHeight = newWidth;
            }
        }
        Image image = this.imageCreationUtil.createImageWH(newWidth, newHeight);
        if (image.isMutable()) {
            int32 halfWidthDelta = (newWidth - originalImage.getWidth()) / 2;
            int32 halfHeightDelta = (newHeight - originalImage.getHeight()) / 2;
            Graphics graphics = image.getGraphics();
            graphics.drawImage(originalImage, halfWidthDelta, halfHeightDelta, this.anchor);
            return image;
        } else {
            JSystem.fatal(new JException("Exception", "Not Mutable"));
        }
    }
}

