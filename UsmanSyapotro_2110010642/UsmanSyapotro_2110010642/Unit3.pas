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
    ANGSURAN1: TMenuItem;
    PENGAJUAN1: TMenuItem;
    RUMAH2: TMenuItem;
    SYARATPEMESANANRUMAH1: TMenuItem;
    PEMESANANRUMAH1: TMenuItem;
    SYARATPENGAJUAN1: TMenuItem;
    PROFILPERUMAHAN1: TMenuItem;
    SYARATSARANA1: TMenuItem;
    LAYANAN1: TMenuItem;
    procedure Rumah1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure ANGSURAN1Click(Sender: TObject);
    procedure PENGAJUAN1Click(Sender: TObject);
    procedure RUMAH2Click(Sender: TObject);
    procedure SYARATPEMESANANRUMAH1Click(Sender: TObject);
    procedure PEMESANANRUMAH1Click(Sender: TObject);
    procedure SYARATPENGAJUAN1Click(Sender: TObject);
    procedure PROFILPERUMAHAN1Click(Sender: TObject);
    procedure SYARATSARANA1Click(Sender: TObject);
    procedure LAYANAN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Unit4, Unit6, Unit7, Unit5, Unit11, Unit8, Unit9, Unit10, Unit12, Unit13;

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

procedure TForm3.ANGSURAN1Click(Sender: TObject);
begin
Form6.show;
end;

procedure TForm3.PENGAJUAN1Click(Sender: TObject);
begin
Form7.show;
end;

procedure TForm3.RUMAH2Click(Sender: TObject);
begin
Form5.show;
end;



procedure TForm3.SYARATPEMESANANRUMAH1Click(Sender: TObject);
begin
Form11.show;
end;

procedure TForm3.PEMESANANRUMAH1Click(Sender: TObject);
begin
Form8.show;
end;

procedure TForm3.SYARATPENGAJUAN1Click(Sender: TObject);
begin
Form9.show;
end;

procedure TForm3.PROFILPERUMAHAN1Click(Sender: TObject);
begin
Form10.show;
end;

procedure TForm3.SYARATSARANA1Click(Sender: TObject);
begin
Form12.show;
end;

procedure TForm3.LAYANAN1Click(Sender: TObject);
begin
Form13.show;
end;

end.
