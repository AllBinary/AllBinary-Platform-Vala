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
// package org.allbinary.game.paint
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.OperatingSystemFactory

public class ColorFillPaintableFactory : JObject {
    private static ColorFillPaintableFactory? instance;
    private static bool staticSet_instance = false;
    private static ColorFillPaintableFactory staticGet_instance() {
        if (!ColorFillPaintableFactory.staticSet_instance) {
            ColorFillPaintableFactory.staticSet_instance = true;
            ColorFillPaintableFactory.instance = new ColorFillPaintableFactory();
        }
        return ColorFillPaintableFactory.instance;
    }

    public ColorFillPaintableFactory() {
        base();
    }
    

    public static ColorFillPaintableFactory getInstance() {
        return ColorFillPaintableFactory.staticGet_instance();
    }
    

    public virtual ColorFillBasePaintable getInstance2(BasicColor basicColor, bool forThreedCanvas) {
        GenericOperatingSystem operatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
        if (operatingSystem.isOverScan()) {
            return new OverScanColorFillPaintable(basicColor);
        } else {
            return new ColorFillPaintable(basicColor);
        }
    }
}

