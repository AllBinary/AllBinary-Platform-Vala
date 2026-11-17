/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.business.user.role
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class BasicUserRoles : JObject {
    private static BasicUserRoles? instance;
    private static bool staticSet_instance = false;
    private static BasicUserRoles staticGet_instance() {
        if (!BasicUserRoles.staticSet_instance) {
            BasicUserRoles.staticSet_instance = true;
            BasicUserRoles.instance = new BasicUserRoles();
        }
        return BasicUserRoles.instance;
    }
    public BasicArrayList roleVector;

    // Java field initializers run after the base constructor
    private void initFieldsBasicUserRoles() {
    this.roleVector = new BasicArrayListD();
    }

    public BasicUserRoles() {
        base();
        this.initFieldsBasicUserRoles();
    }
    

    public static BasicUserRoles getInstance() {
        return BasicUserRoles.staticGet_instance();
    }
    

    public virtual BasicUserRole getRole(string role) {
        BasicArrayList roleVector = this.getAll();
        int32 size = roleVector.size();
        for (int32 index = 0; index < size; index++) {
            BasicUserRole userRole = ((BasicUserRole) roleVector.@get(index));
            if (JString.compareTo(role, userRole.toString()) == 0) {
                return userRole;
            }
        }
        JSystem.fatal(new JException("Exception", "Unable to get role - Unknown Role"));
    }
    

    public virtual BasicArrayList getAll() {
        return this.roleVector;
    }
}

