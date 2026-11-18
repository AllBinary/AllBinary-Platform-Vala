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
// package org.allbinary.business.init
// import org.allbinary.TsUtil
// import org.allbinary.globals.PATH_GLOBALS
// import org.allbinary.globals.URLGLOBALS
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.io.AbDataInputStream
// import org.allbinary.logic.io.AbDataOutputStream
// import org.allbinary.logic.io.AbFileInputStream
// import org.allbinary.logic.io.DataOutputStreamFactory
// import org.allbinary.logic.io.FileStreamFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.crypt.DatabaseEncoder
// import org.allbinary.logic.system.security.crypt.WeakCrypt
// import org.allbinary.string.CommonLabels

public class LicenseInitInfoUtil : JObject {
    private static LicenseInitInfoUtil? instance;
    private static bool staticSet_instance = false;
    private static LicenseInitInfoUtil staticGet_instance() {
        if (!LicenseInitInfoUtil.staticSet_instance) {
            LicenseInitInfoUtil.staticSet_instance = true;
            LicenseInitInfoUtil.instance = new LicenseInitInfoUtil();
        }
        return LicenseInitInfoUtil.instance;
    }
    public LogUtil logUtil;
    private StringUtil stringUtil;
    public string INITFILENAME;
    public string ABOUT;
    public string PRIVACY_POLICY;
    private string filePath;

    // Java field initializers run after the base constructor
    private void initFieldsLicenseInitInfoUtil() {
    this.logUtil = LogUtil.getInstance();
    this.stringUtil = StringUtil.getInstance();
    this.INITFILENAME = "licenseinitdata.dat";
    this.ABOUT = "about";
    this.PRIVACY_POLICY = "privacy_policy";
    this.filePath = this.stringUtil.EMPTY_STRING;
    }

    public LicenseInitInfoUtil() {
        base();
        this.initFieldsLicenseInitInfoUtil();
    }
    

    public static LicenseInitInfoUtil getInstance() {
        return LicenseInitInfoUtil.staticGet_instance();
    }
    

    public virtual void setFilePath(string filePath) {
        this.filePath = filePath;
    }
    

    public virtual void write(LicenseInitInfo initData) {
        if (this.filePath == this.stringUtil.EMPTY_STRING) {
            this.filePath = JString.ofString(URLGLOBALS.getMainPath()) + JString.ofString(PATH_GLOBALS.getInstance().INIT_PATH);
        }
        {
            TsUtil tsUtil = TsUtil.getInstance();
            AbDataOutputStream dataOutputStream = DataOutputStreamFactory.getInstance().getInstance2(this.filePath, this.INITFILENAME);
            int8[] licenseIdCrypted = tsUtil.getByteArray(new WeakCrypt(1).encrypt(initData.getLicenseId()));
            dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseIdCrypted));
            int32 numberOfLicenseServers = initData.getNumberOfServers();
            dataOutputStream.writeInt(numberOfLicenseServers);
            int8[] licenseServerCrypted = null;
            for (int32 index = 0; index < numberOfLicenseServers; index++) {
                licenseServerCrypted = tsUtil.getByteArray(new WeakCrypt(3).encrypt(initData.getServer(index)));
                dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseServerCrypted));
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual LicenseInitInfo read() {
        return this.readAgain(0);
    }
    

    public virtual LicenseInitInfo readAgain(int32 initializeCounter) {
        string METHOD_NAME = "readAgain";
        if (this.filePath == this.stringUtil.EMPTY_STRING) {
            this.filePath = JString.ofString(URLGLOBALS.getMainPath()) + JString.ofString(PATH_GLOBALS.getInstance().INIT_PATH);
        }
        {
            this.logUtil.putF(JString.ofString("LicenseInitInfo File: ") + JString.ofString(this.INITFILENAME), this, METHOD_NAME);
            FileStreamFactory fileStreamFactory = FileStreamFactory.getInstance();
            AbFileInputStream iFile = fileStreamFactory.getFileInputStreamInstance(this.filePath, this.INITFILENAME);
            if (iFile != null) {
                AbDataInputStream iData = new AbDataInputStream(iFile);
                LicenseInitInfo initInfo = new LicenseInitInfo();
                int8[] decodedByteArray = DatabaseEncoder.decode(iData.readUTF());
                string licenseIdDecoded = decodedByteArray;
                initInfo.setLicenseId(new WeakCrypt(1).decrypt(licenseIdDecoded));
                int32 numberOfLicenseServers = iData.readInt();
                string NEXT_FILE = new StringMaker().append(CommonLabels.getInstance().NEXT).append(" License Server From File: ").toString();
                string licenseServerDecoded = null;
                for (int32 index = 0; index < numberOfLicenseServers; index++) {
                    decodedByteArray = DatabaseEncoder.decode(iData.readUTF());
                    licenseServerDecoded = decodedByteArray;
                    initInfo.setServer(new WeakCrypt(3).decrypt(licenseServerDecoded), index);
                    this.logUtil.putF(JString.ofString(NEXT_FILE) + JString.ofString(initInfo.getServer(index)), this, METHOD_NAME);
                }
                return initInfo;
            } else {
                JSystem.fatal(new JException("Exception", JString.ofString("Could Not Load License InitInfo: ") + JString.ofString(this.INITFILENAME)));
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual string getFilePath() {
        return this.filePath;
    }
}

