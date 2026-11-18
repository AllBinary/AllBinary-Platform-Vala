// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache

public class PoolTypeFactory : JObject {
    private static PoolTypeFactory? instance;
    private static bool staticSet_instance = false;
    private static PoolTypeFactory staticGet_instance() {
        if (!PoolTypeFactory.staticSet_instance) {
            PoolTypeFactory.staticSet_instance = true;
            PoolTypeFactory.instance = new PoolTypeFactory();
        }
        return PoolTypeFactory.instance;
    }
    public PoolType VECTOR_POOL;

    // Java field initializers run after the base constructor
    private void initFieldsPoolTypeFactory() {
    this.VECTOR_POOL = new PoolType(CacheTypeFactory.getInstance().NO_CACHE);
    }

    public PoolTypeFactory() {
        base();
        this.initFieldsPoolTypeFactory();
    }
    

    public static PoolTypeFactory getInstance() {
        return PoolTypeFactory.staticGet_instance();
    }
}

