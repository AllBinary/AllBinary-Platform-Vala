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
// package org.allbinary.util
// import jsinterop.annotations.JsType
// import org.allbinary.logic.communication.log.ForcedLogUtil

public class ImmutableBasicArrayList : BasicArrayListS {
    private string name;

    // Java field initializers run after the base constructor
    private void initFieldsImmutableBasicArrayList() {
    
    }
    

    public ImmutableBasicArrayList(string name, int32 size) {
        base(size);
        this.initFieldsImmutableBasicArrayList();
        this.name = name;
    }
    

    public override bool add(JObject e) {
        ForcedLogUtil.log(this.name, this);
        return true;
    }
    

    public override void addAt(int32 index, JObject element) {
        ForcedLogUtil.log(this.name, this);
    }
    

    public override string toString() {
        return this.name;
    }
}

