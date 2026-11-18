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
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class GroupFactory : JObject {
    private static GroupFactory? instance;
    private static bool staticSet_instance = false;
    private static GroupFactory staticGet_instance() {
        if (!GroupFactory.staticSet_instance) {
            GroupFactory.staticSet_instance = true;
            GroupFactory.instance = new GroupFactory();
        }
        return GroupFactory.instance;
    }
    public LogUtil logUtil;
    public Group[] NULL_GROUP_ARRAY;
    private BasicArrayList list;
    private int32 index;

    // Java field initializers run after the base constructor
    private void initFieldsGroupFactory() {
    this.logUtil = LogUtil.getInstance();
    this.NULL_GROUP_ARRAY = new Group[0];
    this.list = new BasicArrayListD();
    this.index = 0;
    }

    public GroupFactory() {
        base();
        this.initFieldsGroupFactory();
    }
    

    public static GroupFactory getInstance() {
        return GroupFactory.staticGet_instance();
    }
    

    public virtual Group getNextGroup() {
        Group group = ((Group) this.list.objectArray[this.index]);
        this.index++;
        return group;
    }
    

    public virtual Group getNextGroupByName(string name) {
        Group group = this.getNextGroup();
        group.setName(name);
        return group;
    }
    

    public virtual void init(int16 groups, string[] nameArray) {
        StringMaker stringMaker = new StringMaker();
        StringUtil stringUtil = StringUtil.getInstance();
        string TEAM = "Team ";
        this.list.clear();
        this.index = 0;
        int32 size = this.list.size();
        string name = null;
        while (size < ((int32) (groups))) {
            name = stringUtil.EMPTY_STRING;
            if (size < nameArray.length) {
                name = nameArray[size];
            } else {
                stringMaker.@delete(0, stringMaker.length());
                name = stringMaker.append(TEAM).appendint(size).toString();
            }
            this.list.add(new Group(name, ((int16) ((size + 3)))));
            size++;
        }
    }
}

