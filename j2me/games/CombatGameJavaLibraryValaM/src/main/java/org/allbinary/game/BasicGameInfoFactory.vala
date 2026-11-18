// Generated Code Do Not Modify
// package org.allbinary.game

public class BasicGameInfoFactory : JObject {
    private static BasicGameInfoFactory? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static BasicGameInfoFactory staticGet_SINGLETON() {
        if (!BasicGameInfoFactory.staticSet_SINGLETON) {
            BasicGameInfoFactory.staticSet_SINGLETON = true;
            BasicGameInfoFactory.SINGLETON = new BasicGameInfoFactory();
        }
        return BasicGameInfoFactory.SINGLETON;
    }
    public int32 currentReleaseIndex;
    public int32 currentDestroyIndex;
    public int32 total;

    // Java field initializers run after the base constructor
    private void initFieldsBasicGameInfoFactory() {
    this.currentReleaseIndex = 0;
    this.currentDestroyIndex = 0;
    this.total = 0;
    }
    

    public static BasicGameInfoFactory getInstance() {
        return BasicGameInfoFactory.staticGet_SINGLETON();
    }
    

    public BasicGameInfoFactory() {
        base();
        this.initFieldsBasicGameInfoFactory();
    }
    

    public virtual void init(int32 total) {
        this.currentReleaseIndex = 0;
        this.currentDestroyIndex = 0;
        this.total = total;
    }
    

    public virtual bool isPeaked() {
        if (this.currentDestroyIndex >= this.total) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual int32 howManyLeft() {
        return this.total - this.currentDestroyIndex;
    }
}

