// Generated Code Do Not Modify
// package org.allbinary.business.advertisement
// import org.allbinary.game.GameAdState
// import org.allbinary.logic.system.SoftwareInformation

public class GameAdStateFactory : JObject, GameAdStateFactoryInterface {
    private static GameAdStateFactory? instance;
    private static bool staticSet_instance = false;
    private static GameAdStateFactory staticGet_instance() {
        if (!GameAdStateFactory.staticSet_instance) {
            GameAdStateFactory.staticSet_instance = true;
            GameAdStateFactory.instance = new GameAdStateFactory();
        }
        return GameAdStateFactory.instance;
    }
    private GameAdState[] gameAdStateArray;
    private GameAdState gameAdState;

    // Java field initializers run after the base constructor
    private void initFieldsGameAdStateFactory() {
    this.gameAdStateArray = new GameAdState[] {new GameAdState(new AppNameLicensingAdConfiguration())};
    this.gameAdState = this.gameAdStateArray[0];
    }

    public GameAdStateFactory() {
        base();
        this.initFieldsGameAdStateFactory();
    }
    

    public static GameAdStateFactory getInstance() {
        return GameAdStateFactory.staticGet_instance();
    }
    

    public virtual GameAdState getCurrentInstance() {
        return this.gameAdState;
    }
    

    public virtual GameAdStateBase getInstanceForApp(SoftwareInformation softwareInformation) {
        this.gameAdState = this.gameAdStateArray[0];
        return this.gameAdStateArray[0];
    }
    

    public virtual bool isEnabled() {
        return false;
    }
}

