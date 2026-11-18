/*
 * 
 * To change this license header, choose License Headers in Project Properties. 
 * To change this template file, choose Tools | Templates 
 * and open the template in the editor.  
 */
// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
// import org.allbinary.logic.string.StringUtil

public class InApplicationPurchaseFactory : JObject {
    private static InApplicationPurchaseFactory? instance;
    private static bool staticSet_instance = false;
    private static InApplicationPurchaseFactory staticGet_instance() {
        if (!InApplicationPurchaseFactory.staticSet_instance) {
            InApplicationPurchaseFactory.staticSet_instance = true;
            InApplicationPurchaseFactory.instance = new InApplicationPurchaseFactory();
        }
        return InApplicationPurchaseFactory.instance;
    }
    

    public static InApplicationPurchaseFactory getInstance() {
        return InApplicationPurchaseFactory.staticGet_instance();
    }
    

    public InApplicationPurchaseFactory() {
        base();
    }
    

    public virtual void init(JObject anyType, JObject stateObject) {
    }
    

    public virtual void onCreate(JObject anyType, JObject stateObject) {
    }
    

    public virtual void onStart() {
    }
    

    public virtual void onResult(int32 requestCode, int32 resultCode, JObject data) {
    }
    

    public virtual void onSaveState(JObject anyType) {
    }
    

    public virtual void onStop() {
    }
    

    public virtual void onDestroy() {
    }
    

    public virtual void purchase(LockableFeature lockableFeature) {
    }
    

    public virtual bool isPurchased(LockableFeature lockableFeature) {
        return false;
    }
    

    public virtual void add(LockableFeature lockableFeature) {
    }
    

    public virtual string getUserName() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public virtual bool isEnabled() {
        return false;
    }
}

