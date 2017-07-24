unit Cooperation;

interface

var
  WM_OpenCurrentFolder: Integer;

implementation

uses
  Windows;

initialization
  WM_OpenCurrentFolder := RegisterWindowMessage('errorsoft.FolderFrog.OpenCurrentFolder');

end.
