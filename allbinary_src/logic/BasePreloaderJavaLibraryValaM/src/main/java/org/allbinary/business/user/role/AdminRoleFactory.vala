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

public class AdminRoleFactory : JObject {
    private static AdminRoleFactory? instance;
    private static bool staticSet_instance = false;
    private static AdminRoleFactory staticGet_instance() {
        if (!AdminRoleFactory.staticSet_instance) {
            AdminRoleFactory.staticSet_instance = true;
            AdminRoleFactory.instance = new AdminRoleFactory();
        }
        return AdminRoleFactory.instance;
    }
    private BasicArrayList adminRoles;
    private BasicArrayList storeAdminRoles;
    private BasicArrayList storeManagementRoles;
    private BasicArrayList productManagementRoles;
    private BasicArrayList reviewManagementRoles;
    private BasicArrayList customerManagementRoles;
    private BasicArrayList workflowManagementRoles;
    private BasicArrayList orderManagementRoles;
    private BasicArrayList adjusterManagementRoles;
    private BasicArrayList shippingManagementRoles;
    private BasicArrayList webManagementRoles;

    // Java field initializers run after the base constructor
    private void initFieldsAdminRoleFactory() {
    this.adminRoles = new BasicArrayListD();
    this.storeAdminRoles = new BasicArrayListD();
    this.storeManagementRoles = new BasicArrayListD();
    this.productManagementRoles = new BasicArrayListD();
    this.reviewManagementRoles = new BasicArrayListD();
    this.customerManagementRoles = new BasicArrayListD();
    this.workflowManagementRoles = new BasicArrayListD();
    this.orderManagementRoles = new BasicArrayListD();
    this.adjusterManagementRoles = new BasicArrayListD();
    this.shippingManagementRoles = new BasicArrayListD();
    this.webManagementRoles = new BasicArrayListD();
    }
    

    public static AdminRoleFactory getInstance() {
        return AdminRoleFactory.staticGet_instance();
    }
    

    public AdminRoleFactory() {
        base();
        this.initFieldsAdminRoleFactory();
        BasicUserRoleFactory basicUserRoleFactory = BasicUserRoleFactory.getInstance();
        this.adminRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.storeAdminRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.storeAdminRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.storeManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.storeManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.storeManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER);
        this.storeManagementRoles.add(basicUserRoleFactory.ADJUSTER);
        this.storeManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER);
        this.storeManagementRoles.add(basicUserRoleFactory.REVIEWER);
        this.storeManagementRoles.add(basicUserRoleFactory.SHIPPING);
        this.productManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.productManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.productManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER);
        this.reviewManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.reviewManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.reviewManagementRoles.add(basicUserRoleFactory.REVIEWER);
        this.customerManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.customerManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.customerManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER);
        this.workflowManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.workflowManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.workflowManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR);
        this.orderManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.orderManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.adjusterManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.adjusterManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.adjusterManagementRoles.add(basicUserRoleFactory.ADJUSTER);
        this.shippingManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.shippingManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.shippingManagementRoles.add(basicUserRoleFactory.SHIPPING);
        this.webManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.webManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.webManagementRoles.add(basicUserRoleFactory.WEBMANAGER);
        this.webManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR);
        this.webManagementRoles.add(basicUserRoleFactory.VIEWEDITOR);
    }
    

    public virtual BasicArrayList getProductManagementRoles() {
        return this.productManagementRoles;
    }
    

    public virtual BasicArrayList getAdminRoles() {
        return this.adminRoles;
    }
    

    public virtual BasicArrayList getStoreAdminRoles() {
        return this.storeAdminRoles;
    }
    

    public virtual BasicArrayList getStoreManagementRoles() {
        return this.storeManagementRoles;
    }
    

    public virtual BasicArrayList getReviewManagementRoles() {
        return this.reviewManagementRoles;
    }
    

    public virtual BasicArrayList getCustomerManagementRoles() {
        return this.customerManagementRoles;
    }
    

    public virtual BasicArrayList getWorkflowManagementRoles() {
        return this.workflowManagementRoles;
    }
    

    public virtual BasicArrayList getWebManagementRoles() {
        return this.webManagementRoles;
    }
    

    public virtual BasicArrayList getShippingManagementRoles() {
        return this.shippingManagementRoles;
    }
    

    public virtual BasicArrayList getAdjusterManagementRoles() {
        return this.adjusterManagementRoles;
    }
    

    public virtual BasicArrayList getOrderManagementRoles() {
        return this.orderManagementRoles;
    }
}

