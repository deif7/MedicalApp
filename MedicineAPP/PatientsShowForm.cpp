//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "PatientsShowForm.h"
#include "AccomodationDateShowForm.h"
#include "AccomodationPredictedDischargeDateShowForm.h"
#include "AccomodationRealDischargeDateShowForm.h"
#include "AccomodationTimeShowForm.h"
#include "FirstAccomodationDateShowForm.h"
#include "MainForm.h"
#include "DMod.h"
#include "AccomodationForm.h"
#include "NomenklaturaDoktori.h"
#include "NomenklaturaMDI.h"
#include "NomenklaturaPATH.h"
#include "NomenklaturaSIMP.h"
#include "BedsShowForm.h"
#include "RoomsShowForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TPatientSHOWForm *PatientSHOWForm;
//---------------------------------------------------------------------------
__fastcall TPatientSHOWForm::TPatientSHOWForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TPatientSHOWForm::FormClose(TObject *Sender,
      TCloseAction &Action)
{
  PatientSHOWForm->DBGrid1->Options = TDBGridOptions(PatientSHOWForm->DBGrid1->Options) \
   << dgEditing;
}
//---------------------------------------------------------------------------




void __fastcall TPatientSHOWForm::BitBtn1Click(TObject *Sender)
{
if (DataMod->PatientsTBL->State ==dsInsert)
  {
  DataMod->PatientsTBL->Insert();
  }
  Application->MessageBox("??????? ?????!", "?????? ???????", MB_OK);
}
//---------------------------------------------------------------------------

