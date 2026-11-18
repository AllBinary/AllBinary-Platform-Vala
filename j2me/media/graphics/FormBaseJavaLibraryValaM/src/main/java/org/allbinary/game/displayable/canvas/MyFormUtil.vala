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
// package org.allbinary.game.displayable.canvas
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.graphics.threed.SWTJOGLProcessor
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class MyFormUtil : JObject {
    private static MyFormUtil? instance;
    private static bool staticSet_instance = false;
    private static MyFormUtil staticGet_instance() {
        if (!MyFormUtil.staticSet_instance) {
            MyFormUtil.staticSet_instance = true;
            MyFormUtil.instance = new MyFormUtil();
        }
        return MyFormUtil.instance;
    }
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    private Rectangle popupMenuRectangle;

    // Java field initializers run after the base constructor
    private void initFieldsMyFormUtil() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.popupMenuRectangle = RectangleFactory.SINGLETON;
    }

    public MyFormUtil() {
        base();
        this.initFieldsMyFormUtil();
    }
    

    public static MyFormUtil getInstance() {
        return MyFormUtil.staticGet_instance();
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        Features features = Features.getInstance();
        bool isOpenGL = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL);
        int32 TOTAL_CHAR_WIDTH = (SWTJOGLProcessor.getInstance().isJOGL() && isOpenGL ? 2 : 3);
        int32 width = MyFontProcessor.defaultStringWidth(font, TOTAL_CHAR_WIDTH);
        PointFactory pointFactory = PointFactory.getInstance();
        if (displayInfo.getLastHeight() < 320) {
            this.popupMenuRectangle = new Rectangle(pointFactory.createXY(0, 25), width, (font.getHeight() * 4) + 2);
        } else {
            this.popupMenuRectangle = new Rectangle(pointFactory.createXY(0, displayInfo.getLastHalfHeight() - 70), width, (font.getHeight() * 5));
        }
    }
    

    public virtual Rectangle getPopupMenuRectangle() {
        return this.popupMenuRectangle;
    }
}

