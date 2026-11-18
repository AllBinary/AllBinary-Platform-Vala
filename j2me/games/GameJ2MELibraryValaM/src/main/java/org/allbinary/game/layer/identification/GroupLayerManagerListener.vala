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
// package org.allbinary.game.layer.identification
// import org.allbinary.game.identification.Group
// import org.allbinary.game.identification.GroupInterfaceCompositeInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.event.LayerManagerEvent
// import org.allbinary.layer.event.LayerManagerEventHandler
// import org.allbinary.layer.event.LayerManagerEventListener
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class GroupLayerManagerListener : LayerManagerEventListener {
    private static GroupLayerManagerListener? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static GroupLayerManagerListener staticGet_SINGLETON() {
        if (!GroupLayerManagerListener.staticSet_SINGLETON) {
            GroupLayerManagerListener.staticSet_SINGLETON = true;
            GroupLayerManagerListener.SINGLETON = new GroupLayerManagerListener();
        }
        return GroupLayerManagerListener.SINGLETON;
    }
    public LogUtil logUtil;
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsGroupLayerManagerListener() {
    this.logUtil = LogUtil.getInstance();
    this.list = new BasicArrayListD();
    }
    

    public static GroupLayerManagerListener getInstance() {
        return GroupLayerManagerListener.staticGet_SINGLETON();
    }
    

    public GroupLayerManagerListener() {
        base();
        this.initFieldsGroupLayerManagerListener();
        LayerManagerEventHandler.getInstance().addListener(this);
    }
    

    public virtual void clear() {
        BasicArrayList groupList = null;
        int32 size = this.list.size();
        for (int32 index = size - 1; index >= 0; index--) {
            groupList = ((BasicArrayList) this.list.objectArray[index]);
            groupList.clear();
        }
    }
    

    public virtual int32 getGroupSizeFromInterface(GroupInterfaceCompositeInterface groupInterfaceCompositeInterface) {
        Group[] groupInterfaceArray = groupInterfaceCompositeInterface.getGroupInterface();
        return this.getGroupSize(groupInterfaceArray[0]);
    }
    

    public virtual int32 getGroupSize(Group groupInterface) {
        int32 id = ((int32) (groupInterface.getGroupId()));
        return this.getGroupSizeById(id);
    }
    

    public virtual BasicArrayList getList(Group groupInterface) {
        int32 id = ((int32) (groupInterface.getGroupId()));
        return this.getListById(id);
    }
    

    private BasicArrayList getListById(int32 groupId) {
        BasicArrayList groupList = ((BasicArrayList) this.list.objectArray[groupId]);
        return groupList;
    }
    

    private int32 getGroupSizeById(int32 groupId) {
        BasicArrayList groupList = ((BasicArrayList) this.list.objectArray[groupId]);
        int32 size = groupList.size();
        return size;
    }
    

    public virtual bool areAllOtherGroupsEmpty(Group groupInterface) {
        int32 id = ((int32) (groupInterface.getGroupId()));
        int32 size = this.list.size();
        for (int32 index = size - 1; index >= 0; index--) {
            if (id != index) {
                int32 groupSize = this.getGroupSizeById(index);
                if (groupSize != 0) {
                    this.logUtil.putF(new StringMaker().append("Group Size: ").appendint(groupSize).toString(), this, "areAllOtherGroupsEmpty");
                    return false;
                }
            }
        }
        return true;
    }
    

    private bool isIdInList(int32 id, BasicArrayList excludeGroupList) {
        int32 size = excludeGroupList.size();
        Group[] groupInterfaceArray = null;
        Group groupInterface = null;
        int32 groupId = 0;
        for (int32 index = size - 1; index >= 0; index--) {
            groupInterfaceArray = ((Group[]) excludeGroupList.objectArray[index]);
            int32 size2 = groupInterfaceArray.length;
            for (int32 index2 = 0; index2 < size2; index2++) {
                groupInterface = groupInterfaceArray[index2];
                groupId = ((int32) (groupInterface.getGroupId()));
                if (groupId == id) {
                    return true;
                }
            }
        }
        return false;
    }
    

    public virtual bool areAllOtherGroupsLessThan(BasicArrayList excludeGroupList, int32 maxSize) {
        int32 size = this.list.size();
        for (int32 index = size - 1; index >= 0; index--) {
            if (!this.isIdInList(index, excludeGroupList)) {
                int32 groupSize = this.getGroupSizeById(index);
                if (groupSize >= maxSize) {
                    return false;
                }
            }
        }
        return true;
    }
    

    public virtual void init(int32 total) {
        while (this.list.size() <= total + 1) {
            this.list.add(new BasicArrayListD());
        }
    }
    

    public override void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public override void onCreateLayerManagerEvent(LayerManagerEvent layerManagerEvent) {
        AllBinaryLayer layerInterface = layerManagerEvent.getLayerInterface();
        Group[] groupInterfaceArray = layerInterface.getGroupInterface();
        int32 size = groupInterfaceArray.length;
        int32 id = 0;
        BasicArrayList groupList = null;
        for (int32 index = 0; index < size; index++) {
            id = ((int32) (groupInterfaceArray[index].getGroupId()));
            groupList = ((BasicArrayList) this.list.objectArray[id]);
            if (groupList == null) {
                this.logUtil.putF(new StringMaker().append("id: ").appendint(id).toString(), this, "onCreateLayerManagerEvent");
            }
            if (!groupList.contains(layerInterface)) {
                groupList.add(layerInterface);
            } else {
            }
        }
    }
    

    public override void onDeleteLayerManagerEvent(LayerManagerEvent layerManagerEvent) {
        AllBinaryLayer layerInterface = layerManagerEvent.getLayerInterface();
        Group[] groupInterfaceArray = layerInterface.getGroupInterface();
        int32 size = groupInterfaceArray.length;
        int32 id = 0;
        BasicArrayList groupList = null;
        for (int32 index = 0; index < size; index++) {
            id = ((int32) (groupInterfaceArray[index].getGroupId()));
            groupList = ((BasicArrayList) this.list.objectArray[id]);
            groupList.remove(layerInterface);
        }
    }
    

    public virtual void log() {
        StringMaker stringBuffer = new StringMaker();
        string GROUP = "Group: ";
        string SPACE = CommonSeps.getInstance().SPACE;
        string TOTAL_LABEL = CommonLabels.getInstance().TOTAL_LABEL;
        int32 size = this.list.size();
        for (int32 index = size - 1; index >= 0; index--) {
            BasicArrayList groupList = ((BasicArrayList) this.list.objectArray[index]);
            stringBuffer.append(GROUP);
            stringBuffer.appendint(index);
            stringBuffer.append(SPACE);
            stringBuffer.append(TOTAL_LABEL);
            stringBuffer.appendint(groupList.size());
            stringBuffer.append(SPACE);
        }
        this.logUtil.putF(stringBuffer.toString(), this, "log");
    }
}

