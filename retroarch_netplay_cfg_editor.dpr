program retroarch_netplay_cfg_editor;

uses
  Forms,
  main in 'main.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.