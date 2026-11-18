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
// import org.allbinary.graphics.paint.Paintable

public class MultipleScrollSelectionFormRectPaintable : Paintable {
    private MultipleScrollSelectionHorizontalForm multipleScrollSelectionForm;

    // Java field initializers run after the base constructor
    private void initFieldsMultipleScrollSelectionFormRectPaintable() {
    
    }
    

    public MultipleScrollSelectionFormRectPaintable(MultipleScrollSelectionHorizontalForm multipleScrollSelectionForm) {
        base();
        this.initFieldsMultipleScrollSelectionFormRectPaintable();
        this.multipleScrollSelectionForm = multipleScrollSelectionForm;
    }
    

    public override void paint(Graphics graphics) {
        this.multipleScrollSelectionForm.fillRect(graphics);
    }
}

