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
// package org.allbinary.game.identification
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class CompositeGroup : JObject {
    public LogUtil logUtil;
    private Group groupInterface;
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsCompositeGroup() {
    this.logUtil = LogUtil.getInstance();
    
    this.list = new BasicArrayListD();
    }
    

    public CompositeGroup(Group groupInterface) {
        base();
        this.initFieldsCompositeGroup();
        this.groupInterface = groupInterface;
    }
    

    public virtual void clear() {
        this.list.clear();
    }
    

    public virtual void add(Group groupInterface) {
        CommonStrings commonStrings = CommonStrings.getInstance();
        GroupCommonFactory groupCommonFactory = GroupCommonFactory.getInstance();
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(groupCommonFactory.ADDING_LABEL);
        stringBuffer.append(groupInterface.toString());
        stringBuffer.append(groupCommonFactory.TO_LABEL);
        stringBuffer.append(StringUtil.getInstance().toString1(this.groupInterface));
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.ADD);
        this.list.add(groupInterface);
    }
    

    public virtual bool isInGroup(Group groupInterface) {
        if (this.list.contains(groupInterface)) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual Group getGroup() {
        return this.groupInterface;
    }
}

