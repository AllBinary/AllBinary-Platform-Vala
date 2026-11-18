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
// package org.allbinary.game.score
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class HighScores : JObject, HighScoresInterface {
    private BasicArrayList orderedHighScoresList;
    private string name;
    private string heading;
    private string columnOneHeading;
    private string columnTwoHeading;

    // Java field initializers run after the base constructor
    private void initFieldsHighScores() {
    this.orderedHighScoresList = new BasicArrayListD();
    
    
    this.columnOneHeading = "Name";
    
    }
    

    public HighScores(string name, string heading, string columnTwoHeading) {
        base();
        this.initFieldsHighScores();
        this.name = name;
        this.heading = heading;
        this.columnTwoHeading = columnTwoHeading;
    }
    

    public virtual void setList(BasicArrayList orderedHighScoresList) {
        this.orderedHighScoresList = orderedHighScoresList;
    }
    

    public virtual BasicArrayList getList() {
        return this.orderedHighScoresList;
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    public virtual int32 getTotal() {
        return this.getList().size();
    }
    

    public virtual void addHighScore(HighScore newHighScore) {
        this.orderedHighScoresList.add(newHighScore);
    }
    

    public virtual string getHeading() {
        return this.heading;
    }
    

    public virtual string getColumnOneHeading() {
        return this.columnOneHeading;
    }
    

    public virtual string getColumnTwoHeading() {
        return this.columnTwoHeading;
    }
    

    public virtual bool isBestScore(HighScore newHighScore) {
        return false;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("HighScores: ");
        stringBuffer.append(this.heading);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL);
        stringBuffer.appendint(this.orderedHighScoresList.size());
        return stringBuffer.toString();
    }
}

