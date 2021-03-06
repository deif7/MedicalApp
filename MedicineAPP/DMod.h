//---------------------------------------------------------------------------

#ifndef DModH
#define DModH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DB.hpp>
#include <IBCustomDataSet.hpp>
#include <IBDatabase.hpp>
#include <IBStoredProc.hpp>
#include <IBTable.hpp>
//---------------------------------------------------------------------------
class TDataMod : public TDataModule
{
__published:	// IDE-managed Components
        TIBDatabase *MedicineDB;
        TIBTransaction *MedicineTransac;
        TIBTable *AccomTBL;
        TIBStoredProc *AccomSP;
        TDataSource *AccomDS;
        TIBTable *BedsTBL;
        TIBStoredProc *BedsSP;
        TDataSource *BedsDS;
        TIBTable *DoctorsTBL;
        TIBStoredProc *DoctorsSP;
        TDataSource *DoctorsDS;
        TIBTable *MdiTBL;
        TDataSource *MdiDS;
        TIBStoredProc *MdiSP;
        TIBTable *PathTBL;
        TIBStoredProc *PathSP;
        TDataSource *PathDS;
        TIBTable *SimpTBL;
        TIBStoredProc *SimpSP;
        TDataSource *SimpDS;
        TIBTable *PatientsTBL;
        TIBStoredProc *PatientsSP;
        TDataSource *PatientsDS;
        TIBTable *RoomsTBL;
        TDataSource *RoomsDS;
        TIBStoredProc *RoomsSP;
        TIntegerField *BedsTBLID_BED;
        TIntegerField *BedsTBLBED_NUMBER;
        TIntegerField *DoctorsTBLID_DOCTORS;
        TIBStringField *DoctorsTBLFIRST_NAME;
        TIBStringField *DoctorsTBLLAST_NAME;
        TIntegerField *DoctorsTBLSIMP_ID;
        TIntegerField *MdiTBLID_MDI;
        TIBStringField *MdiTBLMDI_CODE;
        TIBStringField *MdiTBLNAME;
        TIBStringField *MdiTBLSHORT_NAME;
        TIBBCDField *MdiTBLPRICE;
        TIntegerField *RoomsTBLID_ROOMS;
        TIntegerField *RoomsTBLROOM_NUMBER;
        TIntegerField *RoomsTBLROOM_FLOOR;
        TStringField *DoctorsTBLDoctorsSpecialty;
        TIntegerField *SimpTBLID_SIMP;
        TIBStringField *SimpTBLSIMP_NAME;
        TIBStringField *SimpTBLSIMP_CODE;
        TIntegerField *PathTBLPATH_ID;
        TIBStringField *PathTBLPATH_NAME;
        TIBStringField *PathTBLPATH_CODE;
        TIntegerField *PathTBLDAYS;
        TFloatField *PathTBLPRICE;
        TIntegerField *PatientsTBLID_PATIENTS;
        TIBStringField *PatientsTBLFIRST_NAME;
        TIBStringField *PatientsTBLMIDDLE_NAME;
        TIBStringField *PatientsTBLLAST_NAME;
        TIBStringField *PatientsTBLADRESS;
        TIBStringField *PatientsTBLEGN;
        TIntegerField *AccomTBLID_ACCOMODATION;
        TIntegerField *AccomSPID;
        TIntegerField *BedsSPID;
        TIntegerField *PatientsSPID;
        TIntegerField *RoomsSPID;
        TStringField *AccomTBLPatient_First_Name;
        TStringField *AccomTBLPatient_Middle_Name;
        TStringField *AccomTBLPatient_Last_Name;
        TStringField *AccomTBLPatient_Adress;
        TStringField *AccomTBLPatient_EGN;
        TStringField *AccomTBLRoom_Number;
        TStringField *AccomTBLRoom_Floor;
        TStringField *AccomTBLBed_Number;
        TIBTable *NomDocTbl;
        TDataSource *NomDocDs;
        TIntegerField *NomDocTblID_DOCTORS;
        TIBStringField *NomDocTblFIRST_NAME;
        TIBStringField *NomDocTblLAST_NAME;
        TIntegerField *NomDocTblSIMP_ID;
        TStringField *NomDocTblDoctor_Specialty;
        TStringField *NomDocTblDoctor_Specialty_Code;
        TIBTable *NomPathTbl;
        TDataSource *NomPathDs;
        TIntegerField *NomPathTblPATH_ID;
        TIBStringField *NomPathTblPATH_NAME;
        TIBStringField *NomPathTblPATH_CODE;
        TIntegerField *NomPathTblDAYS;
        TFloatField *NomPathTblPRICE;
        TIntegerField *AccomTBLROOMS_ID;
        TIntegerField *AccomTBLBEDS_ID;
        TDateField *AccomTBLACCOM_DATE;
        TTimeField *AccomTBLACCOM_HOUR;
        TDateField *AccomTBLFIRST_ACCOM_DATE;
        TDateField *AccomTBLPREDICTED_DISCHARGE_DATE;
        TDateField *AccomTBLREAL_DISCHARGE_DATE;
        TIntegerField *AccomTBLPATIENTS_ID;
        TIBTable *TblAccomTest;
        TDataSource *DsAccomTest;
        TDateField *TblAccomTestACCOM_DATE;
        TTimeField *TblAccomTestACCOM_HOUR;
        TDateField *TblAccomTestFIRST_ACCOM_DATE;
        TDateField *TblAccomTestPREDICTED_DISCHARGE_DATE;
        TDateField *TblAccomTestREAL_DISCHARGE_DATE;
        TIntegerField *TblAccomTestID_ACCOMODATION;
        TIntegerField *AccomTBLPATH_ID;
        TStringField *AccomTBLPATH_NAME;
        void __fastcall AccomTBLBeforePost(TDataSet *DataSet);
        void __fastcall BedsTBLBeforePost(TDataSet *DataSet);
        void __fastcall DoctorsTBLBeforePost(TDataSet *DataSet);
        void __fastcall MdiTBLBeforePost(TDataSet *DataSet);
        void __fastcall PathTBLBeforePost(TDataSet *DataSet);
        void __fastcall SimpTBLBeforePost(TDataSet *DataSet);
        void __fastcall PatientsTBLBeforePost(TDataSet *DataSet);
        void __fastcall RoomsTBLBeforePost(TDataSet *DataSet);
        void __fastcall TblAccomTestBeforePost(TDataSet *DataSet);
private:	// User declarations
public:		// User declarations
        __fastcall TDataMod(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDataMod *DataMod;
//---------------------------------------------------------------------------
#endif
