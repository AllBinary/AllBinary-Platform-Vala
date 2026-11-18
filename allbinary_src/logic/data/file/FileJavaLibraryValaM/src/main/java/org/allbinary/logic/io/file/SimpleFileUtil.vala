/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.io.file
// import java.io.ByteArrayOutputStream
// import java.io.InputStream
// import java.io.OutputStream
// import java.io.Reader
// import java.io.Writer
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.io.NullOutputStream
// import org.allbinary.logic.io.NullReader
// import org.allbinary.logic.io.NullWriter
// import org.allbinary.logic.io.StreamUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class SimpleFileUtil : JObject {
    private static SimpleFileUtil? instance;
    private static bool staticSet_instance = false;
    private static SimpleFileUtil staticGet_instance() {
        if (!SimpleFileUtil.staticSet_instance) {
            SimpleFileUtil.staticSet_instance = true;
            SimpleFileUtil.instance = new SimpleFileUtil();
        }
        return SimpleFileUtil.instance;
    }
    public LogUtil logUtil;
    public Writer NULL_WRITER;
    public Reader NULL_READER;
    private CommonStrings commonStrings;
    private NullUtil nullUtil;
    private StreamUtil streamUtil;

    // Java field initializers run after the base constructor
    private void initFieldsSimpleFileUtil() {
    this.logUtil = LogUtil.getInstance();
    this.NULL_WRITER = SimpleFileUtil.nullWriter();
    this.NULL_READER = SimpleFileUtil.nullReader();
    this.commonStrings = CommonStrings.getInstance();
    this.nullUtil = NullUtil.getInstance();
    this.streamUtil = StreamUtil.getInstance();
    }

    public SimpleFileUtil() {
        base();
        this.initFieldsSimpleFileUtil();
    }
    

    public static SimpleFileUtil getInstance() {
        return SimpleFileUtil.staticGet_instance();
    }
    

    public static OutputStream nullOutputStream() {
        return NullOutputStream.NULL_OUTPUT_STREAM;
    }
    

    public static Writer nullWriter() {
        return NullWriter.NULL_WRITER;
    }
    

    public static Reader nullReader() {
        return NullReader.NULL_READER;
    }
    

    public virtual BasicArrayList loadFileAsList(InputStream inputStream, int32 max, int8[] byteArray1) {
        return this.loadFileAsListReturnLine(inputStream, max, byteArray1, 0);
    }
    

    public virtual BasicArrayList loadFileAsListReturnLine(InputStream inputStream, int32 max, int8[] byteArray1, int32 includeReturnLine) {
        BasicArrayList stringList = new BasicArrayListD();
        if (inputStream == null) {
            return stringList;
        }
        int8[] byteArray = this.nullUtil.NULL_BYTE_ARRAY;
        {
            ByteArrayOutputStream outputStream2 = new ByteArrayOutputStream(max);
            byteArray = this.streamUtil.getByteArray(inputStream, outputStream2, byteArray1);
            this.streamUtil.close(inputStream);
        } /* catch (Exception e): a thrown Java exception stops the program */
        if (byteArray == null) {
            return stringList;
        }
        int32 size = byteArray.length;
        int32 index = 0;
        int32 startIndex = 0;
        int32 returnLine = 0;
        while (index < size) {
            startIndex = index;
            while (index < size - 1 && byteArray[index] != ((int8) (((uint16) '\n')))) {
                index++;
            }
            if (includeReturnLine == 0) {
                if (index > 0 && byteArray[index - 1] == ((int8) (((uint16) '\r')))) {
                    returnLine = 1;
                } else {
                    returnLine = 0;
                }
            }
            string s = JString.fromChars(byteArray, startIndex, (index + includeReturnLine - returnLine - startIndex));
            stringList.add(JString.box(s));
            index++;
        }
        return stringList;
    }
    

    public virtual string createStringFromArrayOfStrings(string[] stringArray) {
        StringMaker stringMaker = new StringMaker();
        int32 size = stringArray.length;
        for (int32 index = 0; index < size; index++) {
            stringMaker.append(stringArray[index]);
        }
        return stringMaker.toString();
    }
}

