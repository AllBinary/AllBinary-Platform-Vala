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
// package org.allbinary.business.advertisement
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.logic.system.security.licensing.LockedUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class Advertisements : JObject {
    private BasicArrayList bannerList;
    private BasicArrayList pageList;
    private MyRandomFactory myRandomFactory;

    // Java field initializers run after the base constructor
    private void initFieldsAdvertisements() {
    this.bannerList = new BasicArrayListD();
    this.pageList = new BasicArrayListD();
    this.myRandomFactory = MyRandomFactory.getInstance();
    }

    public Advertisements() {
        base();
        this.initFieldsAdvertisements();
    }
    

    public virtual void addPage(AdvertisementProcessorInterface advertisementProcessorInterface) {
        if (!this.pageList.contains(advertisementProcessorInterface)) {
            this.pageList.add(advertisementProcessorInterface);
        }
    }
    

    public virtual void startRandomPage() {
        int32 size = this.pageList.size();
        if (size > 0) {
            int32 random = this.myRandomFactory.getAbsoluteNextInt(size);
            AdvertisementProcessorInterface advertisementProcessorInterface = ((AdvertisementProcessorInterface) this.pageList.objectArray[random]);
            advertisementProcessorInterface.start();
        }
    }
    

    public virtual void processRandomPage() {
        if (LockedUtil.getInstance().isLocked()) {
            int32 size = this.pageList.size();
            if (size > 0) {
                int32 random = this.myRandomFactory.getAbsoluteNextInt(size);
                AdvertisementProcessorInterface advertisementProcessorInterface = ((AdvertisementProcessorInterface) this.pageList.objectArray[random]);
                advertisementProcessorInterface.process();
            }
        }
    }
    

    public virtual void stopAllPage() {
        for (int32 index = this.pageList.size(); --index >= 0; ) {
            AdvertisementProcessorInterface advertisementProcessorInterface = ((AdvertisementProcessorInterface) this.pageList.objectArray[index]);
            advertisementProcessorInterface.stop();
        }
    }
    

    public virtual void addBanner(AdvertisementProcessorInterface advertisementProcessorInterface) {
        if (!this.bannerList.contains(advertisementProcessorInterface)) {
            this.bannerList.add(advertisementProcessorInterface);
        }
    }
    

    public virtual void startAll() {
        for (int32 index = this.bannerList.size(); --index >= 0; ) {
            AdvertisementProcessorInterface advertisementProcessorInterface = ((AdvertisementProcessorInterface) this.bannerList.objectArray[index]);
            advertisementProcessorInterface.start();
        }
    }
    

    public virtual void stopAllBanner() {
        for (int32 index = this.bannerList.size(); --index >= 0; ) {
            AdvertisementProcessorInterface advertisementProcessorInterface = ((AdvertisementProcessorInterface) this.bannerList.objectArray[index]);
            advertisementProcessorInterface.stop();
        }
    }
    

    public virtual AdvertisementProcessorInterface getBanner(int32 index) {
        AdvertisementProcessorInterface advertisementProcessorInterface = ((AdvertisementProcessorInterface) this.bannerList.objectArray[index]);
        return advertisementProcessorInterface;
    }
    

    public virtual void stopAll() {
        this.stopAllBanner();
        this.stopAllPage();
    }
}

