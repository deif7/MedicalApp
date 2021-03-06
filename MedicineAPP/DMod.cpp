//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "DMod.h"
#include "MainForm.h"
#include "AccomodationForm.h"
#include "NomenklaturaDoktori.h"
#include "NomenklaturaSIMP.h"
#include "NomenklaturaMDI.h"
#include "NomenklaturaPATH.h"
#include "AccomodationDateShowForm.h"
#include "AccomodationPredictedDischargeDateShowForm.h"
#include "AccomodationRealDischargeDateShowForm.h"
#include "AccomodationTimeShowForm.h"
#include "FirstAccomodationDateShowForm.h"
#include "PatientsShowForm.h"
#include "BedsShowForm.h"
#include "RoomsShowForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TDataMod *DataMod;
//---------------------------------------------------------------------------
__fastcall TDataMod::TDataMod(TComponent* Owner)
        : TDataModule(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TDataMod::AccomTBLBeforePost(TDataSet *DataSet)
{
if(AccomTBL->State == dsInsert)
  {
   AccomSP->Prepare();
   AccomSP->ExecProc();
   AccomTBL->FieldByName("ID_ACCOMODATION")->AsInteger =
      AccomSP->ParamByName("ID")->AsInteger;
    
  }
}
//---------------------------------------------------------------------------
void __fastcall TDataMod::BedsTBLBeforePost(TDataSet *DataSet)
{
if(BedsTBL->State == dsInsert)
  {
   BedsSP->Prepare();
   BedsSP->ExecProc();
   BedsTBL->FieldByName("ID_BED")->AsInteger =
      BedsSP->ParamByName("ID")->AsInteger;
  }
}
//---------------------------------------------------------------------------
void __fastcall TDataMod::DoctorsTBLBeforePost(TDataSet *DataSet)
{
if(DoctorsTBL->State == dsInsert)
  {
   DoctorsSP->Prepare();
   DoctorsSP->ExecProc();
   DoctorsTBL->FieldByName("ID_DOCTORS")->AsInteger =
      DoctorsSP->ParamByName("ID")->AsInteger;
  }
}
//---------------------------------------------------------------------------
void __fastcall TDataMod::MdiTBLBeforePost(TDataSet *DataSet)
{
if(MdiTBL->State == dsInsert)
  {
   MdiSP->Prepare();
   MdiSP->ExecProc();
   MdiTBL->FieldByName("ID_MDI")->AsInteger =
      MdiSP->ParamByName("ID")->AsInteger;
  }
}
//---------------------------------------------------------------------------
void __fastcall TDataMod::PathTBLBeforePost(TDataSet *DataSet)
{
  if(PathTBL->State == dsInsert)
  {
   PathSP->Prepare();
   PathSP->ExecProc();
   PathTBL->FieldByName("PATH_ID")->AsInteger =
      PathSP->ParamByName("ID")->AsInteger;
  }
}
//---------------------------------------------------------------------------

void __fastcall TDataMod::SimpTBLBeforePost(TDataSet *DataSet)
{
if(SimpTBL->State == dsInsert)
  {
   SimpSP->Prepare();
   SimpSP->ExecProc();
   SimpTBL->FieldByName("ID_SIMP_CODE")->AsInteger =
      SimpSP->ParamByName("ID")->AsInteger;
  }
}
//---------------------------------------------------------------------------

void __fastcall TDataMod::PatientsTBLBeforePost(TDataSet *DataSet)
{
      if(PatientsTBL->State == dsInsert)
  {
   PatientsSP->Prepare();
   PatientsSP->ExecProc();
   PatientsTBL->FieldByName("ID_PATIENTS")->AsInteger =
      PatientsSP->ParamByName("ID")->AsInteger;
  }
}
//---------------------------------------------------------------------------


void __fastcall TDataMod::RoomsTBLBeforePost(TDataSet *DataSet)
{
if(RoomsTBL->State == dsInsert)
  {
   RoomsSP->Prepare();
   RoomsSP->ExecProc();
   RoomsTBL->FieldByName("ID_ROOMS")->AsInteger =
      RoomsSP->ParamByName("ID")->AsInteger;
  }
}
//---------------------------------------------------------------------------








void __fastcall TDataMod::TblAccomTestBeforePost(TDataSet *DataSet)
{
if(TblAccomTest->State == dsInsert)
  {
   AccomSP->Prepare();
   AccomSP->ExecProc();
   TblAccomTest->FieldByName("ID_ACCOMODATION")->AsInteger =
      AccomSP->ParamByName("ID")->AsInteger;
    
  }
}
//---------------------------------------------------------------------------




