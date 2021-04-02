object DataMod: TDataMod
  OldCreateOrder = False
  Left = 226
  Top = 162
  Height = 444
  Width = 970
  object MedicineDB: TIBDatabase
    Connected = True
    DatabaseName = 
      'D:\My Projects\Graduation Thesis\DiplomenPROEKT_Finalizing1\Dipl' +
      'omenPROEKT\DATAbase\MEDICINEDATA.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = MedicineTransac
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 32
    Top = 16
  end
  object MedicineTransac: TIBTransaction
    Active = True
    DefaultDatabase = MedicineDB
    AutoStopAction = saNone
    Left = 32
    Top = 80
  end
  object AccomTBL: TIBTable
    Database = MedicineDB
    Transaction = MedicineTransac
    BeforePost = AccomTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID_ACCOMODATION'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ACCOM_DATE'
        DataType = ftDate
      end
      item
        Name = 'ACCOM_HOUR'
        DataType = ftTime
      end
      item
        Name = 'FIRST_ACCOM_DATE'
        DataType = ftDate
      end
      item
        Name = 'PREDICTED_DISCHARGE_DATE'
        DataType = ftDate
      end
      item
        Name = 'REAL_DISCHARGE_DATE'
        DataType = ftDate
      end
      item
        Name = 'PATIENTS_ID'
        DataType = ftInteger
      end
      item
        Name = 'ROOMS_ID'
        DataType = ftInteger
      end
      item
        Name = 'BEDS_ID'
        DataType = ftInteger
      end
      item
        Name = 'PATH_ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_ACCOMODATION_TBL'
        Fields = 'ID_ACCOMODATION'
        Options = [ixUnique]
      end
      item
        Name = 'FK_ACCOMODATION_TBL_1'
        Fields = 'PATIENTS_ID'
      end
      item
        Name = 'FK_ACCOMODATION_TBL_2'
        Fields = 'ROOMS_ID'
      end
      item
        Name = 'FK_ACCOMODATION_TBL_3'
        Fields = 'BEDS_ID'
      end
      item
        Name = 'FK_ACCOMODATION_TBL_4'
        Fields = 'PATH_ID'
      end>
    IndexFieldNames = 'ID_ACCOMODATION'
    StoreDefs = True
    TableName = 'ACCOMODATION_TBL'
    Left = 144
    Top = 16
    object AccomTBLID_ACCOMODATION: TIntegerField
      FieldName = 'ID_ACCOMODATION'
      Required = True
    end
    object AccomTBLPatient_First_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Patient_First_Name'
      LookupDataSet = PatientsTBL
      LookupKeyFields = 'ID_PATIENTS'
      LookupResultField = 'FIRST_NAME'
      KeyFields = 'PATIENTS_ID'
      Lookup = True
    end
    object AccomTBLPatient_Middle_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Patient_Middle_Name'
      LookupDataSet = PatientsTBL
      LookupKeyFields = 'ID_PATIENTS'
      LookupResultField = 'MIDDLE_NAME'
      KeyFields = 'PATIENTS_ID'
      Lookup = True
    end
    object AccomTBLPatient_Last_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Patient_Last_Name'
      LookupDataSet = PatientsTBL
      LookupKeyFields = 'ID_PATIENTS'
      LookupResultField = 'LAST_NAME'
      KeyFields = 'PATIENTS_ID'
      Lookup = True
    end
    object AccomTBLPatient_Adress: TStringField
      FieldKind = fkLookup
      FieldName = 'Patient_Adress'
      LookupDataSet = PatientsTBL
      LookupKeyFields = 'ID_PATIENTS'
      LookupResultField = 'ADRESS'
      KeyFields = 'PATIENTS_ID'
      Lookup = True
    end
    object AccomTBLPatient_EGN: TStringField
      FieldKind = fkLookup
      FieldName = 'Patient_EGN'
      LookupDataSet = PatientsTBL
      LookupKeyFields = 'ID_PATIENTS'
      LookupResultField = 'EGN'
      KeyFields = 'PATIENTS_ID'
      Lookup = True
    end
    object AccomTBLRoom_Number: TStringField
      FieldKind = fkLookup
      FieldName = 'Room_Number'
      LookupDataSet = RoomsTBL
      LookupKeyFields = 'ID_ROOMS'
      LookupResultField = 'ROOM_NUMBER'
      KeyFields = 'ROOMS_ID'
      Lookup = True
    end
    object AccomTBLRoom_Floor: TStringField
      FieldKind = fkLookup
      FieldName = 'Room_Floor'
      LookupDataSet = RoomsTBL
      LookupKeyFields = 'ID_ROOMS'
      LookupResultField = 'ROOM_FLOOR'
      KeyFields = 'ROOMS_ID'
      Lookup = True
    end
    object AccomTBLBed_Number: TStringField
      FieldKind = fkLookup
      FieldName = 'Bed_Number'
      LookupDataSet = BedsTBL
      LookupKeyFields = 'ID_BED'
      LookupResultField = 'BED_NUMBER'
      KeyFields = 'BEDS_ID'
      Lookup = True
    end
    object AccomTBLROOMS_ID: TIntegerField
      FieldName = 'ROOMS_ID'
    end
    object AccomTBLBEDS_ID: TIntegerField
      FieldName = 'BEDS_ID'
    end
    object AccomTBLACCOM_DATE: TDateField
      FieldName = 'ACCOM_DATE'
    end
    object AccomTBLACCOM_HOUR: TTimeField
      FieldName = 'ACCOM_HOUR'
    end
    object AccomTBLFIRST_ACCOM_DATE: TDateField
      FieldName = 'FIRST_ACCOM_DATE'
    end
    object AccomTBLPREDICTED_DISCHARGE_DATE: TDateField
      FieldName = 'PREDICTED_DISCHARGE_DATE'
    end
    object AccomTBLREAL_DISCHARGE_DATE: TDateField
      FieldName = 'REAL_DISCHARGE_DATE'
    end
    object AccomTBLPATIENTS_ID: TIntegerField
      FieldName = 'PATIENTS_ID'
    end
    object AccomTBLPATH_ID: TIntegerField
      FieldName = 'PATH_ID'
    end
    object AccomTBLPATH_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PATH_NAME'
      LookupDataSet = PathTBL
      LookupKeyFields = 'PATH_ID'
      LookupResultField = 'PATH_NAME'
      KeyFields = 'PATH_ID'
      Size = 300
      Lookup = True
    end
  end
  object AccomSP: TIBStoredProc
    Database = MedicineDB
    Transaction = MedicineTransac
    StoredProcName = 'SP_GEN_ACCOMODATION_TBL_ID'
    Left = 144
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
        Value = 75
      end>
    object AccomSPID: TIntegerField
      FieldName = 'ID'
      Origin = 'SP_GEN_ACCOMODATION_TBL_ID.ID'
    end
  end
  object AccomDS: TDataSource
    DataSet = AccomTBL
    Left = 144
    Top = 64
  end
  object BedsTBL: TIBTable
    Database = MedicineDB
    Transaction = MedicineTransac
    BeforePost = BedsTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID_BED'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'BED_NUMBER'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_BEDS_TBL'
        Fields = 'ID_BED'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'ID_BED'
    StoreDefs = True
    TableName = 'BEDS_TBL'
    Left = 200
    Top = 16
    object BedsTBLID_BED: TIntegerField
      FieldName = 'ID_BED'
      Required = True
    end
    object BedsTBLBED_NUMBER: TIntegerField
      FieldName = 'BED_NUMBER'
    end
  end
  object BedsSP: TIBStoredProc
    Database = MedicineDB
    Transaction = MedicineTransac
    StoredProcName = 'SP_GEN_BEDS_TBL_ID'
    Left = 200
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
        Value = 69
      end>
    object BedsSPID: TIntegerField
      FieldName = 'ID'
      Origin = 'SP_GEN_BEDS_TBL_ID.ID'
    end
  end
  object BedsDS: TDataSource
    DataSet = BedsTBL
    Left = 200
    Top = 64
  end
  object DoctorsTBL: TIBTable
    Database = MedicineDB
    Transaction = MedicineTransac
    BeforePost = DoctorsTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID_DOCTORS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FIRST_NAME'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LAST_NAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SIMP_ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_DOCTORS_TBL'
        Fields = 'ID_DOCTORS'
        Options = [ixUnique]
      end
      item
        Name = 'FK_DOCTORS_TBL_1'
        Fields = 'SIMP_ID'
      end>
    IndexFieldNames = 'ID_DOCTORS'
    MasterFields = 'PATH_ID'
    MasterSource = PathDS
    StoreDefs = True
    TableName = 'DOCTORS_TBL'
    Left = 256
    Top = 16
    object DoctorsTBLID_DOCTORS: TIntegerField
      FieldName = 'ID_DOCTORS'
      Required = True
    end
    object DoctorsTBLFIRST_NAME: TIBStringField
      FieldName = 'FIRST_NAME'
      Size = 15
    end
    object DoctorsTBLLAST_NAME: TIBStringField
      FieldName = 'LAST_NAME'
    end
    object DoctorsTBLSIMP_ID: TIntegerField
      FieldName = 'SIMP_ID'
    end
    object DoctorsTBLDoctorsSpecialty: TStringField
      FieldKind = fkLookup
      FieldName = 'DoctorsSpecialty'
      LookupDataSet = SimpTBL
      LookupKeyFields = 'ID_SIMP'
      LookupResultField = 'SIMP_NAME'
      KeyFields = 'SIMP_ID'
      Size = 80
      Lookup = True
    end
  end
  object DoctorsSP: TIBStoredProc
    Database = MedicineDB
    Transaction = MedicineTransac
    StoredProcName = 'SP_GEN_DOCTORS_TBL_ID'
    Left = 256
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end>
  end
  object DoctorsDS: TDataSource
    DataSet = DoctorsTBL
    Left = 256
    Top = 64
  end
  object MdiTBL: TIBTable
    Database = MedicineDB
    Transaction = MedicineTransac
    BeforePost = MdiTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID_MDI'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MDI_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 256
      end
      item
        Name = 'SHORT_NAME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PRICE'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 4
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'PK_N_MDI'
        Fields = 'ID_MDI'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'ID_MDI'
    StoreDefs = True
    TableName = 'N_MDI'
    Left = 376
    Top = 16
    object MdiTBLID_MDI: TIntegerField
      FieldName = 'ID_MDI'
      Required = True
    end
    object MdiTBLMDI_CODE: TIBStringField
      FieldName = 'MDI_CODE'
      Required = True
      Size = 5
    end
    object MdiTBLNAME: TIBStringField
      FieldName = 'NAME'
      Size = 256
    end
    object MdiTBLSHORT_NAME: TIBStringField
      FieldName = 'SHORT_NAME'
      Required = True
      Size = 30
    end
    object MdiTBLPRICE: TIBBCDField
      FieldName = 'PRICE'
      Required = True
      Precision = 4
      Size = 2
    end
  end
  object MdiDS: TDataSource
    DataSet = MdiTBL
    Left = 376
    Top = 64
  end
  object MdiSP: TIBStoredProc
    Database = MedicineDB
    Transaction = MedicineTransac
    StoredProcName = 'SP_GEN_N_MDI_ID'
    Left = 376
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end>
  end
  object PathTBL: TIBTable
    Database = MedicineDB
    Transaction = MedicineTransac
    BeforePost = PathTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PATH_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PATH_NAME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 320
      end
      item
        Name = 'PATH_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'DAYS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PRICE'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'PK_N_PATH'
        Fields = 'PATH_ID'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'PATH_ID'
    StoreDefs = True
    TableName = 'N_PATH'
    Left = 432
    Top = 16
    object PathTBLPATH_ID: TIntegerField
      FieldName = 'PATH_ID'
      Required = True
    end
    object PathTBLPATH_NAME: TIBStringField
      FieldName = 'PATH_NAME'
      Required = True
      Size = 300
    end
    object PathTBLPATH_CODE: TIBStringField
      FieldName = 'PATH_CODE'
      Required = True
      Size = 5
    end
    object PathTBLDAYS: TIntegerField
      FieldName = 'DAYS'
      Required = True
    end
    object PathTBLPRICE: TFloatField
      FieldName = 'PRICE'
    end
  end
  object PathSP: TIBStoredProc
    Database = MedicineDB
    Transaction = MedicineTransac
    StoredProcName = 'SP_GEN_N_PATH_ID'
    Left = 432
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end>
  end
  object PathDS: TDataSource
    DataSet = PathTBL
    Left = 432
    Top = 64
  end
  object SimpTBL: TIBTable
    Database = MedicineDB
    Transaction = MedicineTransac
    BeforePost = SimpTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID_SIMP'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SIMP_NAME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SIMP_CODE'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'PK_N_SIMP'
        Fields = 'ID_SIMP'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'ID_SIMP'
    StoreDefs = True
    TableName = 'N_SIMP'
    Left = 488
    Top = 16
    object SimpTBLID_SIMP: TIntegerField
      FieldName = 'ID_SIMP'
      Required = True
    end
    object SimpTBLSIMP_NAME: TIBStringField
      FieldName = 'SIMP_NAME'
      Required = True
      Size = 50
    end
    object SimpTBLSIMP_CODE: TIBStringField
      FieldName = 'SIMP_CODE'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object SimpSP: TIBStoredProc
    Database = MedicineDB
    Transaction = MedicineTransac
    StoredProcName = 'SP_GEN_N_SIMP_ID'
    Left = 488
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end>
  end
  object SimpDS: TDataSource
    DataSet = SimpTBL
    Left = 488
    Top = 64
  end
  object PatientsTBL: TIBTable
    Database = MedicineDB
    Transaction = MedicineTransac
    BeforePost = PatientsTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID_PATIENTS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FIRST_NAME'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'MIDDLE_NAME'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LAST_NAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ADRESS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EGN'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'PK_PATIENTS_TBL'
        Fields = 'ID_PATIENTS'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'ID_PATIENTS'
    StoreDefs = True
    TableName = 'PATIENTS_TBL'
    Left = 544
    Top = 16
    object PatientsTBLID_PATIENTS: TIntegerField
      FieldName = 'ID_PATIENTS'
      Required = True
    end
    object PatientsTBLFIRST_NAME: TIBStringField
      FieldName = 'FIRST_NAME'
      Size = 15
    end
    object PatientsTBLMIDDLE_NAME: TIBStringField
      FieldName = 'MIDDLE_NAME'
      Size = 15
    end
    object PatientsTBLLAST_NAME: TIBStringField
      FieldName = 'LAST_NAME'
    end
    object PatientsTBLADRESS: TIBStringField
      FieldName = 'ADRESS'
      Size = 30
    end
    object PatientsTBLEGN: TIBStringField
      FieldName = 'EGN'
      Size = 10
    end
  end
  object PatientsSP: TIBStoredProc
    Database = MedicineDB
    Transaction = MedicineTransac
    StoredProcName = 'SP_GEN_PATIENTS_TBL_ID'
    Left = 544
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
        Value = 166
      end>
    object PatientsSPID: TIntegerField
      FieldName = 'ID'
      Origin = 'SP_GEN_PATIENTS_TBL_ID.ID'
    end
  end
  object PatientsDS: TDataSource
    DataSet = PatientsTBL
    Left = 544
    Top = 64
  end
  object RoomsTBL: TIBTable
    Database = MedicineDB
    Transaction = MedicineTransac
    BeforePost = RoomsTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID_ROOMS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ROOM_NUMBER'
        DataType = ftInteger
      end
      item
        Name = 'ROOM_FLOOR'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_ROOMS_TBL'
        Fields = 'ID_ROOMS'
        Options = [ixUnique]
      end
      item
        Name = 'ROOMS_TBL_IDX1'
        Fields = 'ROOM_NUMBER'
      end>
    IndexFieldNames = 'ID_ROOMS'
    StoreDefs = True
    TableName = 'ROOMS_TBL'
    Left = 320
    Top = 16
    object RoomsTBLID_ROOMS: TIntegerField
      FieldName = 'ID_ROOMS'
      Required = True
    end
    object RoomsTBLROOM_NUMBER: TIntegerField
      FieldName = 'ROOM_NUMBER'
    end
    object RoomsTBLROOM_FLOOR: TIntegerField
      FieldName = 'ROOM_FLOOR'
    end
  end
  object RoomsDS: TDataSource
    DataSet = RoomsTBL
    Left = 320
    Top = 64
  end
  object RoomsSP: TIBStoredProc
    Database = MedicineDB
    Transaction = MedicineTransac
    StoredProcName = 'SP_GEN_ROOMS_TBL_ID'
    Left = 320
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
        Value = 71
      end>
    object RoomsSPID: TIntegerField
      FieldName = 'ID'
      Origin = 'SP_GEN_ROOMS_TBL_ID.ID'
    end
  end
  object NomDocTbl: TIBTable
    Database = MedicineDB
    Transaction = MedicineTransac
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID_DOCTORS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FIRST_NAME'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LAST_NAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SIMP_ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_DOCTORS_TBL'
        Fields = 'ID_DOCTORS'
        Options = [ixUnique]
      end
      item
        Name = 'FK_DOCTORS_TBL_1'
        Fields = 'SIMP_ID'
      end>
    IndexFieldNames = 'ID_DOCTORS'
    StoreDefs = True
    TableName = 'DOCTORS_TBL'
    Left = 264
    Top = 240
    object NomDocTblID_DOCTORS: TIntegerField
      FieldName = 'ID_DOCTORS'
      Required = True
    end
    object NomDocTblFIRST_NAME: TIBStringField
      FieldName = 'FIRST_NAME'
      Size = 15
    end
    object NomDocTblLAST_NAME: TIBStringField
      FieldName = 'LAST_NAME'
    end
    object NomDocTblSIMP_ID: TIntegerField
      FieldName = 'SIMP_ID'
    end
    object NomDocTblDoctor_Specialty: TStringField
      FieldKind = fkLookup
      FieldName = 'Doctor_Specialty'
      LookupDataSet = SimpTBL
      LookupKeyFields = 'ID_SIMP'
      LookupResultField = 'SIMP_NAME'
      KeyFields = 'SIMP_ID'
      Lookup = True
    end
    object NomDocTblDoctor_Specialty_Code: TStringField
      FieldKind = fkLookup
      FieldName = 'Doctor_Specialty_Code'
      LookupDataSet = SimpTBL
      LookupKeyFields = 'ID_SIMP'
      LookupResultField = 'SIMP_CODE'
      KeyFields = 'SIMP_ID'
      Lookup = True
    end
  end
  object NomDocDs: TDataSource
    DataSet = NomDocTbl
    Left = 264
    Top = 296
  end
  object NomPathTbl: TIBTable
    Database = MedicineDB
    Transaction = MedicineTransac
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PATH_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PATH_NAME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 320
      end
      item
        Name = 'PATH_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'DAYS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PRICE'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'PK_N_PATH'
        Fields = 'PATH_ID'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'PATH_ID'
    StoreDefs = True
    TableName = 'N_PATH'
    Left = 432
    Top = 240
    object NomPathTblPATH_ID: TIntegerField
      FieldName = 'PATH_ID'
      Required = True
    end
    object NomPathTblPATH_NAME: TIBStringField
      FieldName = 'PATH_NAME'
      Required = True
      Size = 300
    end
    object NomPathTblPATH_CODE: TIBStringField
      FieldName = 'PATH_CODE'
      Required = True
      Size = 5
    end
    object NomPathTblDAYS: TIntegerField
      FieldName = 'DAYS'
      Required = True
    end
    object NomPathTblPRICE: TFloatField
      FieldName = 'PRICE'
    end
  end
  object NomPathDs: TDataSource
    DataSet = NomPathTbl
    Left = 432
    Top = 296
  end
  object TblAccomTest: TIBTable
    Database = MedicineDB
    Transaction = MedicineTransac
    BeforePost = TblAccomTestBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID_ACCOMODATION'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ACCOM_DATE'
        DataType = ftDate
      end
      item
        Name = 'ACCOM_HOUR'
        DataType = ftTime
      end
      item
        Name = 'FIRST_ACCOM_DATE'
        DataType = ftDate
      end
      item
        Name = 'PREDICTED_DISCHARGE_DATE'
        DataType = ftDate
      end
      item
        Name = 'REAL_DISCHARGE_DATE'
        DataType = ftDate
      end
      item
        Name = 'PATIENTS_ID'
        DataType = ftInteger
      end
      item
        Name = 'ROOMS_ID'
        DataType = ftInteger
      end
      item
        Name = 'BEDS_ID'
        DataType = ftInteger
      end
      item
        Name = 'PATH_ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_ACCOMODATION_TBL'
        Fields = 'ID_ACCOMODATION'
        Options = [ixUnique]
      end
      item
        Name = 'FK_ACCOMODATION_TBL_1'
        Fields = 'PATIENTS_ID'
      end
      item
        Name = 'FK_ACCOMODATION_TBL_2'
        Fields = 'ROOMS_ID'
      end
      item
        Name = 'FK_ACCOMODATION_TBL_3'
        Fields = 'BEDS_ID'
      end
      item
        Name = 'FK_ACCOMODATION_TBL_4'
        Fields = 'PATH_ID'
      end>
    IndexFieldNames = 'ID_ACCOMODATION'
    StoreDefs = True
    TableName = 'ACCOMODATION_TBL'
    Left = 144
    Top = 240
    object TblAccomTestACCOM_DATE: TDateField
      FieldName = 'ACCOM_DATE'
    end
    object TblAccomTestACCOM_HOUR: TTimeField
      FieldName = 'ACCOM_HOUR'
    end
    object TblAccomTestFIRST_ACCOM_DATE: TDateField
      FieldName = 'FIRST_ACCOM_DATE'
    end
    object TblAccomTestPREDICTED_DISCHARGE_DATE: TDateField
      FieldName = 'PREDICTED_DISCHARGE_DATE'
    end
    object TblAccomTestREAL_DISCHARGE_DATE: TDateField
      FieldName = 'REAL_DISCHARGE_DATE'
    end
    object TblAccomTestID_ACCOMODATION: TIntegerField
      FieldName = 'ID_ACCOMODATION'
      Required = True
    end
  end
  object DsAccomTest: TDataSource
    DataSet = TblAccomTest
    Left = 144
    Top = 296
  end
end
