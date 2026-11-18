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
// import org.allbinary.AndroidUtil
// import org.allbinary.J2MEUtil
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.animation.vector.RectangleFilledAnimation
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.layer.SWTUtil
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.graphics.draw.DrawVerticalStringUtil
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.threed.SWTJOGLProcessor

public class BasicPopupMenuPaintable : Paintable, UpdateMyFontInterface {
    private const string NAME = "MENU";
    public BasicColorSetUtil basicSetColorUtil;
    private DrawVerticalStringUtil drawStringUtil;
    private string label;
    private BasicColor foregroundBasicColor;
    private MyFontProcessor myFontProcessor;
    private Rectangle rectangle;
    private int32 BORDER;
    private int32 heightOffset;
    private int32 offset;
    private Animation animationInterface;

    // Java field initializers run after the base constructor
    private void initFieldsBasicPopupMenuPaintable() {
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.drawStringUtil = DrawVerticalStringUtil.getInstance();
    
    
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    
    this.BORDER = 0;
    this.heightOffset = 0;
    this.offset = 0;
    this.animationInterface = null;
    }
    

    public BasicPopupMenuPaintable(Rectangle rectangle, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base();
        this.initFieldsBasicPopupMenuPaintable();
        this.foregroundBasicColor = foregroundBasicColor;
        this.label = BasicPopupMenuPaintable.NAME;
        this.rectangle = rectangle;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
        } else {
            this.animationInterface = new RectangleFilledAnimation(this.rectangle.getWidth(), this.rectangle.getHeight(), BasicColorFactory.getInstance().TRANSPARENT_GREY);
        }
        this.init(rectangle);
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        Features features = Features.getInstance();
        bool isOpenGL = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL);
        this.drawStringUtil.updateMeasurement(graphics, this.label);
        int32 BORDER = 0;
        if (J2MEUtil.isHTML() || isOpenGL) {
            BORDER = MyFontProcessor.defaultCharWidth(font) / 2;
        } else if (AndroidUtil.isAndroid() || J2MEUtil.isJ2SE() || SWTUtil.isSWT) {
            BORDER = MyFontProcessor.defaultCharWidth(font);
        } else {
            BORDER = MyFontProcessor.defaultCharWidth(font) * 2;
        }
        this.BORDER = BORDER;
        this.heightOffset = this.rectangle.getHeight() - (font.getHeight() * BasicPopupMenuPaintable.NAME.length());
        if (OpenGLFeatureUtil.getInstance().isAnyThreed()) {
            this.heightOffset -= font.getHeight() + 2;
            if (AndroidUtil.isAndroid()) {
                this.heightOffset = font.getHeight();
            } else {
                this.heightOffset -= font.getHeight() + 2;
            }
        }
        this.offset = (this.heightOffset >> 1) + ((SWTJOGLProcessor.getInstance().isJOGL() ? 4 : 0));
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public virtual void init(Rectangle rectangle) {
        this.rectangle = rectangle;
        int32 width = this.rectangle.getWidth();
        int32 height = this.rectangle.getHeight();
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
        } else {
            RectangleFilledAnimation rectangleFilledAnimation = ((RectangleFilledAnimation) this.animationInterface);
            rectangleFilledAnimation.setWidth(width);
            rectangleFilledAnimation.setHeight(height);
        }
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        GPoint point = this.rectangle.getPoint();
        int32 x = point.getX();
        int32 y = point.getY();
        int32 width = this.rectangle.getWidth();
        int32 height = this.rectangle.getHeight();
        this.animationInterface.paintXY(graphics, x, y);
        this.basicSetColorUtil.setBasicColorP(graphics, this.foregroundBasicColor);
        this.drawStringUtil.paintVerticle(graphics, this.label, x + this.BORDER, y + this.offset, 0);
        graphics.drawRect(x, y, width, height);
    }
}

