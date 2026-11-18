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

public class VerticalFormProcessor : Processor {
    private ScrollCurrentSelectionForm scrollCurrentSelectionForm;

    // Java field initializers run after the base constructor
    private void initFieldsVerticalFormProcessor() {
    
    }
    

    public VerticalFormProcessor(ScrollCurrentSelectionForm scrollCurrentSelectionForm) {
        base();
        this.initFieldsVerticalFormProcessor();
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm;
    }
    

    public override void process() {
        this.scrollCurrentSelectionForm.processVerticalForm();
        this.scrollCurrentSelectionForm.processor = Processor.getInstance();
    }
}

