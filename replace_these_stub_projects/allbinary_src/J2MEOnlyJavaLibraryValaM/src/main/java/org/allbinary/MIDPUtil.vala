/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2026 AllBinary
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
// package org.allbinary
// import java.io.IOException
// import java.io.InputStream
// import javax.microedition.lcdui.Form
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.Item
// import javax.microedition.media.Manager
// import javax.microedition.media.MediaException
// import javax.microedition.media.Player

//like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
public class MIDPUtil : JObject {
    private static MIDPUtil? instance;
    private static bool staticSet_instance = false;
    private static MIDPUtil staticGet_instance() {
        if (!MIDPUtil.staticSet_instance) {
            MIDPUtil.staticSet_instance = true;
            MIDPUtil.instance = new MIDPUtil();
        }
        return MIDPUtil.instance;
    }

    public MIDPUtil() {
        base();
    }
    

    public static MIDPUtil getInstance() {
        return MIDPUtil.staticGet_instance();
    }
    

    public virtual Image createImageWH(int32 width, int32 height) {
        return Image.createImage(width, height);
    }
    

    public virtual Image createImageFromByteArray(int8[] imageData, int32 imageOffset, int32 imageLength) {
        return Image.createImage(imageData, imageOffset, imageLength);
    }
    

    public virtual Image createImageFromInputStream(InputStream inputStream) {
        return Image.createImage(inputStream);
    }
    

    public virtual Player createPlayerFromInputStream(InputStream inputStream, string type) {
        return Manager.createPlayer(inputStream, type);
    }
    

    public virtual int32 appendItem(Form form, Item item) {
        return form.append(item);
    }
}

