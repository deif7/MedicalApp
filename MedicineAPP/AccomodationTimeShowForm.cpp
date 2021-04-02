//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "AccomodationTimeShowForm.h"
#include "AccomodationDateShowForm.h"
#include "AccomodationForm.h"
#include "AccomodationPredictedDischargeDateShowForm.h"
#include "AccomodationRealDischargeDateShowForm.h"
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
TAccomTimeSHOWForm *AccomTimeSHOWForm;
//---------------------------------------------------------------------------
__fastcall TAccomTimeSHOWForm::TAccomTimeSHOWForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TAccomTimeSHOWForm::Button1Click(TObject *Sender)
{
  DataMod->AccomTBL->FieldByName("ACCOM_HOUR")->AsString = DateTimePicker1->Time.TimeString();
  AccomTimeSHOWForm->Close();
  FirstAccomDateSHOWForm->Show();
}
//---------------------------------------------------------------------------

