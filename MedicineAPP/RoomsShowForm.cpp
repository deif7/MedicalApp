//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "RoomsShowForm.h"
#include "AccomodationForm.h"
#include "BedsShowForm.h"
#include "DMod.h"
#include "MainForm.h"
#include "AccomodationDateShowForm.h"
#include "AccomodationPredictedDischargeDateShowForm.h"
#include "AccomodationRealDischargeDateShowForm.h"
#include "AccomodationTimeShowForm.h"
#include "FirstAccomodationDateShowForm.h"
#include "NomenklaturaDoktori.h"
#include "NomenklaturaMDI.h"
#include "NomenklaturaPATH.h"
#include "NomenklaturaSIMP.h"
#include "PatientsShowForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TRoomSHOWForm *RoomSHOWForm;
//---------------------------------------------------------------------------
__fastcall TRoomSHOWForm::TRoomSHOWForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


