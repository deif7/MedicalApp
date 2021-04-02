//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
//---------------------------------------------------------------------------
USEFORM("MainForm.cpp", Main);
USEFORM("DMod.cpp", DataMod); /* TDataModule: File Type */
USEFORM("AccomodationForm.cpp", AccomForm);
USEFORM("NomenklaturaDoktori.cpp", NomenDoctorsForm);
USEFORM("NomenklaturaSIMP.cpp", NomenSIMPForm);
USEFORM("NomenklaturaMDI.cpp", NomenMDIForm);
USEFORM("NomenklaturaPATH.cpp", NomenPATHForm);
USEFORM("AccomodationDateShowForm.cpp", AccomDateSHOWForm);
USEFORM("AccomodationTimeShowForm.cpp", AccomTimeSHOWForm);
USEFORM("FirstAccomodationDateShowForm.cpp", FirstAccomDateSHOWForm);
USEFORM("AccomodationPredictedDischargeDateShowForm.cpp", PredictedDischargeDateShowForm);
USEFORM("AccomodationRealDischargeDateShowForm.cpp", RealDischargeDateSHOWForm);
USEFORM("PatientsShowForm.cpp", PatientSHOWForm);
USEFORM("RoomsShowForm.cpp", RoomSHOWForm);
USEFORM("BedsShowForm.cpp", BedSHOWForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TMain), &Main);
                 Application->CreateForm(__classid(TDataMod), &DataMod);
                 Application->CreateForm(__classid(TAccomForm), &AccomForm);
                 Application->CreateForm(__classid(TNomenDoctorsForm), &NomenDoctorsForm);
                 Application->CreateForm(__classid(TNomenSIMPForm), &NomenSIMPForm);
                 Application->CreateForm(__classid(TNomenMDIForm), &NomenMDIForm);
                 Application->CreateForm(__classid(TNomenPATHForm), &NomenPATHForm);
                 Application->CreateForm(__classid(TAccomDateSHOWForm), &AccomDateSHOWForm);
                 Application->CreateForm(__classid(TAccomTimeSHOWForm), &AccomTimeSHOWForm);
                 Application->CreateForm(__classid(TFirstAccomDateSHOWForm), &FirstAccomDateSHOWForm);
                 Application->CreateForm(__classid(TPredictedDischargeDateShowForm), &PredictedDischargeDateShowForm);
                 Application->CreateForm(__classid(TRealDischargeDateSHOWForm), &RealDischargeDateSHOWForm);
                 Application->CreateForm(__classid(TPatientSHOWForm), &PatientSHOWForm);
                 Application->CreateForm(__classid(TRoomSHOWForm), &RoomSHOWForm);
                 Application->CreateForm(__classid(TBedSHOWForm), &BedSHOWForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        catch (...)
        {
                 try
                 {
                         throw Exception("");
                 }
                 catch (Exception &exception)
                 {
                         Application->ShowException(&exception);
                 }
        }
        return 0;
}
//---------------------------------------------------------------------------
