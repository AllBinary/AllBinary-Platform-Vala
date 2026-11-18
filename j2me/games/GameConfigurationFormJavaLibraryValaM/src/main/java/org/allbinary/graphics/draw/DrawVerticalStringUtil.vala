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
// package org.allbinary.graphics.draw
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.AndroidUtil
// import org.allbinary.J2MEUtil
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

public class DrawVerticalStringUtil : JObject {
    private static DrawVerticalStringUtil? instance;
    private static bool staticSet_instance = false;
    private static DrawVerticalStringUtil staticGet_instance() {
        if (!DrawVerticalStringUtil.staticSet_instance) {
            DrawVerticalStringUtil.staticSet_instance = true;
            DrawVerticalStringUtil.instance = new DrawVerticalStringUtil();
        }
        return DrawVerticalStringUtil.instance;
    }
    private string EMPTY_STRING;
    private int32 anchor;
    private int32 charHeight;
    private int32 offsetY;
    private int32[] offsetXArray;

    // Java field initializers run after the base constructor
    private void initFieldsDrawVerticalStringUtil() {
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.anchor = Anchor.TOP_LEFT;
    this.charHeight = 0;
    this.offsetY = 0;
    this.offsetXArray = NullUtil.getInstance().NULL_INT_ARRAY;
    }

    public DrawVerticalStringUtil() {
        base();
        this.initFieldsDrawVerticalStringUtil();
    }
    

    public static DrawVerticalStringUtil getInstance() {
        return DrawVerticalStringUtil.staticGet_instance();
    }
    

    public virtual void updateMeasurement(Graphics graphics, string string) {
        OpenGLFeatureUtil openGLFeatureUtil = OpenGLFeatureUtil.getInstance();
        Font font = graphics.getFont();
        this.charHeight = font.getHeight();
        this.offsetY = 0;
        if (J2MEUtil.isHTML()) {
            this.charHeight += 1;
        } else if (openGLFeatureUtil.isAnyThreed()) {
            this.charHeight += 2;
            if (AndroidUtil.isAndroid()) {
            } else {
                this.offsetY = 2 + (this.charHeight * 2 / 3);
            }
        }
        int32 size = JString.length(string);
        uint16 aChar = 0;
        int32[] offsetXArray = new int32[size];
        for (int32 index = size - 1; index >= 0; index--) {
            aChar = JString.charAt(string, index);
            if (openGLFeatureUtil.isAnyThreed()) {
                offsetXArray[index] = font.charWidth(aChar) / 2;
            }
        }
        this.offsetXArray = offsetXArray;
    }
    

    public virtual void paintVerticle(Graphics graphics, string string, int32 x, int32 y, int32 anchor) {
        int32 size = JString.length(string);
        uint16 aChar = 0;
        for (int32 index = size - 1; index >= 0; index--) {
            aChar = JString.charAt(string, index);
            graphics.drawChar(aChar, x + this.offsetXArray[index], y + (this.charHeight * index) + this.offsetY, anchor);
        }
    }
    

    public virtual void drawCenterString(Graphics graphics, string string, int32 offset, int32 length, int32 x, int32 y) {
        int32 width = (graphics.getFont().substringWidth(string, offset, length) >> 1);
        {
            graphics.drawSubstring(string, offset, length, x - width, y, this.anchor);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void drawCenterStrings(Graphics graphics, string[] stringArray, int32 maxWidth, int32 x, int32 y) {
        int32 extraLines = 0;
        for (int32 index = 0; index < stringArray.length; index++) {
            string string = stringArray[index];
            if (string != this.EMPTY_STRING) {
                int32 width = graphics.getFont().stringWidth(string);
                int32 minTotalLines = 1;
                if (width > maxWidth) {
                    minTotalLines = (width / maxWidth) + 1;
                }
                int32 linePortion = JString.length(string) / minTotalLines;
                int32 offset = 0;
                int32 currentLength = linePortion;
                int32 size = JString.length(string);
                while (offset < size) {
                    if (offset + currentLength > size) {
                        currentLength = size - offset;
                    }
                    if (offset + currentLength != size) {
                        while (currentLength > 0 && stringArray[index].charAt(offset + currentLength) != ((uint16) ' ')) {
                            currentLength--;
                        }
                        if (currentLength <= 4) {
                            currentLength = linePortion;
                        }
                    }
                    this.drawCenterString(graphics, string, offset, currentLength, x, y + ((index + extraLines++) * this.charHeight));
                    offset = offset + currentLength;
                    currentLength = linePortion;
                }
                extraLines--;
            }
        }
    }
}

