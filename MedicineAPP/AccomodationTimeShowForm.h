//---------------------------------------------------------------------------

#ifndef AccomodationTimeShowFormH
#define AccomodationTimeShowFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
//---------------------------------------------------------------------------
class TAccomTimeSHOWForm : public TForm
{
__published:	// IDE-managed Components
        TDateTimePicker *DateTimePicker1;
        TButton *Button1;
        TLabel *Label1;
        TImage *Image1;
        void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TAccomTimeSHOWForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TAccomTimeSHOWForm *AccomTimeSHOWForm;
//---------------------------------------------------------------------------
#endif
