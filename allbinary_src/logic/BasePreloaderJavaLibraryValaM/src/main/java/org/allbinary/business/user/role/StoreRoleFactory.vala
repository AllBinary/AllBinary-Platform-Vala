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
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class StoreRoleFactory : JObject {
    private static StoreRoleFactory? instance;
    private static bool staticSet_instance = false;
    private static StoreRoleFactory staticGet_instance() {
        if (!StoreRoleFactory.staticSet_instance) {
            StoreRoleFactory.staticSet_instance = true;
            StoreRoleFactory.instance = new StoreRoleFactory();
        }
        return StoreRoleFactory.instance;
    }
    private BasicArrayList roles;
    private BasicArrayList subscriberRoles;
    private BasicArrayList wholesaleRoles;

    // Java field initializers run after the base constructor
    private void initFieldsStoreRoleFactory() {
    this.roles = new BasicArrayListD();
    this.subscriberRoles = new BasicArrayListD();
    this.wholesaleRoles = new BasicArrayListD();
    }
    

    public static StoreRoleFactory getInstance() {
        return StoreRoleFactory.staticGet_instance();
    }
    

    public StoreRoleFactory() {
        base();
        this.initFieldsStoreRoleFactory();
        BasicUserRoleFactory basicUserRoleFactory = BasicUserRoleFactory.getInstance();
        this.roles.add(basicUserRoleFactory.CUSTOMER);
        this.roles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER);
        this.roles.add(basicUserRoleFactory.WHOLESALECUSTOMER);
        this.subscriberRoles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER);
        this.wholesaleRoles.add(basicUserRoleFactory.WHOLESALECUSTOMER);
    }
    

    public virtual BasicArrayList getRoles() {
        return this.roles;
    }
    

    public virtual BasicArrayList getSubscriberRoles() {
        return this.subscriberRoles;
    }
    

    public virtual BasicArrayList getWholesaleRoles() {
        return this.wholesaleRoles;
    }
}

