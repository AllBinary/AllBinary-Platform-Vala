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
// package org.allbinary.graphics
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil

public class RelativeRelationship : JObject {
    public static RelativeRelationship? NULL_RELATIVE_RELATIONSHIP;
    private static bool staticSet_NULL_RELATIVE_RELATIONSHIP = false;
    public static RelativeRelationship staticGet_NULL_RELATIVE_RELATIONSHIP() {
        if (!RelativeRelationship.staticSet_NULL_RELATIVE_RELATIONSHIP) {
            RelativeRelationship.staticSet_NULL_RELATIVE_RELATIONSHIP = true;
            RelativeRelationship.NULL_RELATIVE_RELATIONSHIP = new RelativeRelationship(PointFactory.getInstance().ZERO_ZERO, BasicArrayListUtil.getInstance().getImmutableInstance());
        }
        return RelativeRelationship.NULL_RELATIVE_RELATIONSHIP;
    }
    private BasicArrayList typesAllowedList;
    private int32 x;
    private int32 y;
    private int32 z;

    // Java field initializers run after the base constructor
    private void initFieldsRelativeRelationship() {
    
    
    
    
    }
    

    public RelativeRelationship(GPoint point, BasicArrayList typesAllowedList) {
        base();
        this.initFieldsRelativeRelationship();
        this.x = point.getX();
        this.y = point.getY();
        this.z = point.getZ();
        this.typesAllowedList = typesAllowedList;
    }
    

    public virtual int32 getX() {
        return this.x;
    }
    

    public virtual int32 getY() {
        return this.y;
    }
    

    public virtual int32 getZ() {
        return this.z;
    }
    

    public virtual BasicArrayList getTypesAllowedList() {
        return this.typesAllowedList;
    }
    

    public virtual void setTypesAllowedList(BasicArrayList typesAllowedList) {
        this.typesAllowedList = typesAllowedList;
    }
}

