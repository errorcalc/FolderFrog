unit SelectDate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCalendars, Vcl.ExtCtrls;

type
  TOnSelectRef = reference to procedure (Date: TDate);

  TSelectDateForm = class(TForm)
    CalendarView: TCalendarView;
    Shape1: TShape;
    procedure FormCreate(Sender: TObject);
    procedure CalendarViewChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FOnSelectRef: TOnSelectRef;
    IsCreating: Boolean;
    { Private declarations }
    procedure DeactivateForm(Sender: TObject);
  public
    property OnSelect: TOnSelectRef read FOnSelectRef write FOnSelectRef;
  end;

implementation

{$R *.dfm}

procedure TSelectDateForm.CalendarViewChange(Sender: TObject);
begin
  if IsCreating then
    Exit;

  if Assigned(OnSelect) then
    // fix: CalendarView bug
    if CalendarView.SelectionCount > 0 then
      OnSelect(CalendarView.Date)
    else
      OnSelect(Date);
  Close;
end;

procedure TSelectDateForm.DeactivateForm(Sender: TObject);
begin
  Close;
end;

procedure TSelectDateForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSelectDateForm.FormCreate(Sender: TObject);
begin
  IsCreating := True;
  Application.OnDeactivate := DeactivateForm;
  CalendarView.Date := Date;
  IsCreating := False;
end;

procedure TSelectDateForm.FormDestroy(Sender: TObject);
begin
  Application.OnDeactivate := nil;
end;

procedure TSelectDateForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

end.
