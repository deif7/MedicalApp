//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "AccomodationDateShowForm.h"
#include "AccomodationForm.h"
#include "AccomodationPredictedDischargeDateShowForm.h"
#include "AccomodationRealDischargeDateShowForm.h"
#include "AccomodationTimeShowForm.h"
#include "DMod.h"
#include "FirstAccomodationDateShowForm.h"
#include "MainForm.h"
#include "NomenklaturaDoktori.h"
#include "NomenklaturaMDI.h"
#include "NomenklaturaPATH.h"
#include "NomenklaturaSIMP.h"
#include "PatientsShowForm.h"
#include "BedsShowForm.h"
#include "RoomsShowForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TAccomDateSHOWForm *AccomDateSHOWForm;
//---------------------------------------------------------------------------
__fastcall TAccomDateSHOWForm::TAccomDateSHOWForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TAccomDateSHOWForm::DBGrid1DrawColumnCell(TObject *Sender,
      const TRect &Rect, int DataCol, TColumn *Column,
      TGridDrawState State)
{

if (Column->FieldName=="ACCOM_DATE")
  {
 if( DBGrid1->Focused())
    {

 DateTimePicker1->Visible=True;
 DateTimePicker1 ->Left= Rect.Left + DBGrid1->Left + 1;
 DateTimePicker1 ->Top= Rect.Top + DBGrid1->Top + 1;
 DateTimePicker1->Width=Rect.Width();
 DateTimePicker1->Height=Rect.Height();
 DateTimePicker1->Color=DBGrid1->Color;
 DateTimePicker1->Date=DataMod->TblAccomTestACCOM_DATE->Value;
 DateTimePicker1->SetFocus();
     }

  }
  
  if (Column->FieldName=="FIRST_ACCOM_DATE")
  {
  if (DBGrid1->Focused())
  {
   DateTimePicker2->Visible=True;
 DateTimePicker2 ->Left= Rect.Left + DBGrid1->Left + 1;
 DateTimePicker2 ->Top= Rect.Top + DBGrid1->Top + 1;
 DateTimePicker2->Width=Rect.Width();
 DateTimePicker2->Height=Rect.Height();
 DateTimePicker2->Color=DBGrid1->Color;
 DateTimePicker2->Date=DataMod->TblAccomTestFIRST_ACCOM_DATE->Value;
 DateTimePicker2->SetFocus();

    }
  }
  if (Column->FieldName=="PREDICTED_DISCHARGE_DATE")
  {
  if (DBGrid1->Focused())
  {
   DateTimePicker3->Visible=True;
 DateTimePicker3 ->Left= Rect.Left + DBGrid1->Left + 1;
 DateTimePicker3 ->Top= Rect.Top + DBGrid1->Top + 1;
 DateTimePicker3->Width=Rect.Width();
 DateTimePicker3->Height=Rect.Height();
 DateTimePicker3->Color=DBGrid1->Color;
 DateTimePicker3->Date=DataMod->TblAccomTestPREDICTED_DISCHARGE_DATE->Value;
 DateTimePicker3->SetFocus();

    }
  }
  if (Column->FieldName=="REAL_DISCHARGE_DATE")
  {
  if (DBGrid1->Focused())
  {
   DateTimePicker4->Visible=True;
 DateTimePicker4 ->Left= Rect.Left + DBGrid1->Left + 1;
 DateTimePicker4 ->Top= Rect.Top + DBGrid1->Top + 1;
 DateTimePicker4->Width=Rect.Width();
 DateTimePicker4->Height=Rect.Height();
 DateTimePicker4->Color=DBGrid1->Color;
 DateTimePicker4->Date=DataMod->TblAccomTestREAL_DISCHARGE_DATE->Value;
 DateTimePicker4->SetFocus();

    }
  }
  if (Column->FieldName=="ACCOM_HOUR")
  {
  if (DBGrid1->Focused())
  {
   DateTimePicker5->Visible=True;
 DateTimePicker5 ->Left= Rect.Left + DBGrid1->Left + 1;
 DateTimePicker5 ->Top= Rect.Top + DBGrid1->Top + 1;
 DateTimePicker5->Width=Rect.Width();
 DateTimePicker5->Height=Rect.Height();
 DateTimePicker5->Color=DBGrid1->Color;
 DateTimePicker5->Time=DataMod->TblAccomTestACCOM_HOUR->Value;
 DateTimePicker5->SetFocus();

    }
  }
  else if(DBGrid1->SelectedField->FieldName=="ACCOM_DATE,ACCOM_HOUR,FIRST_ACCOM_DATE,PREDICTED_DISCHARGE_DATE,REAL_DISCHARGE_DATE")
  {
  DateTimePicker1->CanFocus();
  DateTimePicker2->CanFocus();
  DateTimePicker3->CanFocus();
  DateTimePicker4->CanFocus();
  DateTimePicker5->CanFocus();
  }
}
//---------------------------------------------------------------------------

