object MainForm: TMainForm
  Left = 478
  Top = 193
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Retroarch Netplay CFG Editor'
  ClientHeight = 244
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_ip_address: TLabel
    Left = 16
    Top = 16
    Width = 51
    Height = 13
    Caption = 'IP Address'
  end
  object lbl_ip_port: TLabel
    Left = 16
    Top = 72
    Width = 19
    Height = 13
    Caption = 'Port'
  end
  object lbl_netplay_password: TLabel
    Left = 16
    Top = 128
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lbl_spectate_password: TLabel
    Left = 160
    Top = 16
    Width = 92
    Height = 13
    Caption = 'Spectate Password'
  end
  object lbl_check_frames: TLabel
    Left = 160
    Top = 128
    Width = 68
    Height = 13
    Caption = 'Check Frames'
  end
  object ip_address_input: TEdit
    Left = 16
    Top = 40
    Width = 121
    Height = 21
    ImeName = 'Russian'
    TabOrder = 0
  end
  object ip_port_input: TEdit
    Left = 16
    Top = 96
    Width = 121
    Height = 21
    ImeName = 'Russian'
    TabOrder = 1
  end
  object password_input: TEdit
    Left = 16
    Top = 152
    Width = 121
    Height = 21
    ImeName = 'Russian'
    TabOrder = 2
  end
  object spectate_password_input: TEdit
    Left = 160
    Top = 40
    Width = 121
    Height = 21
    ImeName = 'Russian'
    TabOrder = 3
  end
  object chk_stateless_mode: TCheckBox
    Left = 160
    Top = 96
    Width = 97
    Height = 17
    Caption = 'Stateless Mode'
    TabOrder = 4
  end
  object check_frames_input: TEdit
    Left = 160
    Top = 152
    Width = 121
    Height = 21
    ImeName = 'Russian'
    TabOrder = 5
  end
  object btn_load_cfg: TButton
    Left = 16
    Top = 200
    Width = 121
    Height = 25
    Caption = 'Load'
    TabOrder = 6
    OnClick = btn_load_cfgClick
  end
  object btn_save_cfg: TButton
    Left = 160
    Top = 200
    Width = 123
    Height = 25
    Caption = 'Save'
    TabOrder = 7
    OnClick = btn_save_cfgClick
  end
end
