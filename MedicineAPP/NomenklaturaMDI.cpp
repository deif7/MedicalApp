//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "NomenklaturaMDI.h"
#include "DMod.h"
#include "AccomodationForm.h"
#include "MainForm.h"
#include "NomenklaturaDoktori.h"
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
TNomenMDIForm *NomenMDIForm;
//---------------------------------------------------------------------------
__fastcall TNomenMDIForm::TNomenMDIForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
