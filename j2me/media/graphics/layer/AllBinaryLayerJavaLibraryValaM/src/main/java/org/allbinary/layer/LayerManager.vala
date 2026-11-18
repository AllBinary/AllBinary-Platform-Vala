// Generated Code Do Not Modify
// package org.allbinary.layer
// import javax.microedition.lcdui.Graphics
// import org.allbinary.TsUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.SynchObject
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.logic.ABSystemWrapper

public class LayerManager : JObject {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private ABSystemWrapper systemWrapper;
    private TsUtil tsUtil;
    private LayerManagerLoggingBase layerManagerLogging;
    private BasicArrayList list;
    private SynchObject anyType;

    // Java field initializers run after the base constructor
    private void initFieldsLayerManager() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.systemWrapper = ABSystemWrapper.getInstance();
    this.tsUtil = TsUtil.getInstance();
    
    this.list = new BasicArrayListD();
    this.anyType = new SynchObject();
    }
    

    public LayerManager(LayerManagerLoggingBase layerManagerLogging) {
        base();
        this.initFieldsLayerManager();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.layerManagerLogging = layerManagerLogging;
    }
    

    public virtual bool contains(AllBinaryLayer layerInterface) {
        return this.list.contains(layerInterface);
    }
    

    public virtual void update(AllBinaryLayer layerInterface) {
        bool had = this.list.remove(layerInterface);
        if (had) {
            AllBinaryLayer nextLayerInterface = null;
            int32 size = this.list.size();
            for (int32 index = 0; index < size; index++) {
                nextLayerInterface = ((AllBinaryLayer) this.list.@get(index));
                if (layerInterface.getZP() > nextLayerInterface.getZP()) {
                    this.list.addAt(index, layerInterface);
                    return;
                }
            }
            this.list.add(layerInterface);
        }
    }
    

    public virtual void insert(AllBinaryLayer layerInterface) {
        AllBinaryLayer nextLayerInterface = null;
        int32 size = this.list.size();
        for (int32 index = 0; index < size; index++) {
            nextLayerInterface = ((AllBinaryLayer) this.list.@get(index));
            if (layerInterface.getZP() > nextLayerInterface.getZP()) {
                this.appendAt(layerInterface, index);
                return;
            }
        }
        this.append(layerInterface);
    }
    

    public virtual void append(AllBinaryLayer layerInterface) {
        this.layerManagerLogging.append(layerInterface);
        this.list.add(layerInterface);
    }
    

    public virtual void appendAt(AllBinaryLayer layerInterface, int32 index) {
        this.layerManagerLogging.appendAt(layerInterface, index);
        this.list.addAt(index, layerInterface);
    }
    

    public virtual void remove(AllBinaryLayer layerInterface) {
        {
            this.layerManagerLogging.remove(layerInterface);
            bool result = this.list.remove(layerInterface);
            this.layerManagerLogging.removeResult(this, layerInterface, result);
        }
    }
    

    public virtual Layer getLayerAt(int32 index) {
        return ((Layer) this.list.objectArray[index]);
    }
    

    public virtual int32 getSize() {
        return this.list.size();
    }
    

    public virtual void cleanup() {
        {
            this.list.clear();
            this.layerManagerLogging.clear();
            this.tsUtil.gc();
            this.tsUtil.gc();
        }
    }
    

    public virtual void paint(Graphics g, int32 x, int32 y) {
        {
            Layer comp = null;
            for (int32 index = this.list.size(); --index >= 0; ) {
                comp = ((Layer) this.list.objectArray[index]);
                if (comp != null && comp.isVisible()) {
                    comp.paint(g);
                }
            }
        }
    }
}

