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

using System;
using System.Linq;
using CircularIndexUtil = org.allbinary.util.CircularIndexUtil;

namespace org.allbinary.game.layer.weapon;

public class WeaponLayerArrayLayerCircularStaticPool
{
    private static readonly WeaponLayerArrayLayerCircularStaticPool instance = new WeaponLayerArrayLayerCircularStaticPool();
    public static WeaponLayerArrayLayerCircularStaticPool getInstance()
    {
        return WeaponLayerArrayLayerCircularStaticPool.instance;
    }

    private readonly int MAX = 5;
    private CircularIndexUtil circularIndexUtil;
    private WeaponLayer[][] WEAPONLAYER_ARRAY = null;
    private WeaponLayer[][] TWO_WEAPONLAYER_ARRAY = null;
    private WeaponLayer[][] THREE_WEAPONLAYER_ARRAY = null;
    public virtual void init()
    {
        WeaponLayer[][] WEAPONLAYER_ARRAY = new WeaponLayer[this.MAX * 2][];
        WeaponLayer[][] TWO_WEAPONLAYER_ARRAY = new WeaponLayer[this.MAX][];
        WeaponLayer[][] THREE_WEAPONLAYER_ARRAY = new WeaponLayer[this.MAX][];
        for (int index = 0; index < this.MAX; index++) {
            WEAPONLAYER_ARRAY[index] = new WeaponLayer[1];
            TWO_WEAPONLAYER_ARRAY[index] = new WeaponLayer[2];
            THREE_WEAPONLAYER_ARRAY[index] = new WeaponLayer[3];
        }
        this.WEAPONLAYER_ARRAY = WEAPONLAYER_ARRAY;
        this.TWO_WEAPONLAYER_ARRAY = TWO_WEAPONLAYER_ARRAY;
        this.THREE_WEAPONLAYER_ARRAY = THREE_WEAPONLAYER_ARRAY;
    }

    private WeaponLayer[][] getWeaponLayerArrays(int size)
    {
        if (size == 1) {
            return this.WEAPONLAYER_ARRAY;
        } else if (size == 2) {
            return this.TWO_WEAPONLAYER_ARRAY;
        } else if (size == 3) {
            return this.THREE_WEAPONLAYER_ARRAY;
        }
        throw new SystemException();
    }

    // throws Exception
    public virtual WeaponLayer[] getInstanceArray(int size)
    {
        WeaponLayer[] weaponLayerArray = this.getWeaponLayerArrays(size)[this.circularIndexUtil.getIndex()];
        this.circularIndexUtil.next();
        return weaponLayerArray;
    }

    public WeaponLayerArrayLayerCircularStaticPool()
    {
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.MAX);
    }

}

