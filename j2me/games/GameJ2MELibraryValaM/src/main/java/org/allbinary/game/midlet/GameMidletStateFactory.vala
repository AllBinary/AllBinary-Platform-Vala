// Generated Code Do Not Modify
// package org.allbinary.game.midlet
// import org.allbinary.game.state.GameState
// import org.allbinary.game.state.GameStateFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels

public class GameMidletStateFactory : JObject {
    private static GameMidletStateFactory? INSTANCE;
    private static bool staticSet_INSTANCE = false;
    private static GameMidletStateFactory staticGet_INSTANCE() {
        if (!GameMidletStateFactory.staticSet_INSTANCE) {
            GameMidletStateFactory.staticSet_INSTANCE = true;
            GameMidletStateFactory.INSTANCE = new GameMidletStateFactory();
        }
        return GameMidletStateFactory.INSTANCE;
    }
    public LogUtil logUtil;
    private GameState currentGameState;

    // Java field initializers run after the base constructor
    private void initFieldsGameMidletStateFactory() {
    this.logUtil = LogUtil.getInstance();
    this.currentGameState = GameStateFactory.getInstance().NO_GAME_STATE;
    }
    

    public GameMidletStateFactory() {
        base();
        this.initFieldsGameMidletStateFactory();
    }
    

    public static GameMidletStateFactory getInstance() {
        return GameMidletStateFactory.staticGet_INSTANCE();
    }
    

    public virtual GameState getCurrentGameState() {
        return this.currentGameState;
    }
    

    public virtual void setCurrentGameState(GameState currentGameState) {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().CURRENT).append(" GameState: ").append(StringUtil.getInstance().toString1(currentGameState)).toString(), this, "setCurrentGameState");
        this.currentGameState = currentGameState;
    }
}

