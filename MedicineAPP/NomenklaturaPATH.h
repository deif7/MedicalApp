//---------------------------------------------------------------------------

#ifndef NomenklaturaPATHH
#define NomenklaturaPATHH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TNomenPATHForm : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid1;
private:	// User declarations
public:		// User declarations
        __fastcall TNomenPATHForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TNomenPATHForm *NomenPATHForm;
//---------------------------------------------------------------------------
#endif
