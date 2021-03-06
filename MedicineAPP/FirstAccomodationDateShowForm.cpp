//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "FirstAccomodationDateShowForm.h"
#include "AccomodationDateShowForm.h"
#include "AccomodationForm.h"
#include "AccomodationPredictedDischargeDateShowForm.h"
#include "AccomodationRealDischargeDateShowForm.h"
#include "AccomodationTimeShowForm.h"
#include "DMod.h"
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
TFirstAccomDateSHOWForm *FirstAccomDateSHOWForm;
//---------------------------------------------------------------------------
__fastcall TFirstAccomDateSHOWForm::TFirstAccomDateSHOWForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFirstAccomDateSHOWForm::Button1Click(TObject *Sender)
{
if (DataMod->AccomTBL->State!=dsInsert)
{
DataMod->AccomTBL->Insert();
}
DataMod->AccomTBL->FieldByName("FIRST_ACCOM_DATE")->AsString = MonthCalendar1->Date.DateString();
   PredictedDischargeDateShowForm->Show();
   FirstAccomDateSHOWForm->Close();
}
//---------------------------------------------------------------------------


