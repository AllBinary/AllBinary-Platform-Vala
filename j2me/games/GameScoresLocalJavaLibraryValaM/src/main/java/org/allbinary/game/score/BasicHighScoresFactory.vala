// Generated Code Do Not Modify
// package org.allbinary.game.score
// import org.allbinary.game.GameInfo
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.system.SoftwareInformation
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

public class BasicHighScoresFactory : HighScoresBase {
    public LogUtil logUtil;
    private AbeClientInformationInterface abeClientInformation;
    private HighScores[] highScoresArray;
    private string TOP;
    private string SCORES;
    private string PERSONAL_HIGH_SCORES;
    private string FETCH;

    // Java field initializers run after the base constructor
    private void initFieldsBasicHighScoresFactory() {
    this.logUtil = LogUtil.getInstance();
    
    this.highScoresArray = new HighScores[1];
    this.TOP = "Top";
    this.SCORES = "Scores";
    this.PERSONAL_HIGH_SCORES = "Personal Top Scores";
    this.FETCH = "fetchHighScores";
    }
    

    public BasicHighScoresFactory(AbeClientInformationInterface abeClientInformation, SoftwareInformation softwareInformation) {
        base();
        this.initFieldsBasicHighScoresFactory();
        this.abeClientInformation = abeClientInformation;
    }
    

    public override void fetchHighScores(GameInfo gameInfo, HighScoresResultsListener highScoresResultsListener) {
        this.logUtil.putF("Getting Local HighScores", this, this.FETCH);
        this.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true);
    }
    

    public override void fetchHighScoresPreload(GameInfo gameInfo, HighScoresResultsListener highScoresResultsListener, bool preload) {
        {
            this.highScoresArray[0] = RecordStoreHighScores.getInstance6(this.abeClientInformation, gameInfo, this.TOP, this.PERSONAL_HIGH_SCORES, this.SCORES, new ScoreComparator(true));
            highScoresResultsListener.setHighScoresArray(this.highScoresArray);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override HighScoresHelperBaseInterface createHighScoresHelper() {
        return new HighScoresHelper2();
    }
    

    public static bool loaded(int32 index2) {
        if (index2 >= 0) {
            return true;
        }
        return false;
    }
}

