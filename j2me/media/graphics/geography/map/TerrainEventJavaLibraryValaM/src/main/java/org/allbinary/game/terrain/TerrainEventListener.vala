// Generated Code Do Not Modify
// package org.allbinary.game.terrain
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class TerrainEventListener : JObject, TerrainEventListenerInterface, EventListenerInterface {
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsTerrainEventListener() {
    this.list = new BasicArrayListD();
    }

    public TerrainEventListener() {
        base();
        this.initFieldsTerrainEventListener();
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void onTerrainEvent(TerrainEvent terrainEvent) {
        this.list.clear();
        this.list.add(terrainEvent);
    }
    

    public virtual BasicArrayList getList() {
        return this.list;
    }
}

