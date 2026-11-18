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
// import org.allbinary.canvas.Processor

public class HorizontalFormProcessor : Processor {
    private ScrollCurrentSelectionForm scrollCurrentSelectionForm;

    // Java field initializers run after the base constructor
    private void initFieldsHorizontalFormProcessor() {
    
    }
    

    public HorizontalFormProcessor(ScrollCurrentSelectionForm scrollCurrentSelectionForm) {
        base();
        this.initFieldsHorizontalFormProcessor();
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm;
    }
    

    public override void process() {
        this.scrollCurrentSelectionForm.processHorizontalForm();
        this.scrollCurrentSelectionForm.processor = Processor.getInstance();
    }
}

