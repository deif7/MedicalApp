//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MainForm.h"
#include "AccomodationForm.h"
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
TMain *Main;
//---------------------------------------------------------------------------
__fastcall TMain::TMain(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TMain::N2Click(TObject *Sender)
{
AccomForm->Show();
}
//---------------------------------------------------------------------------

void __fastcall TMain::N4Click(TObject *Sender)
{
Main->Close();
}
//---------------------------------------------------------------------------



void __fastcall TMain::N5Click(TObject *Sender)
{
    NomenDoctorsForm->ShowModal();    
}
//---------------------------------------------------------------------------


void __fastcall TMain::N6Click(TObject *Sender)
{
NomenMDIForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMain::N7Click(TObject *Sender)
{
NomenPATHForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMain::N8Click(TObject *Sender)
{
  NomenSIMPForm->ShowModal();      
}
//---------------------------------------------------------------------------


void __fastcall TMain::N1Click(TObject *Sender)
{
  PatientSHOWForm->ShowModal();
}
//---------------------------------------------------------------------------


void __fastcall TMain::N9Click(TObject *Sender)
{
  RoomSHOWForm->ShowModal();      
}
//---------------------------------------------------------------------------

void __fastcall TMain::N10Click(TObject *Sender)
{
  BedSHOWForm->ShowModal();      
}
//---------------------------------------------------------------------------

