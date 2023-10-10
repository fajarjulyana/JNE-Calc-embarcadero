program main;

uses
  Forms,
  code in 'src\code.pas' {MainFrm},
  about in 'src\about.pas' {Frm_About};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Kalkulator Volume Packing Kayu JNE';
  Application.HelpFile := 'C:\jne-calc\help.hlp';
  Application.CreateForm(TMainFrm, MainFrm);
  Application.CreateForm(TFrm_About, Frm_About);
  Application.Run;
end.
