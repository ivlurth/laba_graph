program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  WayListUnit in 'WayListUnit.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Ruby Graphite');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
