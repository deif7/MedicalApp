//---------------------------------------------------------------------------

#ifndef NomenklaturaSIMPH
#define NomenklaturaSIMPH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TNomenSIMPForm : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid1;
private:	// User declarations
public:		// User declarations
        __fastcall TNomenSIMPForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TNomenSIMPForm *NomenSIMPForm;
//---------------------------------------------------------------------------
#endif
