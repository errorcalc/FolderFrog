program FolderFrog;

uses
  Windows,
  Dialogs,
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  Vcl.Themes,
  Vcl.Styles,
  Cooperation in 'Cooperation.pas',
  SelectDate in 'SelectDate.pas' {SelectDateForm};

{$R *.res}

const
  MName = 'errorsoft.FolderFrog.{749C50D6-4B77-4175-AAEC-6571D9F00049}';
begin
  if OpenMutex(MUTEX_ALL_ACCESS, false, MName) <> 0 then
  begin
    //ShowMessage('Один экземпляр приложения уже запущен!');
    SendMessage(HWND_BROADCAST, WM_OpenCurrentFolder, 0, 0);
    Exit;
  end else
    CreateMutex(nil, false, MName);

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
