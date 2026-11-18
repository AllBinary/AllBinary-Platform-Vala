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
// import java.io.File
// import java.io.FileFilter
// import java.io.FilenameFilter
// import java.io.IOException
// import java.net.URI
// import org.allbinary.TsUtil
// import org.allbinary.logic.io.path.AbPath
// import org.allbinary.logic.string.StringUtil

public class AbFile : JObject, AbFileInterface {
    public static AbFile? NULL_FILE;
    private static bool staticSet_NULL_FILE = false;
    public static AbFile staticGet_NULL_FILE() {
        if (!AbFile.staticSet_NULL_FILE) {
            AbFile.staticSet_NULL_FILE = true;
            AbFile.NULL_FILE = AbFile.createAbFileFromRawPath(StringUtil.getInstance().EMPTY_STRING);
        }
        return AbFile.NULL_FILE;
    }
    private File file;

    // Java field initializers run after the base constructor
    private void initFieldsAbFile() {
    
    }
    

    public static AbFile createAbFileWithChild(AbFile file, string childPathName) {
        return new AbFile(new File(file.getFile(), childPathName));
    }
    

    public static AbFile createAbFile(string filePath) {
        return new AbFile(new File(new AbPath(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString()));
    }
    

    public static AbFile createAbFilePathAndName(string filePath, string fileName) {
        return new AbFile(new File(new AbPath(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString(), fileName));
    }
    

    public static AbFile createAbFileFromAbPath(AbPath abPath) {
        return new AbFile(new File(abPath.toFileSystemString()));
    }
    

    public static AbFile createAbFileFromRawPath(string filePath) {
        return new AbFile(new File(filePath));
    }
    

    public AbFile(File file) {
        base();
        this.initFieldsAbFile();
        this.file = file;
    }
    

    public virtual File getFile() {
        return this.file;
    }
    

    public virtual string getName() {
        return this.file.getName();
    }
    

    public virtual string getParent() {
        return this.file.getParent();
    }
    

    public virtual JObject getParentFile() {
        return this.file.getParentFile();
    }
    

    public virtual string getPath() {
        return this.file.getPath();
    }
    

    public virtual bool isAbsolute() {
        return this.file.isAbsolute();
    }
    

    public virtual string getAbsolutePath() {
        return this.file.getAbsolutePath();
    }
    

    public virtual JObject getAbsoluteFile() {
        return this.file.getAbsoluteFile();
    }
    

    public virtual string getCanonicalPath() {
        return this.file.getCanonicalPath();
    }
    

    public virtual JObject getCanonicalFile() {
        return this.file.getCanonicalFile();
    }
    

    public virtual URI toURI() {
        return this.file.toURI();
    }
    

    public virtual bool canRead() {
        return this.file.canRead();
    }
    

    public virtual bool canWrite() {
        return this.file.canWrite();
    }
    

    public virtual bool exists() {
        return this.file.exists();
    }
    

    public virtual bool isDirectory() {
        return this.file.isDirectory();
    }
    

    public virtual bool isFile() {
        return this.file.isFile();
    }
    

    public virtual bool isHidden() {
        return this.file.isHidden();
    }
    

    public virtual int64 lastModified() {
        return this.file.lastModified();
    }
    

    public virtual int64 length() {
        return ((int64) (this.file.length()));
    }
    

    public virtual bool createNewFile() {
        return this.file.createNewFile();
    }
    

    public virtual bool @delete() {
        return this.file.@delete();
    }
    

    public virtual void deleteOnExit() {
        this.file.deleteOnExit();
    }
    

    public virtual string[] list() {
        return this.file.list();
    }
    

    public virtual string[] listWithFilter(FilenameFilter filter) {
        return this.file.list(filter);
    }
    

    public virtual JObject[] listFiles() {
        return ((JObject[]) this.file.listFiles());
    }
    

    public virtual JObject[] listFilesFileNameFilter(FilenameFilter filter) {
        return ((JObject[]) this.file.listFiles(filter));
    }
    

    public virtual JObject[] listFilesFileFilter(FileFilter filter) {
        return ((JObject[]) this.file.listFiles(filter));
    }
    

    public virtual bool mkdir() {
        return this.file.mkdir();
    }
    

    public virtual bool mkdirs() {
        return this.file.mkdirs();
    }
    

    public virtual bool renameTo(AbFile dest) {
        return this.file.renameTo(dest.getFile());
    }
    

    public virtual bool setLastModified(int64 time) {
        return this.file.setLastModified(time);
    }
    

    public virtual bool setReadOnly() {
        return this.file.setReadOnly();
    }
    

    public virtual bool setWritable_2(bool writable, bool ownerOnly) {
        return this.file.setExecutable(writable, ownerOnly);
    }
    

    public virtual bool setWritable_1(bool writable) {
        return this.file.setWritable(writable);
    }
    

    public virtual bool setReadable_2(bool readable, bool ownerOnly) {
        return this.file.setReadable(readable, ownerOnly);
    }
    

    public virtual bool setReadable_1(bool readable) {
        return this.file.setReadable(readable);
    }
    

    public virtual bool setExecutable_2(bool executable, bool ownerOnly) {
        return this.file.setExecutable(executable, ownerOnly);
    }
    

    public virtual bool setExecutable_1(bool executable) {
        return this.file.setExecutable(executable);
    }
    

    public virtual bool canExecute() {
        return this.file.canExecute();
    }
    

    public virtual int64 getTotalSpace() {
        return this.file.getTotalSpace();
    }
    

    public virtual int64 getFreeSpace() {
        return this.file.getFreeSpace();
    }
    

    public virtual int64 getUsableSpace() {
        return this.file.getUsableSpace();
    }
    

    public virtual int32 compareTo(File pathname) {
        return this.file.compareTo(pathname);
    }
    

    public override bool equals(JObject obj) {
        return TsUtil.getInstance().equalsNotstring(this.file, obj);
    }
    

    public override int32 hashCode() {
        return this.file.hashCode();
    }
    

    public override string toString() {
        return this.file.toString();
    }
}

