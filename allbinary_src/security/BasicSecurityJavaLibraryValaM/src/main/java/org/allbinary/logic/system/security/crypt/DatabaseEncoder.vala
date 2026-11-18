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
// package org.allbinary.logic.system.security.crypt
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.string.tokens.Tokenizer
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class DatabaseEncoder : JObject {
    

    public DatabaseEncoder() {
        base();
    }
    

    public static string encode(int8[] value) {
        {
            int8[] array = value;
            StringMaker stringBuffer = new StringMaker();
            for (int32 index = 0; index < array.length; index++) {
                stringBuffer.append(array[index].to_string());
                if (index < array.length - 1) {
                    stringBuffer.append(CommonSeps.getInstance().SPACE);
                }
            }
            return stringBuffer.toString();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public static int8[] decode(string value) {
        {
            Tokenizer tokenizer = new Tokenizer(CommonSeps.getInstance().SPACE);
            BasicArrayList vector = tokenizer.getTokensFromString(value, new BasicArrayListD());
            int32 size = vector.size();
            int8[] decode = new int8[size];
            string byteOfData = null;
            for (int32 index = 0; index < size; index++) {
                byteOfData = JString.unbox(vector.objectArray[index]);
                decode[index] = Byte.parseByte(byteOfData);
            }
            return decode;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

