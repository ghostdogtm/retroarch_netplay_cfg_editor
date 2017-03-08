unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;


type
  TMainForm = class(TForm)
    ip_address_input: TEdit;
    lbl_ip_address: TLabel;
    lbl_ip_port: TLabel;
    ip_port_input: TEdit;
    lbl_netplay_password: TLabel;
    password_input: TEdit;
    lbl_spectate_password: TLabel;
    spectate_password_input: TEdit;
    chk_stateless_mode: TCheckBox;
    lbl_check_frames: TLabel;
    check_frames_input: TEdit;
    btn_load_cfg: TButton;
    btn_save_cfg: TButton;
    procedure btn_load_cfgClick(Sender: TObject);
    procedure btn_save_cfgClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

function Parse(config_string: String): String;
var
  temp: String;
begin
 temp:=Copy(config_string, Pos('=', config_string)+2, Length(config_string));
 Result:=StringReplace(temp, '"', '', [rfReplaceAll]);
end;
{$R *.dfm}

procedure TMainForm.btn_load_cfgClick(Sender: TObject);
var
  List: TStringList;
  stateless_mode_str: String;
begin
  List:=TStringList.Create;
  List.LoadFromFile('retroarch.cfg');
  ip_address_input.text:=Parse(List.Strings[1605]);
  ip_port_input.text:=Parse(List.Strings[97]);
  password_input.text:=Parse(List.Strings[1606]);
  spectate_password_input.text:=Parse(List.Strings[1607]);
  stateless_mode_str:=Parse(List.Strings[178]);
  if stateless_mode_str='true' then
    chk_stateless_mode.Checked:=True
    else
      chk_stateless_mode.Checked:=False;
  check_frames_input.text:=Parse(List.Strings[98]);
  List.Free;
end;

procedure TMainForm.btn_save_cfgClick(Sender: TObject);
var
  List: TStringList;
  stateless_mode_str: String;
begin
  List:=TStringList.Create;
  List.LoadFromFile('retroarch.cfg');
  List.Strings[1605]:='netplay_ip_address = "' + ip_address_input.text + '"';
  List.Strings[97]:='netplay_ip_port = "' + ip_port_input.text + '"';
  List.Strings[1606]:='netplay_password = "' + password_input.text + '"';
  List.Strings[1607]:='netplay_spectate_password = "' + spectate_password_input.text + '"';
  if chk_stateless_mode.Checked=True then
    stateless_mode_str:='true'
    else
      stateless_mode_str:='false';
  List.Strings[178]:='netplay_stateless_mode = "' + stateless_mode_str + '"';
  List.Strings[98]:='netplay_check_frames = "' + check_frames_input.text + '"';
  List.SaveToFile('retroarch.cfg');
  List.Free;
end;

end.
