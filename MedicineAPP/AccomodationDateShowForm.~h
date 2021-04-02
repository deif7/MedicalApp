//---------------------------------------------------------------------------

#ifndef AccomodationDateShowFormH
#define AccomodationDateShowFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <Buttons.hpp>
//---------------------------------------------------------------------------
class TAccomDateSHOWForm : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid1;
        TDateTimePicker *DateTimePicker1;
        TDateTimePicker *DateTimePicker2;
        TDateTimePicker *DateTimePicker3;
        TDateTimePicker *DateTimePicker4;
        TDateTimePicker *DateTimePicker5;
        TImage *Image1;
        TBitBtn *BitBtn1;
        void __fastcall DBGrid1DrawColumnCell(TObject *Sender,
          const TRect &Rect, int DataCol, TColumn *Column,
          TGridDrawState State);
        void __fastcall DBGrid1ColExit(TObject *Sender);
        void __fastcall DateTimePicker1Change(TObject *Sender);
        void __fastcall DateTimePicker2Change(TObject *Sender);
        void __fastcall DateTimePicker3Change(TObject *Sender);
        void __fastcall DateTimePicker4Change(TObject *Sender);
        void __fastcall DateTimePicker5Change(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall BitBtn1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TAccomDateSHOWForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TAccomDateSHOWForm *AccomDateSHOWForm;
//---------------------------------------------------------------------------
#endif
