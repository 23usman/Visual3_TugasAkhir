unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    e_1: TEdit;
    e_2: TEdit;
    e_3: TEdit;
    e_4: TEdit;
    e_5: TEdit;
    e_6: TEdit;
    e_7: TEdit;
    e_8: TEdit;
    e_9: TEdit;
    e_10: TEdit;
    e_11: TEdit;
    dbgrd1: TDBGrid;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    con1: TZConnection;
    ds1: TDataSource;
    zqry1: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    zqry2: TZQuery;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure b6Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id_kustomer:string;

implementation

{$R *.dfm}

procedure TForm4.b1Click(Sender: TObject);
begin
bersih;
b1.Enabled:= False;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;
b6.Enabled:= True;
e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
e_4.Enabled:= True;
e_5.Enabled:= True;
e_6.Enabled:= True;
e_7.Enabled:= True;
e_8.Enabled:= True;
e_9.Enabled:= True;
e_10.Enabled:= True;
e_11.Enabled:= True;
end;

procedure TForm4.b2Click(Sender: TObject);
begin
if e_1.Text='' then
  begin
    ShowMessage('ID BELUM DIISI DENGAN BENAR');
    end else
    if e_2.Text=''then
    begin
     ShowMessage('NAMA KUSTOMER BELUM DIISI DENGAN BENAR');
    end else
    if e_3.text=''then
    begin
     ShowMessage('NIK BELUM DIISI DENGAN BENAR');
    end else
    if e_4.text=''then
    begin
    ShowMessage('JENIS KELAMIN BELUM SESUAI');
    end else
    if e_5.text=''then
    begin
     ShowMessage('PEKERJAAN BELUM SESUAI');
     end else
    if e_6.text=''then
    begin
     ShowMessage('ALAMAR BELUM SESUAI');
     end else
    if e_7.text=''then
    begin
     ShowMessage('TEMPAT TANGGAL LAHIR DIISI DENGAN BENAR');
    end else
    if e_8.text=''then
    begin
    ShowMessage('NO TELP BELUM SESUAI');
    end else
    if e_9.text=''then
    begin
     ShowMessage('EMAIL BELUM SESUAI');
     end else
    if e_10.text=''then
    begin
     ShowMessage('USIA BELUM SESUAI');
     end else
    if e_11.text=''then
    begin
     ShowMessage('STATUS BELUM SESUAI');
     end else
  if Form4.zqry1.Locate('id_kustomer',e_1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tbl_kustomer values("'+e_1.Text+'","'+e_2.Text+'","'+e_3.Text+'","'+e_4.Text+'","'+e_5.Text+'","'+e_6.Text+'","'+e_7.Text+'","'+e_8.Text+'","'+e_9.Text+'","'+e_10.Text+'","'+e_11.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from tbl_kustomer');
 zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
end;
end;

procedure TForm4.b3Click(Sender: TObject);
begin
if (e_1.Text= '')or (e_2.Text ='')or(e_3.Text= '')or (e_4.Text ='')or(e_5.Text ='')or(e_6.Text= '')or(e_7.Text= '')or (e_8.Text ='')or(e_9.Text= '')or (e_10.Text ='')or (e_11.Text ='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if e_1.Text = zqry1.Fields[0].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tbl_kustomer set nm_kustomer="'+e_2.Text+'",nik="'+e_3.Text+'",jenis_kelamin="'+e_4.Text+'",pekerjaan="'+e_5.Text+'",alamat="'+e_6.Text+'",tempat_tanggal_lahir= "'+e_7.Text+'",no_telp="'+e_8.Text+'",email="'+e_9.Text+'",usia="'+e_10.Text+'",status="'+e_11.Text+'" where id_kustomer="'+id_kustomer+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_kustomer');
zqry1.Open;

end;
end;

procedure TForm4.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tbl_kustomer where id_kustomer="'+id_kustomer+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_kustomer');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');

end
end;

procedure TForm4.b5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.posisiawal;
begin
bersih;
b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
b6.Enabled:= False;
e_1.Enabled:= false;
e_2.Enabled:= false;
e_3.Enabled:= false;
e_4.Enabled:= false;
e_5.Enabled:= false;
e_6.Enabled:= false;
e_7.Enabled:= false;
e_8.Enabled:= false;
e_9.Enabled:= false;
e_10.Enabled:= false;
e_11.Enabled:= false;
end;



procedure TForm4.b6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm4.bersih;
begin
e_1.Clear;
e_2.Clear;
e_3.Clear;
e_4.Clear;
e_5.Clear;
e_6.Clear;
e_7.Clear;
e_8.Clear;
e_9.Clear;
e_10.Clear;
e_11.Clear;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
id_kustomer:= zqry1.Fields[0].AsString;
e_2.Text:= zqry1.Fields[1].AsString;
e_3.Text:= zqry1.Fields[2].AsString;
e_4.Text:= zqry1.Fields[3].AsString;
e_5.Text:= zqry1.Fields[4].AsString;
e_6.Text:= zqry1.Fields[5].AsString;
e_7.Text:= zqry1.Fields[6].AsString;
e_8.Text:= zqry1.Fields[7].AsString;
e_9.Text:= zqry1.Fields[8].AsString;
e_10.Text:= zqry1.Fields[9].AsString;
e_11.Text:= zqry1.Fields[10].AsString;


e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
e_4.Enabled:= True;
e_5.Enabled:= True;
e_6.Enabled:= True;
e_7.Enabled:= True;
e_8.Enabled:= True;
e_9.Enabled:= True;
e_10.Enabled:= True;
e_11.Enabled:= True;



b1.Enabled:= false;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
posisiawal;
end;

end.
