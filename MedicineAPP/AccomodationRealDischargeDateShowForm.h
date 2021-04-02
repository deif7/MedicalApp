//---------------------------------------------------------------------------

#ifndef AccomodationRealDischargeDateShowFormH
#define AccomodationRealDischargeDateShowFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
//---------------------------------------------------------------------------
class TRealDischargeDateSHOWForm : public TForm
{
__published:	// IDE-managed Components
        TMonthCalendar *MonthCalendar1;
        TButton *Button1;
        TImage *Image1;
        TLabel *Label1;
        void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TRealDischargeDateSHOWForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TRealDischargeDateSHOWForm *RealDischargeDateSHOWForm;
//---------------------------------------------------------------------------
#endif
