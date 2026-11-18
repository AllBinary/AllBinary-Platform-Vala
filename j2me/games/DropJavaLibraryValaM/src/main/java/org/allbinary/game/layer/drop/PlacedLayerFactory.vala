// Generated Code Do Not Modify
// package org.allbinary.game.layer.drop
// import org.allbinary.layer.AllBinaryLayerFactoryInterface
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

public class PlacedLayerFactory : JObject {
    private static PlacedLayerFactory? instance;
    private static bool staticSet_instance = false;
    private static PlacedLayerFactory staticGet_instance() {
        if (!PlacedLayerFactory.staticSet_instance) {
            PlacedLayerFactory.staticSet_instance = true;
            PlacedLayerFactory.instance = new PlacedLayerFactory();
        }
        return PlacedLayerFactory.instance;
    }
    private BasicArrayList list;
    private BasicArrayListUtil basicArrayListUtil;

    // Java field initializers run after the base constructor
    private void initFieldsPlacedLayerFactory() {
    this.list = new BasicArrayListD();
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
    }
    

    public PlacedLayerFactory() {
        base();
        this.initFieldsPlacedLayerFactory();
    }
    

    public virtual void clear() {
        this.list.clear();
    }
    

    public static PlacedLayerFactory getInstance() {
        return PlacedLayerFactory.staticGet_instance();
    }
    

    public virtual int32 getSize() {
        return this.list.size();
    }
    

    public virtual AllBinaryLayerFactoryInterface getRandomInstance() {
        return ((AllBinaryLayerFactoryInterface) this.basicArrayListUtil.getRandom(this.list));
    }
    

    public virtual void add(AllBinaryLayerFactoryInterface layerInterfaceFactoryInterface) {
        this.list.add(layerInterfaceFactoryInterface);
    }
}

