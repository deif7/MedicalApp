//---------------------------------------------------------------------------

#ifndef RoomsShowFormH
#define RoomsShowFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
#include <DB.hpp>
#include <IBCustomDataSet.hpp>
#include <IBQuery.hpp>
//---------------------------------------------------------------------------
class TRoomSHOWForm : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid1;
        TImage *Image1;
private:	// User declarations
public:		// User declarations
        __fastcall TRoomSHOWForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TRoomSHOWForm *RoomSHOWForm;
//---------------------------------------------------------------------------
#endif
