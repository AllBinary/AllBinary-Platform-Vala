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
// package org.allbinary.logic.io.file
// import org.allbinary.logic.io.path.AbPathData
// import org.allbinary.logic.string.StringValidationUtil

//Used to correct user input for paths
public class FilePathUtil : JObject {
    

    public FilePathUtil() {
        base();
    }
    

    public static string adjust(string path_parameter) {
        string path = path_parameter;
        AbPathData abPathData = AbPathData.getInstance();
        StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        FilePathData filePathData = FilePathData.getInstance();
        if (stringValidationUtil.isEmpty(path)) {
            return filePathData.PATH_START;
        }
        path = JString.replace(path, abPathData.SEPARATORCHAR, filePathData.SEPARATORCHAR);
        return path;
    }
}

