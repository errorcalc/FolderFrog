object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1103
  ClientHeight = 305
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  StyleElements = [seFont, seClient]
  OnClose = FormClose
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  DesignSize = (
    449
    305)
  PixelsPerInch = 96
  TextHeight = 13
  object LabelPath: TLabel
    Left = 8
    Top = 202
    Width = 81
    Height = 13
    Caption = #1062#1077#1083#1077#1074#1072#1103' '#1087#1072#1087#1082#1072':'
  end
  object EditPath: TEdit
    Left = 112
    Top = 199
    Width = 297
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object ButtonSelectPath: TButton
    Left = 415
    Top = 199
    Width = 26
    Height = 21
    Anchors = [akTop, akRight]
    Caption = '...'
    TabOrder = 1
    OnClick = ButtonSelectPathClick
  end
  object ButtonOk: TButton
    Left = 366
    Top = 272
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1050
    TabOrder = 3
    OnClick = ButtonOkClick
  end
  object CheckBoxAutoRun: TCheckBox
    Left = 8
    Top = 226
    Width = 433
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Caption = #1047#1072#1087#1091#1089#1082' '#1087#1088#1080' '#1079#1072#1075#1088#1091#1079#1082#1077' Windows'
    TabOrder = 2
  end
  object PanelHeader: TPanel
    Left = 8
    Top = 8
    Width = 433
    Height = 185
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    TabOrder = 4
    object Label1: TLabel
      AlignWithMargins = True
      Left = 0
      Top = 106
      Width = 433
      Height = 13
      Margins.Left = 0
      Margins.Top = 4
      Margins.Right = 0
      Margins.Bottom = 4
      Align = alBottom
      Alignment = taCenter
      Caption = 'github.com/errorcalc/FolderFrog | errorsoft(c) 2017'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 248
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 0
      Top = 166
      Width = 433
      Height = 13
      Margins.Left = 0
      Margins.Top = 4
      Margins.Right = 0
      Margins.Bottom = 4
      Align = alBottom
      Alignment = taCenter
      Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1082#1072' '#1080' '#1074#1085#1077#1076#1088#1077#1085#1080#1077' '#1087#1088#1086#1075#1088#1072#1084#1084': Enter256@yandex.ru'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 287
    end
    object Label3: TLabel
      Left = 0
      Top = 0
      Width = 433
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Errorsoft FolderFrog'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 116
    end
    object EsImage1: TEsImage
      Left = 0
      Top = 16
      Width = 433
      Height = 86
      Align = alClient
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000140000
        001408060000008D891D0D000000B54944415478DA6364A032601C02064E62C8
        02D253F1A8C966C86398468A81FF234322712A58BE663903D040A27D023770F9
        E7E5D855EC64F84F42D06413343092379248B320BE21EC4252C04E62BC3CB80C
        FC0C14BC01C4EFA00A848058038879A17C42F218061E6260303860C020F25284
        61F7EEDD0C132F4E6428385DC0C06007D540481EC3C05B0C0CB2B76419783EF1
        3014161632EC7DB29761E5FD950C0C6A500D84E48760A48C180309155FA4806C
        AA17B000C1BD7FD963EB6EE90000000049454E44AE426082}
      Stretch = Fit
      Smoth = False
      ExplicitTop = -45
      ExplicitHeight = 82
    end
    object Bevel1: TBevel
      Left = 0
      Top = 183
      Width = 433
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
      ExplicitTop = 90
      ExplicitWidth = 377
    end
    object Label4: TLabel
      Left = 0
      Top = 123
      Width = 433
      Height = 39
      Align = alBottom
      Caption = 
        #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1076#1083#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1088#1072#1073#1086#1095#1077#1081' '#1087#1072#1087#1082#1080' '#1085#1072 +
        ' '#1082#1072#1078#1076#1099#1081' '#1076#1077#1085#1100'. '#1057#1086#1079#1076#1072#1077#1090' '#1090#1088#1080' '#1091#1088#1086#1074#1085#1103' '#1087#1072#1087#1086#1082': '#1043#1086#1076'\'#1052#1077#1089#1103#1094'\'#1063#1080#1089#1083#1086', '#1082' '#1087#1088#1080#1084#1077 +
        #1088#1091' "C:\'#1060#1086#1090#1086#1075#1088#1072#1092#1080#1080'\2017\'#1071#1085#1074#1072#1088#1100'\24"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 407
    end
  end
  object CheckBoxFullData: TCheckBox
    Left = 8
    Top = 249
    Width = 433
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Caption = #1055#1086#1083#1085#1072#1103' '#1076#1072#1090#1072
    TabOrder = 5
  end
  object TrayIcon: TTrayIcon
    Icon.Data = {
      000001000300101000000100200068040000360000001414000001002000B806
      00009E040000181800000100200088090000560B000028000000100000002000
      0000010020000000000000000000000000000000000000000000000000000092
      006A009200FF009200FF009200FF009200FF009200FF009200FF009200FF0092
      00FF009200FF009200FF009200FF009200FF009200FF009200FF0092006A0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF009200FF2B612BFF444444FFDCF0DCFF009200FF00D900FF00D9
      00FF009200FF2B612BFF444444FFCFEBCFFF009200FF00D900FF009200FF0092
      00FF59E659FF00BF00FF20A020FF009200FF20A020FF00BF00FF00D900FF00D9
      00FF00BF00FF20A020FF009200FF20A020FF00BF00FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF59E659FF59E6
      59FF59E659FF59E659FF59E659FF59E659FF59E659FF59E659FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FE0092
      00FF009200FF009200FF009200FF009200FF009200FF009200FF0092006A0092
      00FF59E659FF59E659FF59E659FF59E659FF59E659FF59E659FF009200FF0000
      0000000000000000000000000000000000000000000000000000000000000092
      006A009200FF009200FF009200FF009200FF009200FF009200FF0092006A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF0000FFFF0000FFFF0000FFFF00002800
      0000140000002800000001002000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000092006A009200FF0092
      00FF009200FF009200FF009200FF009200FF009200FF009200FF009200FF0092
      00FF009200FF009200FF009200FF009200FF009200FF009200FF009200FF0092
      00FF0092006A009200FF59E659FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF009200FF009200FF59E659FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF009200FF009200FF59E659FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF009200FF009200FF59E659FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF009200FF009200FF59E659FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF009200FF009200FF59E659FF00D9
      00FF00B300FF1D8D1DFF297F29FF9AF09AFF57D457FF00B300FF00D900FF00D9
      00FF00B300FF1D8D1DFF297F29FF9AF09AFF57D457FF00B300FF00D900FF00D9
      00FF009200FF009200FF59E659FF00D900FF009B00FF305B30FF444444FFFFFF
      FFFF90D090FF009B00FF00D900FF00D900FF009B00FF305B30FF444444FFFFFF
      FFFF90D090FF009B00FF00D900FF00D900FF009200FF009200FF59E659FF00D9
      00FF00CC00FF00A400FF009200FF009200FF00A400FF00CC00FF00D900FF00D9
      00FF00CC00FF00A400FF009200FF009200FF00A400FF00CC00FF00D900FF00D9
      00FF009200FF009200FF59E659FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF009200FF009200FF59E659FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF009200FF009200FF59E659FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF009200FF009200FF59E659FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF59E659FF59E659FF59E6
      59FF59E659FF59E659FF59E659FF59E659FF59E659FF59E659FF59E659FF59E6
      59FF009200FF009200FF59E659FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF009200FE009200FF009200FF009200FF009200FF009200FF0092
      00FF009200FF009200FF009200FF009200FF0092006A009200FF59E659FF59E6
      59FF59E659FF59E659FF59E659FF59E659FF59E659FF009200FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000092006A009200FF009200FF009200FF009200FF009200FF0092
      00FF009200FF0092006A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFF00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007FF000007FF000FFFFF000FFFFF000FFFFF00028000000180000003000
      0000010020000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000092
      006A009200FF009200FF009200FF009200FF009200FF009200FF009200FF0092
      00FF009200FF009200FF009200FF009200FF009200FF009200FF009200FF0092
      00FF009200FF009200FF009200FF009200FF009200FF009200FF0092006A0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF009B00FF4DCF4DFF248424FF297F29FF88E8
      88FF4DCF4DFF00B300FF00D900FF00D900FF00B300FF4DCF4DFF248424FF297F
      29FF88E888FF4DCF4DFF00B300FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF009B00FF7FC87FFF3C4D3CFF444444FFE0F2
      E0FF7FC87FFF009B00FF00D900FF00D900FF009B00FF7FC87FFF3C4D3CFF4444
      44FFE0F2E0FF7FC87FFF009B00FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D000FF00AD00FF009600FF009200FF0096
      00FF00AD00FF00D000FF00D900FF00D900FF00D000FF00AD00FF009600FF0092
      00FF009600FF00AD00FF00D000FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF59E659FF59E659FF59E659FF59E659FF59E659FF59E659FF59E659FF59E6
      59FF59E659FF59E659FF59E659FF59E659FF59E659FF59E659FF009200FF0092
      00FF59E659FF00D900FF00D900FF00D900FF00D900FF00D900FF00D900FF00D9
      00FF009200FE009200FF009200FF009200FF009200FF009200FF009200FF0092
      00FF009200FF009200FF009200FF009200FF009200FF009200FF0092006A0092
      00FF59E659FF59E659FF59E659FF59E659FF59E659FF59E659FF59E659FF59E6
      59FF009200FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000092
      006A009200FF009200FF009200FF009200FF009200FF009200FF009200FF0092
      00FF0092006A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000003FFF00003FFF00FFFFFF00FFFFFF00FFFFFF00}
    PopupMenu = PopupMenu
    Visible = True
    OnDblClick = TrayIconDblClick
    Left = 256
    Top = 226
  end
  object PopupMenu: TPopupMenu
    Left = 192
    Top = 226
    object MenuItemOpenCurrentFolder: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1087#1072#1087#1082#1091
      OnClick = MenuItemOpenCurrentFolderClick
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object MenuItemForceCreate: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1088#1080#1085#1091#1076#1080#1090#1077#1083#1100#1085#1086
      OnClick = MenuItemForceCreateClick
    end
    object MenuItemCheckForUpdate: TMenuItem
      Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
      OnClick = MenuItemCheckForUpdateClick
    end
    object MenuItemConfig: TMenuItem
      Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1103'...'
      OnClick = MenuItemConfigClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object MenuItemExit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = MenuItemExitClick
    end
  end
  object TimerTest: TTimer
    Interval = 5000
    OnTimer = TimerTestTimer
    Left = 224
    Top = 226
  end
  object OpenFolderDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders]
    Left = 288
    Top = 226
  end
end
