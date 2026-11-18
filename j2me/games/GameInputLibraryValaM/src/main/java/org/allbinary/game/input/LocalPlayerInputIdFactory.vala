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
// package org.allbinary.game.input
// import org.allbinary.game.input.analog.AnalogLocationInputFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker

public class LocalPlayerInputIdFactory : JObject {
    private static LocalPlayerInputIdFactory? instance;
    private static bool staticSet_instance = false;
    private static LocalPlayerInputIdFactory staticGet_instance() {
        if (!LocalPlayerInputIdFactory.staticSet_instance) {
            LocalPlayerInputIdFactory.staticSet_instance = true;
            LocalPlayerInputIdFactory.instance = new LocalPlayerInputIdFactory();
        }
        return LocalPlayerInputIdFactory.instance;
    }
    public LogUtil logUtil;
    public int32 MAX_NUMBER_OF_PLAYERS;
    private int32 MAX_FAST_DEVICEID;
    private int32[] deviceIdToplayerId;
    private int32[] playerIdToDeviceId;
    private bool[] playersInPlay;
    private int32 totalDevicesMapped;

    // Java field initializers run after the base constructor
    private void initFieldsLocalPlayerInputIdFactory() {
    this.logUtil = LogUtil.getInstance();
    this.MAX_NUMBER_OF_PLAYERS = 6;
    this.MAX_FAST_DEVICEID = 65;
    this.deviceIdToplayerId = new int32[this.MAX_FAST_DEVICEID];
    this.playerIdToDeviceId = new int32[this.MAX_NUMBER_OF_PLAYERS];
    this.playersInPlay = new bool[this.MAX_NUMBER_OF_PLAYERS];
    this.totalDevicesMapped = 0;
    }
    

    public LocalPlayerInputIdFactory() {
        base();
        this.initFieldsLocalPlayerInputIdFactory();
        for (int32 index = this.deviceIdToplayerId.length - 1; index >= 0; index--) {
            this.deviceIdToplayerId[index] = -1;
        }
    }
    

    public static LocalPlayerInputIdFactory getInstance() {
        return LocalPlayerInputIdFactory.staticGet_instance();
    }
    

    public virtual int32 getDeviceId(int32 playerInputId) {
        return this.playerIdToDeviceId[playerInputId];
    }
    

    public virtual int32 getPlayerForDevice(int32 deviceId) {
        int32 index = 0;
        if (deviceId < this.MAX_FAST_DEVICEID) {
            int32 playerInputId = this.deviceIdToplayerId[deviceId];
            if (playerInputId != -1) {
                return playerInputId;
            }
        } else {
            for (index = this.totalDevicesMapped - 1; index >= 0; index--) {
                if (this.playerIdToDeviceId[index] == deviceId) {
                    return index;
                }
            }
        }
        index = this.totalDevicesMapped;
        if (deviceId < this.MAX_FAST_DEVICEID) {
            this.deviceIdToplayerId[deviceId] = index;
        } else {
            this.logUtil.putF(new StringMaker().append("Added DeviceId: ").appendint(deviceId).append(" beyond fast Id list").toString(), this, "getPlayerForDevice");
        }
        this.playerIdToDeviceId[index] = deviceId;
        AnalogLocationInputFactory.getInstance().addPlayer(this.totalDevicesMapped);
        this.totalDevicesMapped++;
        this.logUtil.putF(new StringMaker().append("Added DeviceId: ").appendint(deviceId).append(" at: ").appendint(index).append(" Total: ").appendint(this.totalDevicesMapped).toString(), this, "getPlayerForDevice");
        return index;
    }
    

    public virtual int32 getTotalDevicesInPlay() {
        int32 total = 0;
        for (int32 index = this.totalDevicesMapped - 1; index >= 0; index--) {
            if (this.playersInPlay[index] == true) {
                total++;
            }
        }
        return total;
    }
    

    public virtual bool isPlayerInPlay(int32 playerInputId) {
        return this.playersInPlay[playerInputId];
    }
    

    public virtual void setPlayerInPlay(int32 playerInputId) {
        this.logUtil.putF(new StringMaker().append("Setting PlayerInPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerInPlay");
        this.playersInPlay[playerInputId] = true;
    }
    

    public virtual void setPlayerOutOfPlay(int32 playerInputId) {
        this.logUtil.putF(new StringMaker().append("Setting PlayerOutOfPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerOutOfPlay");
        this.playersInPlay[playerInputId] = false;
    }
    

    public virtual bool[] getPlayersInPlay() {
        return this.playersInPlay;
    }
}

