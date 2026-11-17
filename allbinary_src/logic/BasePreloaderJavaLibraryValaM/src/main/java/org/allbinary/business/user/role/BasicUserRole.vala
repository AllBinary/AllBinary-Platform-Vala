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
// package org.allbinary.business.user.role
// import java.io.Serializable

public class BasicUserRole : JObject, Serializable {
    private int32 m_int_RoleId;
    private string role;
    private string displayValue;
    private int64 sessionTimeout;
    private int64 sessionInactivityTimeout;

    // Java field initializers run after the base constructor
    private void initFieldsBasicUserRole() {
    
    
    
    
    
    }
    

    public BasicUserRole(string aRole, int32 a_int_RoleId, int64 aSessionTimeout, int64 aSessionInactivityTimeout) {
        this.with5(aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout);
    }
    

    public BasicUserRole.with5(string aRole, string aDisplayValue, int32 a_int_RoleId, int64 aSessionTimeout, int64 aSessionInactivityTimeout) {
        base();
        this.initFieldsBasicUserRole();
        this.m_int_RoleId = a_int_RoleId;
        this.role = aRole;
        this.displayValue = aDisplayValue;
        this.sessionTimeout = aSessionTimeout;
        this.sessionInactivityTimeout = aSessionInactivityTimeout;
        BasicUserRoles.getInstance().roleVector.add(this);
    }
    

    private int32 getRoleId() {
        return this.m_int_RoleId;
    }
    

    public virtual string getRole() {
        return this.role;
    }
    

    public virtual int64 getSessionTimeout() {
        return this.sessionTimeout;
    }
    

    public virtual int64 getSessionInactivityTimeout() {
        return this.sessionInactivityTimeout;
    }
    

    public new virtual bool equals(BasicUserRole basicUserRole) {
        if (this.getRoleId() == basicUserRole.getRoleId()) {
            return true;
        }
        return false;
    }
    

    public override string toString() {
        return this.getRole();
    }
}

