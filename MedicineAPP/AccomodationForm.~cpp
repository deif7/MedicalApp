//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "AccomodationForm.h"
#include "MainForm.h"
#include "DMod.h"
#include "NomenklaturaDoktori.h"
#include "NomenklaturaMDI.h"
#include "NomenklaturaPATH.h"
#include "NomenklaturaSIMP.h"
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
TAccomForm *AccomForm;
//---------------------------------------------------------------------------
__fastcall TAccomForm::TAccomForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------






























void __fastcall TAccomForm::Button1Click(TObject *Sender)
{
AccomDateSHOWForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TAccomForm::BitBtn1Click(TObject *Sender)
{
AccomDateSHOWForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TAccomForm::FormClose(TObject *Sender,
      TCloseAction &Action)
{
  AccomForm->DBGrid1->Options = TDBGridOptions(AccomForm->DBGrid1->Options) \
   << dgEditing;
}
//---------------------------------------------------------------------------

