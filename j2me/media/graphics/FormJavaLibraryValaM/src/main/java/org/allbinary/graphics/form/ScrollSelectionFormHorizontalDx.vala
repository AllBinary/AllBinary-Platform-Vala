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
// import org.allbinary.graphics.form.item.ABCustomItem

public class ScrollSelectionFormHorizontalDx : ItemIndexDx {
    private ScrollSelectionForm scrollSelectionForm;

    // Java field initializers run after the base constructor
    private void initFieldsScrollSelectionFormHorizontalDx() {
    
    }
    

    public ScrollSelectionFormHorizontalDx(ScrollSelectionForm scrollSelectionForm) {
        base();
        this.initFieldsScrollSelectionFormHorizontalDx();
        this.scrollSelectionForm = scrollSelectionForm;
    }
    

    public override int32 getDx(int32 index, ABCustomItem item, int32 dx, int32 dy) {
        return this.scrollSelectionForm.getSelectedIndexForPointHorizontalDx(index, item, dx, dy);
    }
}

