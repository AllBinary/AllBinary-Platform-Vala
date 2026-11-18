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
// package org.allbinary.logic.control.validate
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList

public interface ValidatorBaseInterface : JObject {
    

    public abstract bool isValid();
    

    public abstract string validationInfo();
    

    public abstract ABHashtable toHashtable();
    

    public abstract BasicArrayList toList();
}

