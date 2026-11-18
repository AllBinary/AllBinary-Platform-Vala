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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.form.item.ABCustomItem

public class ScrollSelectionFormVerticalPaintable : ItemIndexPaintable {
    private ScrollSelectionForm scrollSelectionForm;

    // Java field initializers run after the base constructor
    private void initFieldsScrollSelectionFormVerticalPaintable() {
    
    }
    

    public ScrollSelectionFormVerticalPaintable(ScrollSelectionForm scrollSelectionForm) {
        base();
        this.initFieldsScrollSelectionFormVerticalPaintable();
        this.scrollSelectionForm = scrollSelectionForm;
    }
    

    public override int32 paint(Graphics graphics, int32 index, ABCustomItem item, int32 dx, int32 dy) {
        return this.scrollSelectionForm.paintItemVertical(graphics, index, item, dx, dy);
    }
}

