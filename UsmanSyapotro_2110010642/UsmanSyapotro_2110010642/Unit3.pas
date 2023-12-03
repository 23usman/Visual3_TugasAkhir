unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Rumah1: TMenuItem;
    Logout1: TMenuItem;
    procedure Rumah1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm3.Rumah1Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm3.Logout1Click(Sender: TObject);
begin
   if MessageDlg('APAKAH ANDA YAKIN INGIN KELUAR?',mtWarning,[mbYes,mbNo],0)= mryes then
   begin
       Application.Terminate;
   end;
end;

end.
