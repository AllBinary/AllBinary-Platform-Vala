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

public class BasicUserRoleFactory : JObject {
    private static BasicUserRoleFactory? instance;
    private static bool staticSet_instance = false;
    private static BasicUserRoleFactory staticGet_instance() {
        if (!BasicUserRoleFactory.staticSet_instance) {
            BasicUserRoleFactory.staticSet_instance = true;
            BasicUserRoleFactory.instance = new BasicUserRoleFactory();
        }
        return BasicUserRoleFactory.instance;
    }
    private int64 INACTIVITYTIMEOUT;
    private int64 CUSTOMERTIMEOUT;
    private int64 CUSTOMERMAXSESSIONTIME;
    private int64 MAXSESSIONTIME;
    public BasicUserRole INSTALLER;
    public BasicUserRole ADMINISTRATOR;
    public BasicUserRole CUSTOMER;
    public BasicUserRole SUBSCRIBERCUSTOMER;
    public BasicUserRole WHOLESALECUSTOMER;
    public BasicUserRole STOREMANAGER;
    public BasicUserRole PRODUCTMANAGER;
    public BasicUserRole CUSTOMERMANAGER;
    public BasicUserRole PAYMENTMANAGER;
    public BasicUserRole ORDERMANAGER;
    public BasicUserRole WEBMANAGER;
    public BasicUserRole REVIEWER;
    public BasicUserRole SHIPPING;
    public BasicUserRole ADJUSTER;
    public BasicUserRole WORKFLOWEDITOR;
    public BasicUserRole WIZARD;
    public BasicUserRole VIEWEDITOR;

    // Java field initializers run after the base constructor
    private void initFieldsBasicUserRoleFactory() {
    this.INACTIVITYTIMEOUT = 360000000;
    this.CUSTOMERTIMEOUT = 360000000;
    this.CUSTOMERMAXSESSIONTIME = 360000000;
    this.MAXSESSIONTIME = 360000000;
    this.INSTALLER = new BasicUserRole("Installer", 16, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.ADMINISTRATOR = new BasicUserRole("Administrator", 0, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.CUSTOMER = new BasicUserRole.with5("CustomerUser", "Customer User", 1, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME);
    this.SUBSCRIBERCUSTOMER = new BasicUserRole.with5("SubscriberUser", "Subscriber User", 2, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME);
    this.WHOLESALECUSTOMER = new BasicUserRole.with5("WholesaleUser", "Wholesale User", 3, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME);
    this.STOREMANAGER = new BasicUserRole.with5("StoreManager", "Store Manager", 4, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.PRODUCTMANAGER = new BasicUserRole.with5("ProductManager", "Product Manager", 5, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.CUSTOMERMANAGER = new BasicUserRole.with5("UserManager", "User Manager", 6, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.PAYMENTMANAGER = new BasicUserRole.with5("PaymentManager", "Payment Manager", 7, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.ORDERMANAGER = new BasicUserRole.with5("OrderManager", "Order Manager", 8, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.WEBMANAGER = new BasicUserRole.with5("WebManager", "Web Manager", 9, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.REVIEWER = new BasicUserRole("Reviewer", 10, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.SHIPPING = new BasicUserRole("Shipping", 11, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.ADJUSTER = new BasicUserRole("Adjuster", 12, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.WORKFLOWEDITOR = new BasicUserRole.with5("WorkFlowEditor", "WorkFlow Editor", 13, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.WIZARD = new BasicUserRole.with5("WizardUser", "Wizard User", 14, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.VIEWEDITOR = new BasicUserRole.with5("ViewEditor", "View Editor", 15, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    }

    public BasicUserRoleFactory() {
        base();
        this.initFieldsBasicUserRoleFactory();
    }
    

    public static BasicUserRoleFactory getInstance() {
        return BasicUserRoleFactory.staticGet_instance();
    }
}

