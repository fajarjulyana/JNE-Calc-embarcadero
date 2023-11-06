unit about;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TFrm_About = class(TForm)
    Logo: TImage;
    Name_info: TLabel;
    Address_info: TLabel;
    Contact_info: TLabel;
    Developer: TLabel;
    MainMenu1: TMainMenu;
    Exit1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_About: TFrm_About;

implementation

{$R *.dfm}

procedure TFrm_About.FormCreate(Sender: TObject);
begin
WindowState := wsMaximized;
end;

procedure TFrm_About.Exit1Click(Sender: TObject);
begin
close;
end;

end.
