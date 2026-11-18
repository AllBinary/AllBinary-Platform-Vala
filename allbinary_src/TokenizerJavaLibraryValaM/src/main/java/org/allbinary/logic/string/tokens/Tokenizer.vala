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
// package org.allbinary.logic.string.tokens
// import org.allbinary.TsUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class Tokenizer : JObject {
    private string sep;
    private string endSep;

    // Java field initializers run after the base constructor
    private void initFieldsTokenizer() {
    
    this.endSep = StringUtil.getInstance().EMPTY_STRING;
    }
    

    public Tokenizer(string sep) {
        base();
        this.initFieldsTokenizer();
        if (TsUtil.getInstance().compareTo(sep, StringUtil.getInstance().EMPTY_STRING) == 0) {
            JSystem.fatal(new JException("Exception", "Sep provided is not valid"));
        }
        this.sep = sep;
    }
    

    public virtual void setSep(string sep) {
        this.sep = sep;
    }
    

    public virtual void setEndSep(string endSep) {
        this.endSep = endSep;
    }
    

    public virtual BasicArrayList getInsideSep(string string) {
        BasicArrayList tokenList = new BasicArrayListD();
        int32 index = 0;
        int32 size = JString.length(string);
        while (index < size) {
            index = JString.indexOf(string, this.sep, index);
            if (index != -1) {
                int32 end = JString.indexOf(string, this.endSep, index + JString.length(this.sep));
                if (end != -1) {
                    tokenList.add(JString.box(JString.substring(string, index + JString.length(this.sep), end - (JString.length(this.endSep) - 1))));
                    index = end + JString.length(this.endSep);
                } else {
                }
            } else {
                break;
            }
        }
        return tokenList;
    }
    

    public virtual BasicArrayList getTokensFromString(string string, BasicArrayList tokenVector) {
        int32 index = 0;
        int32 end = 0;
        while (index < JString.length(string)) {
            end = JString.indexOf(string, this.sep, index);
            if (end != -1) {
                tokenVector.add(JString.box(JString.substring(string, index, end)));
                index = end + JString.length(this.sep);
            } else {
                tokenVector.add(JString.box(JString.substring(string, index, JString.length(string))));
                break;
            }
        }
        return tokenVector;
    }
    

    public virtual ABHashtable getTokens(BasicArrayList stringVector) {
        ABHashtable tokenHashtable = StdUtil.getInstance().createHashtable();
        string string = StringUtil.getInstance().EMPTY_STRING;
        int32 end = 0;
        int32 size = stringVector.size();
        for (int32 index = 0; index < size; index++) {
            string = JString.unbox(stringVector.objectArray[index]);
            end = JString.indexOf(string, this.sep);
            if (end >= 0) {
                tokenHashtable.put(JString.box(JString.substring(string, 0, end)), JString.box(JString.substring(string, end + 1, JString.length(string))));
            }
        }
        return tokenHashtable;
    }
}

