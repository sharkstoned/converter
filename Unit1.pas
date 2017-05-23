unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ComCtrls, Vcl.Samples.Spin, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TConverter = class(TForm)
    first_currency: TComboBox;
    second_currency: TComboBox;
    convert_button: TButton;
    first_value: TSpinEdit;
    second_value: TSpinEdit;
    Image1: TImage;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Converter: TConverter;

implementation

{$R *.dfm}

end.
