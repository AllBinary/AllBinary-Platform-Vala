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

public class DrawStringUtil : JObject {
    private static DrawStringUtil? instance;
    private static bool staticSet_instance = false;
    private static DrawStringUtil staticGet_instance() {
        if (!DrawStringUtil.staticSet_instance) {
            DrawStringUtil.staticSet_instance = true;
            DrawStringUtil.instance = new DrawStringUtil();
        }
        return DrawStringUtil.instance;
    }
    private string EMPTY_STRING;
    private int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsDrawStringUtil() {
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.anchor = Anchor.TOP_LEFT;
    }

    public DrawStringUtil() {
        base();
        this.initFieldsDrawStringUtil();
    }
    

    public static DrawStringUtil getInstance() {
        return DrawStringUtil.staticGet_instance();
    }
    

    public virtual void drawCenterString(Graphics graphics, string string, int32 offset, int32 length, int32 x, int32 y) {
        int32 width = (graphics.getFont().substringWidth(string, offset, length) >> 1);
        {
            graphics.drawSubstring(string, offset, length, x - width, y, this.anchor);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void drawCenterStrings(Graphics graphics, string[] stringArray, int32 maxWidth, int32 charHeight, int32 x, int32 y) {
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
                    this.drawCenterString(graphics, string, offset, currentLength, x, y + ((index + extraLines++) * charHeight));
                    offset = offset + currentLength;
                    currentLength = linePortion;
                }
                extraLines--;
            }
        }
    }
}

