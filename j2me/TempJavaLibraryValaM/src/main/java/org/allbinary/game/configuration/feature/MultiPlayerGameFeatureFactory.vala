// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature

public class MultiPlayerGameFeatureFactory : JObject {
    private static MultiPlayerGameFeatureFactory? instance;
    private static bool staticSet_instance = false;
    private static MultiPlayerGameFeatureFactory staticGet_instance() {
        if (!MultiPlayerGameFeatureFactory.staticSet_instance) {
            MultiPlayerGameFeatureFactory.staticSet_instance = true;
            MultiPlayerGameFeatureFactory.instance = new MultiPlayerGameFeatureFactory();
        }
        return MultiPlayerGameFeatureFactory.instance;
    }
    

    public static MultiPlayerGameFeatureFactory getInstance() {
        return MultiPlayerGameFeatureFactory.staticGet_instance();
    }
    

    public MultiPlayerGameFeatureFactory() {
        base();
    }
    

    public virtual void addCommands(JObject anyType) {
    }
}

