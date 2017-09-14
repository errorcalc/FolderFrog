unit Cooperation;

interface

var
  WM_OpenCurrentFolder: Cardinal;

implementation

uses
  Windows;

initialization
  WM_OpenCurrentFolder := RegisterWindowMessage('errorsoft.FolderFrog.OpenCurrentFolder');

end.
