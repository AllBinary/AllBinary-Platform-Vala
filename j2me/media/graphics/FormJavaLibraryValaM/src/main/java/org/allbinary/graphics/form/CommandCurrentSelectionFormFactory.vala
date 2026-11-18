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
// package org.allbinary.graphics.form
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.TouchFeatureFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.form.item.ABCustomItem

public class CommandCurrentSelectionFormFactory : JObject {

    public CommandCurrentSelectionFormFactory() {
        base();
    }
    

    public static ScrollSelectionForm getInstance8(string title, ABCustomItem[] items, Rectangle rectangle, FormType formType, int32 border, bool moveForSmallScreen, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        if (Features.getInstance().isFeature(TouchFeatureFactory.getInstance().TOUCH_ENABLED)) {
            ScrollSelectionForm scrollSelectionForm = new CommandCurrentSelectionForm(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor);
            scrollSelectionForm.init(rectangle, formType);
            return scrollSelectionForm;
        } else {
            return ScrollSelectionFormNoneFactory.getInstance();
        }
    }
}

