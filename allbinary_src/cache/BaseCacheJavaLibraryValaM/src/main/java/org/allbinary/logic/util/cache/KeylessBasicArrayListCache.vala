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
// package org.allbinary.logic.util.cache
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil

public class KeylessBasicArrayListCache : IndexedBasicArrayListCache {
    public LogUtil logUtil;
    public BasicArrayListUtil basicArrayListUtil;

    // Java field initializers run after the base constructor
    private void initFieldsKeylessBasicArrayListCache() {
    this.logUtil = LogUtil.getInstance();
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
    }
    

    public KeylessBasicArrayListCache() {
        base();
        this.initFieldsKeylessBasicArrayListCache();
    }
    

    public virtual BasicArrayList @get() {
        {
            if (this.index >= this.list.size()) {
                this.addDefault();
            }
            BasicArrayList list = ((BasicArrayList) this.getAt(this.index++));
            return list;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void clear() {
        base.clear();
        BasicArrayList basicArrayList = null;
        for (int32 index = this.list.size() - 1; index >= 0; index--) {
            basicArrayList = (((BasicArrayList) this.list.objectArray[index]));
            basicArrayList.clear();
        }
    }
    

    public override string log() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("S: ");
        stringBuffer.appendint(this.list.size());
        string S_LABEL = " s: ";
        BasicArrayList basicArrayList = null;
        for (int32 index = this.list.size() - 1; index >= 0; index--) {
            stringBuffer.append(S_LABEL);
            basicArrayList = (((BasicArrayList) this.list.objectArray[index]));
            stringBuffer.appendint(basicArrayList.size());
        }
        return stringBuffer.toString();
    }
}

