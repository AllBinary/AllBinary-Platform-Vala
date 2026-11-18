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
// package org.allbinary.data
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.string.StringValidationUtil
// import org.allbinary.logic.string.tokens.Tokenizer
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class CamelCaseUtil : JObject {
    private static CamelCaseUtil? instance;
    private static bool staticSet_instance = false;
    private static CamelCaseUtil staticGet_instance() {
        if (!CamelCaseUtil.staticSet_instance) {
            CamelCaseUtil.staticSet_instance = true;
            CamelCaseUtil.instance = new CamelCaseUtil();
        }
        return CamelCaseUtil.instance;
    }
    private CommonSeps commonSeps;

    // Java field initializers run after the base constructor
    private void initFieldsCamelCaseUtil() {
    this.commonSeps = CommonSeps.getInstance();
    }

    public CamelCaseUtil() {
        base();
        this.initFieldsCamelCaseUtil();
    }
    

    public static CamelCaseUtil getInstance() {
        return CamelCaseUtil.staticGet_instance();
    }
    

    public virtual string getAsCamelCase(string string, StringMaker stringBuilder) {
        StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        stringBuilder.@delete(0, stringBuilder.length());
        BasicArrayList list = new BasicArrayListD();
        Tokenizer tokenizer = new Tokenizer(this.commonSeps.UNDERSCORE);
        tokenizer.getTokensFromString(string, list);
        int32 size = list.size();
        string word = null;
        for (int32 i = 0; i < size; i++) {
            word = JString.unbox(list.@get(i));
            word = (stringValidationUtil.isEmpty(word) ? word : new StringMaker().appendchar(Character.toUpperCase(JString.charAt(word, 0))).append(JString.substring(word, 1).down()).toString());
            stringBuilder.append(word);
        }
        return stringBuilder.toString();
    }
}

