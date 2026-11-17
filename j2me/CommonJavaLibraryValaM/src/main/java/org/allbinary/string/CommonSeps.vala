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
// package org.allbinary.string
// import jsinterop.annotations.JsType
// import org.allbinary.logic.string.StringMaker
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsProperty

public class CommonSeps : JObject {
    private static CommonSeps? instance;
    private static bool staticSet_instance = false;
    private static CommonSeps staticGet_instance() {
        if (!CommonSeps.staticSet_instance) {
            CommonSeps.staticSet_instance = true;
            CommonSeps.instance = new CommonSeps();
        }
        return CommonSeps.instance;
    }
    public string NEW_LINE;
    public string SEMICOLON;
    public string EQUALS;
    public string SPACE;
    public string COMMA;
    public string COLON;
    public string PERIOD;
    public string UNDERSCORE;
    public string COLON_SEP;
    public string COMMA_SEP;
    public string PARENTHESIS_OPEN;
    public string PARENTHESIS_CLOSE;
    public string BRACE_OPEN;
    public string BRACE_CLOSE;
    public string BRACKET_OPEN;
    public string BRACKET_CLOSE;
    public string DASH;
    public string PERCENT;
    public string AMPERSAND;
    public string FORWARD_SLASH;
    public string BACK_SLASH;
    public string QUESTION;
    public string QUOTE;
    public string QUOTE_END;
    public string COMMENT;
    public string INDENT;

    // Java field initializers run after the base constructor
    private void initFieldsCommonSeps() {
    this.NEW_LINE = "\n";
    this.SEMICOLON = ";";
    this.EQUALS = "=";
    this.SPACE = " ";
    this.COMMA = ",";
    this.COLON = ":";
    this.PERIOD = ".";
    this.UNDERSCORE = "_";
    this.COLON_SEP = new StringMaker().append(this.COLON).append(this.SPACE).toString();
    this.COMMA_SEP = new StringMaker().append(this.COMMA).append(this.SPACE).toString();
    this.PARENTHESIS_OPEN = "(";
    this.PARENTHESIS_CLOSE = ")";
    this.BRACE_OPEN = "{";
    this.BRACE_CLOSE = "}";
    this.BRACKET_OPEN = "[";
    this.BRACKET_CLOSE = "]";
    this.DASH = "-";
    this.PERCENT = "%";
    this.AMPERSAND = "&";
    this.FORWARD_SLASH = "/";
    this.BACK_SLASH = "\\";
    this.QUESTION = "?";
    this.QUOTE = "\"";
    this.QUOTE_END = "\",";
    this.COMMENT = "//";
    this.INDENT = "    ";
    }

    public CommonSeps() {
        base();
        this.initFieldsCommonSeps();
    }
    

    public static CommonSeps getInstance() {
        return CommonSeps.staticGet_instance();
    }
}

