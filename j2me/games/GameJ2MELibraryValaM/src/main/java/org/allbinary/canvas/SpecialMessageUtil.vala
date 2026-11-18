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
// package org.allbinary.canvas
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.system.Memory

public class SpecialMessageUtil : JObject {
    private static SpecialMessageUtil? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static SpecialMessageUtil staticGet_SINGLETON() {
        if (!SpecialMessageUtil.staticSet_SINGLETON) {
            SpecialMessageUtil.staticSet_SINGLETON = true;
            SpecialMessageUtil.SINGLETON = new SpecialMessageUtil();
        }
        return SpecialMessageUtil.SINGLETON;
    }

    public SpecialMessageUtil() {
        base();
    }
    

    public static SpecialMessageUtil getInstance() {
        return SpecialMessageUtil.staticGet_SINGLETON();
    }
    

    public virtual string @get() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(Memory.getInfo());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(GameStatisticsFactory.getInstance().toString());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(" Option: ");
        if (Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT)) {
            stringBuffer.append(OpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT.getName());
        } else {
            stringBuffer.append(OpenGLFeatureFactory.getInstance().OPENGL_MINIMUM.getName());
        }
        return stringBuffer.toString();
    }
}

