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
// package org.allbinary.game.configuration.feature

public class GameFeatureFactory : JObject {
    private static GameFeatureFactory? instance;
    private static bool staticSet_instance = false;
    private static GameFeatureFactory staticGet_instance() {
        if (!GameFeatureFactory.staticSet_instance) {
            GameFeatureFactory.staticSet_instance = true;
            GameFeatureFactory.instance = new GameFeatureFactory();
        }
        return GameFeatureFactory.instance;
    }
    public GameFeature SOUND;
    public GameFeature MUSIC;
    public Feature SCREEN_SHAKE;
    public Feature POST_IMAGE_LOADING_MODIFICATION;
    public GameFeature HEALTH_BARS;
    public GameFeature DAMAGE_FLOATERS;
    public GameFeature GAME_INPUT_LAYER_PROCESSOR;
    public GameFeature ARTIFICIAL_INTELLEGENCE_PROCESSOR;
    public GameFeature COLLIDABLE_INTERFACE_LAYER_PROCESSOR;
    public GameFeature TICKABLE_LAYER_PROCESSOR;
    public GameFeature CHEATING;
    public GameFeature DROPPED_ITEMS;
    public GameFeature DROPPED_ITEMS_FROM_DEATH;
    public GameFeature TEST_DESTROYED_LAYER_PROCESSOR;
    public GameFeature COLLISIONS_WITH_SOURCE;
    public GameFeature COLLISIONS_FORCED_TWO_DIMENSIONAL;

    // Java field initializers run after the base constructor
    private void initFieldsGameFeatureFactory() {
    this.SOUND = new GameFeature("Sound");
    this.MUSIC = new GameFeature("Music");
    this.SCREEN_SHAKE = new Feature("Screen Shake");
    this.POST_IMAGE_LOADING_MODIFICATION = new Feature("Post Image Loading Modification (Scaling, Rotation, or Other)");
    this.HEALTH_BARS = new GameFeature("Health Bars");
    this.DAMAGE_FLOATERS = new GameFeature("Damage Floaters");
    this.GAME_INPUT_LAYER_PROCESSOR = new GameFeature("Game Input Layer Processor");
    this.ARTIFICIAL_INTELLEGENCE_PROCESSOR = new GameFeature("Artificial Intelligence Layer Processor");
    this.COLLIDABLE_INTERFACE_LAYER_PROCESSOR = new GameFeature("Collidable Interface Layer Processor");
    this.TICKABLE_LAYER_PROCESSOR = new GameFeature("Tickable Layer Processor");
    this.CHEATING = new GameFeature("Cheating");
    this.DROPPED_ITEMS = new GameFeature("Drops");
    this.DROPPED_ITEMS_FROM_DEATH = new GameFeature("Drops from Dead");
    this.TEST_DESTROYED_LAYER_PROCESSOR = new GameFeature("Destroyed Layer Processor");
    this.COLLISIONS_WITH_SOURCE = new GameFeature("Allow Collisions With Source");
    this.COLLISIONS_FORCED_TWO_DIMENSIONAL = new GameFeature("Collisions Forced Two Dimensional");
    }
    

    public static GameFeatureFactory getInstance() {
        return GameFeatureFactory.staticGet_instance();
    }
    

    public GameFeatureFactory() {
        base();
        this.initFieldsGameFeatureFactory();
    }
}

