//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "AccomodationPredictedDischargeDateShowForm.h"
#include "AccomodationDateShowForm.h"
#include "AccomodationForm.h"
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
TPredictedDischargeDateShowForm *PredictedDischargeDateShowForm;
//---------------------------------------------------------------------------
__fastcall TPredictedDischargeDateShowForm::TPredictedDischargeDateShowForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TPredictedDischargeDateShowForm::Button1Click(
      TObject *Sender)
{
if (DataMod->AccomTBL->State!=dsInsert)
{
DataMod->AccomTBL->Insert();
}
DataMod->AccomTBL->FieldByName("PREDICTED_DISCHARGE_DATE")->AsString = MonthCalendar1->Date.DateString();
   RealDischargeDateSHOWForm->Show();
   PredictedDischargeDateShowForm->Close();
}
//---------------------------------------------------------------------------