void __fastcall TAccomDateSHOWForm::DBGrid1ColExit(TObject *Sender)
{
if (DBGrid1->SelectedField==DataMod->TblAccomTestACCOM_DATE)
  {
   DateTimePicker1->Hide();
  }
  if (DBGrid1->SelectedField==DataMod->TblAccomTestFIRST_ACCOM_DATE)
  {
   DateTimePicker2->Hide();
  }
  if (DBGrid1->SelectedField==DataMod->TblAccomTestPREDICTED_DISCHARGE_DATE)
  {
   DateTimePicker3->Hide();
  }
  if (DBGrid1->SelectedField==DataMod->TblAccomTestREAL_DISCHARGE_DATE)
  {
   DateTimePicker4->Hide();
  }
  if (DBGrid1->SelectedField==DataMod->TblAccomTestACCOM_HOUR)
  {
   DateTimePicker5->Hide();
  }        
}
//---------------------------------------------------------------------------

void __fastcall TAccomDateSHOWForm::DateTimePicker1Change(TObject *Sender)
{
if(DBGrid1->SelectedField->FieldName=="ACCOM_DATE")
 {
  DataMod->TblAccomTest->Edit();
DataMod->TblAccomTestACCOM_DATE->Value=DateTimePicker1->Date;
DataMod->TblAccomTest->Post();
DataMod->AccomTBL->Edit();
DataMod->AccomTBLACCOM_DATE->Value=DateTimePicker1->Date;
DataMod->AccomTBL->Post();
 }

}
//---------------------------------------------------------------------------

void __fastcall TAccomDateSHOWForm::DateTimePicker2Change(TObject *Sender)
{
DataMod->TblAccomTest->Edit();
DataMod->TblAccomTestFIRST_ACCOM_DATE->Value=DateTimePicker2->Date;
DataMod->TblAccomTest->Post();
DataMod->AccomTBL->Edit();
DataMod->AccomTBLFIRST_ACCOM_DATE->Value=DateTimePicker2->Date;
DataMod->AccomTBL->Post();
}
//---------------------------------------------------------------------------

void __fastcall TAccomDateSHOWForm::DateTimePicker3Change(TObject *Sender)
{
DataMod->TblAccomTest->Edit();
DataMod->TblAccomTestPREDICTED_DISCHARGE_DATE->Value=DateTimePicker3->Date;
DataMod->TblAccomTest->Post();
DataMod->AccomTBL->Edit();
DataMod->AccomTBLPREDICTED_DISCHARGE_DATE->Value=DateTimePicker3->Date;
DataMod->AccomTBL->Post();
}
//---------------------------------------------------------------------------

void __fastcall TAccomDateSHOWForm::DateTimePicker4Change(TObject *Sender)
{
DataMod->TblAccomTest->Edit();
DataMod->TblAccomTestREAL_DISCHARGE_DATE->Value=DateTimePicker4->Date;
DataMod->TblAccomTest->Post();
DataMod->AccomTBL->Edit();
DataMod->AccomTBLREAL_DISCHARGE_DATE->Value=DateTimePicker4->Date;
DataMod->AccomTBL->Post();        
}

//---------------------------------------------------------------------------

void __fastcall TAccomDateSHOWForm::DateTimePicker5Change(TObject *Sender)
{
DataMod->TblAccomTest->Edit();
DataMod->TblAccomTestACCOM_HOUR->Value=DateTimePicker5->Time;
DataMod->TblAccomTest->Post();
DataMod->AccomTBL->Edit();
DataMod->AccomTBLACCOM_HOUR->Value=DateTimePicker5->Time;
DataMod->AccomTBL->Post();
}
//---------------------------------------------------------------------------






void __fastcall TAccomDateSHOWForm::FormClose(TObject *Sender,
      TCloseAction &Action)
{
AccomDateSHOWForm->DBGrid1->Options = TDBGridOptions(AccomDateSHOWForm->DBGrid1->Options) \
   << dgEditing;
}
//---------------------------------------------------------------------------

void __fastcall TAccomDateSHOWForm::BitBtn1Click(TObject *Sender)
{
if (DataMod->TblAccomTest->State ==dsInsert)
    {
     DataMod->TblAccomTest->Insert();
    }
        if (DataMod->TblAccomTest->State ==dsInsert)
                {
                DataMod->TblAccomTest->Insert();
                }

    Application->MessageBox("Успешен запис!", "Избери Дата", MB_OK);
       AccomDateSHOWForm->Close();
   AccomForm->Show();

}
//---------------------------------------------------------------------------

