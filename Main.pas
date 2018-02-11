{****************************************************************************************}
{                                      FolderFrog                                        }
{                                  ErrorSoft(c) 2017                                     }
{                                                                                        }
{     ВНИМАНИЕ: ЭТО КОНЦЕПТ ПРИЛОЖЕНИЯ, НАПИСАННЫЙ ЗА ОДИН ДЕНЬ, СОДЕРЖИТ ГОВНОКОД!      }
{               ОДНАКО РАБОЧИЙ И СПОСОБНЫЙ ПРИНЕСТИ ПОЛЬЗУ.                              }
{                                                                                        }
{     ATTENTION:                                                                         }
{       THIS IS THE CONCEPT OF APPLICATION, WRITTENED ONE DAY, CODE CONTAINS SOME CRAP!  }
{       HOWEVER WORKING AND CAN BE USEFUL.                                               }
{                                                                                        }
{ This project uses GNU GPL v2 license.                                                  }
{****************************************************************************************}
unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Win.TaskbarCore, Vcl.Taskbar, Vcl.Menus, System.Win.Registry, Vcl.FileCtrl, IoUtils, ShellAPI,
  Vcl.Imaging.pngimage, ES.BaseControls, ES.Images, Cooperation;

const
  AppName = 'FolderFrog';

