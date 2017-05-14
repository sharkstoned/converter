program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Converter};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TConverter, Converter);
  Application.Run;
end.
