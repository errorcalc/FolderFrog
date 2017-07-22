program FolderFrog;

uses
  Windows,
  Dialogs,
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

const
  MName = 'errorsoft.FolderFrog/once';
begin
  if OpenMutex(MUTEX_ALL_ACCESS, false, MName) <> 0 then
  begin
    ShowMessage('Один экземпляр приложения уже запущен!');
    Exit;
  end else
    CreateMutex(nil, false, MName);

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
