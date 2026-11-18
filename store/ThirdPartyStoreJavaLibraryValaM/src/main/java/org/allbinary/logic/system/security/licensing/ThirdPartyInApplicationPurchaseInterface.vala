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

public interface ThirdPartyInApplicationPurchaseInterface : JObject {
    

    public abstract bool isPurchased(LockableFeature lockableFeature);
    

    public abstract void onCreate(JObject anyType, JObject stateObject);
    

    public abstract void onDestroy();
    

    public abstract void onStart();
    

    public abstract void onActivityResult(int32 requestCode, int32 resultCode, JObject dataObject);
    

    public abstract void onSaveInstanceState(JObject anyType);
    

    public abstract void onStop();
    

    public abstract void requestPurchase(LockableFeature lockableFeature);
    

    public abstract void requestReceipts();
    

    public abstract void add(LockableFeature lockableFeature);
    

    public abstract string getUserName();
    

    public abstract bool isEnabled();
}

