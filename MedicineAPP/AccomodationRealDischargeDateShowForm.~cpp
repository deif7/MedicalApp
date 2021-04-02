//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "AccomodationRealDischargeDateShowForm.h"
#include "AccomodationDateShowForm.h"
#include "AccomodationForm.h"
#include "AccomodationPredictedDischargeDateShowForm.h"
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
TRealDischargeDateSHOWForm *RealDischargeDateSHOWForm;
//---------------------------------------------------------------------------
__fastcall TRealDischargeDateSHOWForm::TRealDischargeDateSHOWForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TRealDischargeDateSHOWForm::Button1Click(TObject *Sender)
{
if (DataMod->AccomTBL->State!=dsInsert)
{
DataMod->AccomTBL->Insert();
}
DataMod->AccomTBL->FieldByName("REAL_DISCHARGE_DATE")->AsString = MonthCalendar1->Date.DateString();
   PatientSHOWForm->Show();
   RealDischargeDateSHOWForm->Close();
}
//---------------------------------------------------------------------------

