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

public class VerticalItemIndexDx : ItemIndexDx {
    private ScrollCurrentSelectionForm scrollCurrentSelectionForm;

    // Java field initializers run after the base constructor
    private void initFieldsVerticalItemIndexDx() {
    
    }
    

    public VerticalItemIndexDx(ScrollCurrentSelectionForm scrollCurrentSelectionForm) {
        base();
        this.initFieldsVerticalItemIndexDx();
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm;
    }
    

    public override int32 getDx(int32 index, ABCustomItem item, int32 dx, int32 dy) {
        return this.scrollCurrentSelectionForm.getXVerticalForm(index, item, dx, dy);
    }
}

