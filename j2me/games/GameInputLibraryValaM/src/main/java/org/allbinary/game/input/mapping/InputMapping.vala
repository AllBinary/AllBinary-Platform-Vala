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
// package org.allbinary.game.input.mapping
// import org.allbinary.game.input.Input
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

public class InputMapping : JObject {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private ABHashtable hashtable;
    private BasicArrayList mappedList;

    // Java field initializers run after the base constructor
    private void initFieldsInputMapping() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.hashtable = StdUtil.getInstance().createHashtable();
    this.mappedList = new BasicArrayListD();
    }
    

    public InputMapping() {
        base();
        this.initFieldsInputMapping();
    }
    

    public virtual int32 getTotalMapped() {
        return this.hashtable.size();
    }
    

    public virtual bool isDefaultNew() {
        return false;
    }
    

    public virtual InputToGameKeyMapping getDefault() {
        return InputToGameKeyMapping.getNullInstance();
    }
    

    public virtual void removeAll() {
        this.hashtable.clear();
        this.mappedList.clear();
    }
    

    public virtual void remove(Input input, Input mappedToInput) {
        StringMaker stringBuffer = new StringMaker();
        StringUtil stringUtil = StringUtil.getInstance();
        stringBuffer.append(CommonLabels.getInstance().START_LABEL);
        stringBuffer.append(stringUtil.toString1(input));
        stringBuffer.append(" == ");
        stringBuffer.append(stringUtil.toString1(mappedToInput));
        this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove");
        BasicArrayList list = this.getMappedInput(input);
        if (list.contains(mappedToInput)) {
            list.remove(mappedToInput);
            this.mappedList.remove(mappedToInput);
            stringBuffer.@delete(0, stringBuffer.length());
            stringBuffer.append("Removed: ");
            stringBuffer.append(stringUtil.toString1(input));
            stringBuffer.append(" == ");
            stringBuffer.append(stringUtil.toString1(mappedToInput));
            this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove");
        } else {
            stringBuffer.@delete(0, stringBuffer.length());
            stringBuffer.append("Not Deleted: ");
            stringBuffer.append(stringUtil.toString1(input));
            stringBuffer.append(" == ");
            stringBuffer.append(stringUtil.toString1(mappedToInput));
            this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove");
        }
    }
    

    public virtual void addMapping(InputToGameKeyMapping inputToGameKeyMapping) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual void add(Input input, Input mappedToInput) {
        BasicArrayList list = this.getMappedInput(input);
        if (!list.contains(mappedToInput)) {
            list.add(mappedToInput);
            this.mappedList.add(mappedToInput);
        }
    }
    

    public virtual bool isMapped(Input input) {
        return this.mappedList.contains(input);
    }
    

    public virtual BasicArrayList getMappedInput(Input id) {
        JObject mappingInputCanBeNullList = this.hashtable.@get(id);
        if (mappingInputCanBeNullList == null) {
            BasicArrayList list = new BasicArrayListD();
            this.hashtable.put(id, list);
            return list;
        }
        return ((BasicArrayList) mappingInputCanBeNullList);
    }
    

    public virtual ABHashtable getHashtable() {
        return this.hashtable;
    }
}

