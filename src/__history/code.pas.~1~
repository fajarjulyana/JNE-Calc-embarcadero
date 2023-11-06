unit code;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TMainFrm = class(TForm)
    MenuKalkulasi: TGroupBox;
    InputPanjang: TEdit;
    InputLebar: TEdit;
    InputTinggi: TEdit;
    Label_Hasil: TLabel;
    Label_Panjang: TLabel;
    Label_Lebar: TLabel;
    Label_Tinggi: TLabel;
    Hasil: TLabel;
    TombolHitung: TButton;
    KonfigFormula: TGroupBox;
    Label_AddPan: TLabel;
    Label_AddLeb: TLabel;
    Label_AddTing: TLabel;
    Formula: TPanel;
    Formula_AddTing: TLabel;
    Formula_Tinggi: TLabel;
    Formula_AddLeb: TLabel;
    Formula_Lebar: TLabel;
    Formula_AddPan: TLabel;
    Formula_Panjang: TLabel;
    AddPan: TEdit;
    AddLeb: TEdit;
    AddTing: TEdit;
    TombolSet: TButton;
    Ongkir: TEdit;
    Formula_Ongkos: TLabel;
    Formula_Line: TPanel;
    Label_Ongkir: TLabel;
    Logo: TImage;
    JudulAplikasi: TLabel;
    Tile2: TLabel;
    joni: TImage;
    MainMenu1: TMainMenu;
    m1: TMenuItem;
    Exit1: TMenuItem;
    About1: TMenuItem;
    Fromula_Berat: TLabel;
    MenuPK: TComboBox;
    Label1: TLabel;
    procedure Hitung(Sender: TObject);
    procedure InputPanjangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure InputLebarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure InputTinggiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SetFormula(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure MenuPKChange(Sender: TObject);
    procedure tambahanOperasi;
    procedure perubahanRumus;
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  MainFrm: TMainFrm;
  tambahanpanjang, tambahanlebar, tambahantinggi, ongkoskirim : Double;
implementation

uses about;

{$R *.dfm}

procedure TMainFrm.Hitung(Sender: TObject);
var
panjang, lebar, tinggi, volume: Double;
begin
  // Validasi input
  if (TryStrToFloat(InputPanjang.Text, panjang) and TryStrToFloat(InputLebar.Text, lebar) and TryStrToFloat(InputTinggi.Text, tinggi)) then
  begin
    // Hitung volume
    volume := (panjang + tambahanpanjang) * (lebar + tambahanlebar) * (tinggi + tambahantinggi) / ongkoskirim;
    // Tampilkan hasil volume
    Hasil.Caption := FloatToStr(volume) + ' kg';
  end
  else
  begin
    // Input tidak valid
    ShowMessage('Masukkan nilai yang valid untuk panjang, lebar, dan tinggi.');
  end;
end;


procedure TMainFrm.InputPanjangKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  begin
 if Key = VK_RETURN then
  begin
    if InputLebar.Text = '' then
      InputLebar.SetFocus
    else if InputTinggi.Text = '' then
      InputTinggi.SetFocus
    else if InputPanjang.Text = '' then
      InputPanjang.SetFocus
    else
      TombolHitung.Click; // Pindah ke tombol jika Edit3 sudah terisi
    Key := 0; // Mengabaikan tombol Enter
end;
  end;


procedure TMainFrm.InputLebarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
  begin
    if InputLebar.Text = '' then
      InputLebar.SetFocus
    else if InputTinggi.Text = '' then
      InputTinggi.SetFocus
    else if InputPanjang.Text = '' then
      InputPanjang.SetFocus
    else
      TombolHitung.Click; // Pindah ke tombol jika Edit3 sudah terisi
    Key := 0; // Mengabaikan tombol Enter
end;
end;

procedure TMainFrm.InputTinggiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
  begin
    if InputLebar.Text = '' then
      InputLebar.SetFocus
    else if InputTinggi.Text = '' then
      InputTinggi.SetFocus
    else if InputPanjang.Text = '' then
      InputPanjang.SetFocus
    else
      TombolHitung.Click; // Pindah ke tombol jika Edit3 sudah terisi
    Key := 0; // Mengabaikan tombol Enter
end;
end;

procedure TMainFrm.FormCreate(Sender: TObject);
begin
tambahanOperasi;
borderstyle := bsnone;
windowstate := wsmaximized;
Formula_AddPan.Caption := AddPan.Text + ') x';
Formula_AddLeb.Caption := AddLeb.Text + ') x';
Formula_AddTing.Caption := AddTing.Text + ')';
Formula_Ongkos.Caption := Ongkir.Text;
end;
procedure TMainFrm.SetFormula(Sender: TObject);
begin
    tambahanOperasi;
    perubahanRumus;
end;

procedure TMainFrm.About1Click(Sender: TObject);
begin
  Frm_About.show;
end;

procedure TMainFrm.Exit1Click(Sender: TObject);
begin
close;
end;

procedure TMainFrm.MenuPKChange(Sender: TObject);
begin
if MenuPK.Text = 'Packing Kayu 1' then
begin
   AddPan.Text := '13';
   AddLeb.Text := '5';
   AddTing.Text := '5';
   tambahanOperasi;
   perubahanRumus;
   end
else
if MenuPK.Text = 'Packing Kayu 2' then
begin
   AddPan.Text := '17';
   AddLeb.Text := '9';
   AddTing.Text := '9';
   tambahanOperasi;
   perubahanRumus;
end
else
if MenuPK.Text = 'Packing Kayu 3' then
begin
   AddPan.Text := '19';
   AddLeb.Text := '12';
   AddTing.Text := '12';
   tambahanOperasi;
   perubahanRumus;
end
end;

procedure TMainFrm.tambahanOperasi;
begin
tambahanpanjang := StrtoFloat(AddPan.Text);
tambahanlebar := strtofloat(AddLeb.Text);
tambahantinggi := strtofloat(AddTing.Text);
ongkoskirim := strtoint(Ongkir.Text);
end;

procedure TMainFrm.perubahanRumus;
begin
    Formula_AddPan.Caption := AddPan.Text + ') x';
    Formula_AddLeb.Caption := AddLeb.Text + ') x';
    Formula_AddTing.Caption := AddTing.Text + ')';
    Formula_Ongkos.Caption := Ongkir.Text;
end;

end.
