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
// package org.allbinary.logic.util.cache

public class CachePolicyFactory : JObject {
    private static CachePolicyFactory? instance;
    private static bool staticSet_instance = false;
    private static CachePolicyFactory staticGet_instance() {
        if (!CachePolicyFactory.staticSet_instance) {
            CachePolicyFactory.staticSet_instance = true;
            CachePolicyFactory.instance = new CachePolicyFactory();
        }
        return CachePolicyFactory.instance;
    }
    public string NAME;
    public CachePolicy MAX_TIME_THOUSAND_MAX;
    public CachePolicy THIRTY_MINUTES_TEN_THOUSAND_MAX;
    public CachePolicy THIRTY_MINUTES_FIFTY_THOUSAND_MAX;
    public CachePolicy ONE_MINUTE_FIVE_MAX;
    public CachePolicy ONE_MINUTE_TEN_MAX;
    public CachePolicy ONE_MINUTE_ONE_HUNDRED_MAX;

    // Java field initializers run after the base constructor
    private void initFieldsCachePolicyFactory() {
    this.NAME = "lru";
    this.MAX_TIME_THOUSAND_MAX = new CachePolicy(this.NAME, Long.MAX_VALUE, 1000);
    this.THIRTY_MINUTES_TEN_THOUSAND_MAX = new CachePolicy(this.NAME, 1000 * 60 * 30, 10000);
    this.THIRTY_MINUTES_FIFTY_THOUSAND_MAX = new CachePolicy(this.NAME, 1000 * 60 * 30, 100000);
    this.ONE_MINUTE_FIVE_MAX = new CachePolicy(this.NAME, 1000 * 60 * 1, 5);
    this.ONE_MINUTE_TEN_MAX = new CachePolicy(this.NAME, 1000 * 60 * 1, 10);
    this.ONE_MINUTE_ONE_HUNDRED_MAX = new CachePolicy(this.NAME, 1000 * 60 * 1, 100);
    }

    public CachePolicyFactory() {
        base();
        this.initFieldsCachePolicyFactory();
    }
    

    public static CachePolicyFactory getInstance() {
        return CachePolicyFactory.staticGet_instance();
    }
}

