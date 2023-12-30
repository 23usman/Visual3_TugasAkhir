unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm14 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Logout1: TMenuItem;
    KUSTOMER1: TMenuItem;
    PENGAJUAN1: TMenuItem;
    LAYANAN1: TMenuItem;
    procedure KUSTOMER1Click(Sender: TObject);
    procedure PENGAJUAN1Click(Sender: TObject);
    procedure LAYANAN1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses Unit4, Unit7, Unit13;

{$R *.dfm}

procedure TForm14.KUSTOMER1Click(Sender: TObject);
begin
Form4.show;
end;

procedure TForm14.PENGAJUAN1Click(Sender: TObject);
begin
Form7.show;
end;

procedure TForm14.LAYANAN1Click(Sender: TObject);
begin
Form13.show;
end;

procedure TForm14.Logout1Click(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN INGIN KELUAR?',mtWarning,[mbYes,mbNo],0)= mryes then
   begin
       Application.Terminate;
   end;
end;

end.