type
  TSettings = record
  private
    const RegistryPath = 'Software\errorsoft\' + AppName;
  public
    Path: string;
    AutoRun: Boolean;
    FullData: Boolean;
  end;

  TMainForm = class(TForm)
    LabelPath: TLabel;
    EditPath: TEdit;
    ButtonSelectPath: TButton;
    ButtonOk: TButton;
    CheckBoxAutoRun: TCheckBox;
    TrayIcon: TTrayIcon;
    PopupMenu: TPopupMenu;
    MenuItemConfig: TMenuItem;
    MenuItemForceCreate: TMenuItem;
    N3: TMenuItem;
    MenuItemExit: TMenuItem;
    TimerTest: TTimer;
    OpenFolderDialog: TFileOpenDialog;
    MenuItemOpenCurrentFolder: TMenuItem;
    N5: TMenuItem;
    PanelHeader: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EsImage1: TEsImage;
    Bevel1: TBevel;
    Label4: TLabel;
    CheckBoxFullData: TCheckBox;
    MenuItemCheckForUpdate: TMenuItem;
    MenuItemOpenFolderForData: TMenuItem;
    procedure MenuItemExitClick(Sender: TObject);
    procedure MenuItemConfigClick(Sender: TObject);
    procedure ButtonOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ButtonSelectPathClick(Sender: TObject);
    procedure TimerTestTimer(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure MenuItemForceCreateClick(Sender: TObject);
    procedure MenuItemOpenCurrentFolderClick(Sender: TObject);
    procedure MenuItemCheckForUpdateClick(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure MenuItemOpenFolderForDataClick(Sender: TObject);
  private
    RealClose: Boolean;
    Settings: TSettings;
    IsBadPath: Boolean;
    procedure Generate;
    procedure LoadSettings;
    procedure SaveSettings;
    procedure SetAutoRun(Enable: Boolean);
    procedure ShowTrayMessage(Msg: string);
    function GetPathForDate(Date: TDate; FullData: Boolean): string;
    function SearchPathForDate(Date: TDate; FullData: Boolean): string;
    procedure OpenCurrentFolder;
    procedure OpenFolder(Path: string);
    procedure CheckForUpdate;
  public
    procedure DefaultHandler(var Message); override;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  TurboUpdate.Check, TurboUpdate.Types, TurboUpdate.Update, SelectDate;

const
  Months: array [1..12] of string = (
  'Январь',
  'Февраль',
  'Март',
  'Апрель',
  'Май',
  'Июнь',
  'Июль',
  'Август',
  'Сентябрь',
  'Октябрь',
  'Ноябрь',
  'Декабрь');

procedure TMainForm.ButtonSelectPathClick(Sender: TObject);
begin
  if OpenFolderDialog.Execute then
  begin
    EditPath.Text := OpenFolderDialog.FileName;
  end;
end;

procedure TMainForm.ButtonOkClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TMainForm.CheckForUpdate;
const
  Urls: TStringArray = ['https://raw.githubusercontent.com/errorcalc/FolderFrog/master/Update.ini', 'https://errorsoft.org/software/update.ini'];
  Name = 'errorsoft.FolderFrog';
begin
  {$ifndef DEBUG}
  TurboUpdate.Check.CheckUpdate(
    Urls,
    Name,
    procedure (UpdateAviable: Boolean; Version: TFileVersion)
    var
      Info: TUpdateInfo;
    begin
      if UpdateAviable then
      begin
        Info := Default(TUpdateInfo);
        Info.Urls := Urls;
        Info.Name := Name;
        Info.Description := AppName + ' Update';
        TurboUpdate.Update.Update(Info);
      end;
    end);
  {$endif}
end;

function TMainForm.GetPathForDate(Date: TDate; FullData: Boolean): string;
var
  Year, Month, Day: WORD;
begin
  DecodeDate(Date, Year, Month, Day);
  Result := IncludeTrailingPathDelimiter(Settings.Path) + Year.ToString + PathDelim +
    Months[Month] + PathDelim;

  if FullData then
    Result := Result + Day.ToString + '.' + Month.ToString + '.' + (Year mod 100).ToString
  else
    Result := Result +  Day.ToString;
end;

function TMainForm.SearchPathForDate(Date: TDate; FullData: Boolean): string;
var
  Year, Month, Day: WORD;
  iYear, iMonth, iDay: Boolean;

  function CreatePath(IsZeroDay, IsZeroMonth, IsZeroYear: Boolean): string;
  begin
    Result := IncludeTrailingPathDelimiter(Settings.Path) + Year.ToString + PathDelim +
      Months[Month] + PathDelim;

    // day
    if IsZeroDay then
      Result := Result + Format('%.2d', [Day])
    else
      Result := Result + Day.ToString;

    if FullData then
    begin
      // Month
      if IsZeroMonth then
        Result := Result + '.' + Format('%.2d', [Month])
      else
        Result := Result + '.' + Month.ToString;

      // (Year mod 100)
      if IsZeroYear then
        Result := Result + '.' + Format('%.2d', [(Year mod 100)])
      else
        Result := Result + '.' + (Year mod 100).ToString;
    end;
  end;

begin
  DecodeDate(Date, Year, Month, Day);

  for iYear in [False..True] do
    for iMonth in [False..True] do
      for iDay in [False..True] do
      begin
        Result := CreatePath(iYear, iMonth, iDay);
        if DirectoryExists(Result) then
          Exit(Result);
      end;

  Result := '';
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if RealClose then
  begin
    Action := TCloseAction.caHide;
    Exit;
  end else
  begin
    Action := TCloseAction.caNone;
    Self.Hide;
  end;

  // settings
  Settings.Path := EditPath.Text;
  Settings.AutoRun := CheckBoxAutoRun.Checked;
  Settings.FullData := CheckBoxFullData.Checked;
  SaveSettings;

  // autorun
  SetAutoRun(Settings.AutoRun);

  // generate
  IsBadPath := False;
  Generate;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  CheckForUpdate;

  for I := 0 to ParamCount do
    if ParamStr(I).ToLower = '/hide' then
      Application.ShowMainForm := False;

  TimerTest.Enabled := True;
  Settings.AutoRun := True;
  Settings.FullData := True;

  LoadSettings;
end;

procedure TMainForm.FormHide(Sender: TObject);
begin
  TimerTest.Enabled := True;
  MenuItemForceCreate.Enabled := True;
  MenuItemOpenCurrentFolder.Enabled := True;
  MenuItemConfig.Enabled := True;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  TimerTest.Enabled := False;
  MenuItemForceCreate.Enabled := False;
  MenuItemOpenCurrentFolder.Enabled := False;
  MenuItemConfig.Enabled := False;

  EditPath.Text := Settings.Path;
  CheckBoxAutoRun.Checked := Settings.AutoRun;
  CheckBoxFullData.Checked := Settings.FullData;
end;

procedure TMainForm.Generate;
var
  Folder: string;
begin
  if IsBadPath then
    Exit;

  try
    //if DirectoryExists(Settings.Path) then
    //begin
      Folder := GetPathForDate(Now, Settings.FullData);

      if not DirectoryExists(Folder) then
      begin
        if ForceDirectories(Folder) then
          ShowTrayMessage('Папка для текущего дня создана!' + #13 + Folder)
        else
          raise Exception.Create('');
      end;
    //end else
    //  raise Exception.Create('');
  except
    IsBadPath := True;
    ShowTrayMessage('Не удалось создать дирректорию!' + #13 + 'Проверьте правильность указания пути.');
  end;
end;

procedure TMainForm.LoadSettings;
var
  R: TRegistry;
begin
  R := TRegistry.Create;
  try
    R.RootKey := HKEY_CURRENT_USER;
    if not R.KeyExists(TSettings.RegistryPath) then
      ShowMessage('Перед использованием программы, ' +
      'разместите исполняемый файл программы на жестком диске вашего ПК, в постоянном месте (не в папке Download).');
    R.OpenKey(TSettings.RegistryPath, True);
    if R.ValueExists('Path') then
      Settings.Path := R.ReadString('Path');
    if R.ValueExists('AutoRun') then
      Settings.AutoRun := R.ReadBool('AutoRun');
    if R.ValueExists('FullData') then
      Settings.FullData := R.ReadBool('FullData');
  finally
    R.Free;
  end;
end;

procedure TMainForm.MenuItemCheckForUpdateClick(Sender: TObject);
begin
  CheckForUpdate;
end;

procedure TMainForm.MenuItemConfigClick(Sender: TObject);
begin
  Self.Show;
end;

procedure TMainForm.MenuItemOpenCurrentFolderClick(Sender: TObject);
begin
  OpenCurrentFolder;
end;

procedure TMainForm.MenuItemOpenFolderForDataClick(Sender: TObject);
var
  SelectDateForm: TSelectDateForm;
  Folder: string;
begin
  SelectDateForm := TSelectDateForm.Create(Application);
  SelectDateForm.OnSelect := procedure(Date: TDate)
  begin
    Folder := GetPathForDate(Date, Settings.FullData);

    if SearchPathForDate(Date, Settings.FullData) <> '' then
      OpenFolder(Folder)
    else
      ShowTrayMessage('Папки для данной даты не существует!');
  end;
  SelectDateForm.Show;
end;

procedure TMainForm.OpenCurrentFolder;
begin
  IsBadPath := False;
  Generate;
  if not IsBadPath then
    OpenFolder(GetPathForDate(Now, Settings.FullData));
end;

procedure TMainForm.OpenFolder(Path: string);
begin
  ShellExecute(Application.Handle, 'explore',
    PChar(Path), nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.MenuItemForceCreateClick(Sender: TObject);
begin
  IsBadPath := False;
  Generate;
end;

procedure TMainForm.MenuItemExitClick(Sender: TObject);
begin
  RealClose := True;
  Close;
end;

procedure TMainForm.SaveSettings;
var
  R: TRegistry;
begin
  R := TRegistry.Create;
  try
    R.RootKey := HKEY_CURRENT_USER;
    R.OpenKey(TSettings.RegistryPath, True);
    R.WriteString('Path', Settings.Path);
    R.WriteBool('AutoRun', Settings.AutoRun);
    R.WriteBool('FullData', Settings.FullData);
    R.WriteInteger('Generation', 1);
  finally
    R.Free;
  end;
end;

procedure TMainForm.SetAutoRun(Enable: Boolean);
var
  R: TRegistry;
begin
  R := TRegistry.Create;
  try
    R.RootKey := HKEY_CURRENT_USER;
    R.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', True);
    if Enable then
      R.WriteString(AppName, '"' + Application.ExeName + '"' + '/hide')
    else
      R.DeleteValue(AppName);
  finally
    R.Free;
  end;
end;

procedure TMainForm.ShowTrayMessage(Msg: string);
begin
  TrayIcon.BalloonHint := Msg;
  TrayIcon.BalloonTimeout := 2000;
  TrayIcon.ShowBalloonHint;
end;

procedure TMainForm.TimerTestTimer(Sender: TObject);
begin
  Generate;
end;

procedure TMainForm.TrayIconDblClick(Sender: TObject);
begin
  OpenCurrentFolder;
end;

procedure TMainForm.DefaultHandler(var Message);
begin
  if TMessage(Message).Msg = WM_OpenCurrentFolder then
  begin
    OpenCurrentFolder;
  end
  else
    inherited DefaultHandler(Message);
end;

end.
