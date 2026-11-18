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
// package org.allbinary.logic.system.security.licensing
// import org.allbinary.logic.string.StringUtil

public class ThirdPartyInApplicationPurchase : JObject, ThirdPartyInApplicationPurchaseInterface {

    public ThirdPartyInApplicationPurchase() {
        base();
    }
    

    public virtual bool isPurchased(LockableFeature lockableFeature) {
        return false;
    }
    

    public virtual void onCreate(JObject anyType, JObject stateObject) {
    }
    

    public virtual void onDestroy() {
    }
    

    public virtual void onStart() {
    }
    

    public virtual void onActivityResult(int32 requestCode, int32 resultCode, JObject dataObject) {
    }
    

    public virtual void onSaveInstanceState(JObject anyType) {
    }
    

    public virtual void onStop() {
    }
    

    public virtual void requestPurchase(LockableFeature lockableFeature) {
    }
    

    public virtual void requestReceipts() {
    }
    

    public virtual void add(LockableFeature lockableFeature) {
    }
    

    public virtual string getUserName() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public virtual bool isEnabled() {
        return false;
    }
    

    public virtual void requestProducts() {
    }
}

