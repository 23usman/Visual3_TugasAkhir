unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    con: TZConnection;
    zqry1: TZQuery;
    ds: TDataSource;
    ckb1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ckb1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  username:string;
  password:string;
  level:string;

implementation

uses
  Unit2, Unit3, Unit14;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
begin
 username := Edit1.Text;
 password := Edit2.Text;

  zqry1 := TZQuery.Create(nil);
  try
    zqry1.Connection := con;
    zqry1.SQL.Text := 'SELECT level FROM user WHERE username = :username AND password = :password';
    zqry1.ParamByName('username').AsString := username;
    zqry1.ParamByName('password').AsString := password;
    zqry1.Open;

    if not zqry1.IsEmpty then
    begin
      level := zqry1.FieldByName('level').AsString;
      if level = 'admin' then
      begin
        // Pengguna berhasil login sebagai admin
        ShowMessage('Login admin berhasil');
        Form3.Show;
      end else
      if level = 'user' then
      begin
        // Pengguna berhasil login sebagai user
        ShowMessage('Login user berhasil!');
        Form14.Show;
      end else
    end
    else
    begin
      // Informasi login tidak valid
      ShowMessage('username atau password salah');
    end;
  finally
    zqry1.Free;
  end;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.ckb1Click(Sender: TObject);
begin
if ckb1.Checked then
Edit2.PasswordChar := #0 else
Edit2.PasswordChar := '*'
end;

end.
