/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.configuration.persistance

public class PersistanceStrings : JObject {
    private static PersistanceStrings? instance;
    private static bool staticSet_instance = false;
    private static PersistanceStrings staticGet_instance() {
        if (!PersistanceStrings.staticSet_instance) {
            PersistanceStrings.staticSet_instance = true;
            PersistanceStrings.instance = new PersistanceStrings();
        }
        return PersistanceStrings.instance;
    }
    public string SAVING;
    public string NUMBER_OF_RECORDS;
    public string LOADING_ID;
    public string LOAD_ALL;
    public string DELETING_WITH_ID;
    public string CLOSING_RECORDSTORE;
    public string NOT_SAVING;
    public string ERROR_LOADING;
    public string ERROR_LOADING_ID;
    public string ID;
    public string GAME_ACTION_INPUT;

    // Java field initializers run after the base constructor
    private void initFieldsPersistanceStrings() {
    this.SAVING = "Saving: ";
    this.NUMBER_OF_RECORDS = "Number of records: ";
    this.LOADING_ID = "Loading data with id: ";
    this.LOAD_ALL = "loadAll";
    this.DELETING_WITH_ID = "Deleting data with id: ";
    this.CLOSING_RECORDSTORE = "Closing RecordStore";
    this.NOT_SAVING = "Not Saving: ";
    this.ERROR_LOADING = "Error Loading gameActionInput: ";
    this.ERROR_LOADING_ID = "Error Loading id: ";
    this.ID = " id: ";
    this.GAME_ACTION_INPUT = " GameActionInput: ";
    }

    public PersistanceStrings() {
        base();
        this.initFieldsPersistanceStrings();
    }
    

    public static PersistanceStrings getInstance() {
        return PersistanceStrings.staticGet_instance();
    }
}

