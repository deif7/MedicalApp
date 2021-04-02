//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "BedsShowForm.h"
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
#include "RoomsShowForm.h"
#include "AccomodationDateShowForm.h"
#include "AccomodationTimeShowForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TBedSHOWForm *BedSHOWForm;
//---------------------------------------------------------------------------
__fastcall TBedSHOWForm::TBedSHOWForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TBedSHOWForm::Button2Click(TObject *Sender)
{

   Main->Show();
   BedSHOWForm->Close();
}
//---------------------------------------------------------------------------
