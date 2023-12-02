unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  id:string;

implementation

uses
  Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
 if Edit1.Text='' then
  begin
    ShowMessage('ID BELUM DIISI');
    end else
    if Edit2.Text=''then
    begin
     ShowMessage('USERNAME BELUM DIISI');
    end else
    if Edit3.text=''then
    begin
     ShowMessage('PASSWORD BELUM DIISI');
    end else
    if Edit4.text=''then
    begin
    ShowMessage('Level Belum DIISI');
    end else
  if Form2.zqry1.Locate('id',Edit1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
zqry1.SQL.Add('insert into user values("'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from user');
 zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form1.Show;
end;

end.
