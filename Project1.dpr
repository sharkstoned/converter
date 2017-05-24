program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Converter};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TConverter, Converter);
  pplication.Run;
end.
