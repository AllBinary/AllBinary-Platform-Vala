// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
// import org.allbinary.logic.string.StringUtil

public class CacheTypeFactory : JObject {
    private static CacheTypeFactory? instance;
    private static bool staticSet_instance = false;
    private static CacheTypeFactory staticGet_instance() {
        if (!CacheTypeFactory.staticSet_instance) {
            CacheTypeFactory.staticSet_instance = true;
            CacheTypeFactory.instance = new CacheTypeFactory();
        }
        return CacheTypeFactory.instance;
    }
    public CacheType NO_CACHE;
    public CacheType CACHE;
    public CacheType SET;
    public CacheType CACHE_VECTOR;

    // Java field initializers run after the base constructor
    private void initFieldsCacheTypeFactory() {
    this.NO_CACHE = new CacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING);
    this.CACHE = new CacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING);
    this.SET = new CacheType(StringUtil.getInstance().EMPTY_STRING, "Set");
    this.CACHE_VECTOR = new CacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING);
    }

    public CacheTypeFactory() {
        base();
        this.initFieldsCacheTypeFactory();
    }
    

    public static CacheTypeFactory getInstance() {
        return CacheTypeFactory.staticGet_instance();
    }
}

