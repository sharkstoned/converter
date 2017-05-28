unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ComCtrls, Vcl.Samples.Spin, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TConverter = class(TForm)
    currencyField1: TComboBox;
    currencyField2: TComboBox;
    convert_button: TButton;
    numberField1: TSpinEdit;
    numberField2: TSpinEdit;
    Image1: TImage;
    Label1: TLabel;
    Button1: TButton;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure convert_buttonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
  TCurrency = class

  public
    ToKoruna: double;
    ToDollar: double;
    ToEuro: double;

    constructor Create(K,D,E: double);
  end;
var
  Converter: TConverter;

  Koruna: TCurrency;
  Dollar: TCurrency;
  Euro: TCurrency;

  QuantityInput: TSpinEdit;
  QuantityOutput: TSpinEdit;

  currencyFrom: TComboBox;
  currencyTo: TComboBox;

  reverseDirection: boolean;

implementation

constructor TCurrency.Create(K,D,E: double);
  begin
  ToKoruna := K;
  ToDollar := D;
  ToEuro := E;
  end;

{$R *.dfm}

procedure TConverter.convert_buttonClick(Sender: TObject);
  function getCoefficient(): double;
  begin
     case currencyFrom.ItemIndex of
      0: case currencyTo.ItemIndex of
           0: exit(Koruna.ToKoruna);
           1: exit(Koruna.ToDollar);
           2: exit(Koruna.ToEuro);
         end;
      1: case currencyTo.ItemIndex of
           0: exit(Dollar.ToKoruna);
           1: exit(Dollar.ToDollar);
           2: exit(Dollar.ToEuro);
         end;
      2: case currencyTo.ItemIndex of
           0: exit(Euro.ToKoruna);
           1: exit(Euro.ToDollar);
           2: exit(Euro.ToEuro);
         end;
     end;
  end;
begin
  QuantityOutput.Text := (StrToFloat(QuantityInput.Text) * getCoefficient).ToString;
end;

procedure defineSchema(reverseDirection: boolean);
begin
  if reverseDirection then begin
    currencyFrom := Converter.currencyField2;
    currencyTo := Converter.currencyField1;
    QuantityInput := Converter.numberField2;
    QuantityOutput := Converter.numberField1;
  end else begin
    currencyFrom := Converter.currencyField1;
    currencyTo := Converter.currencyField2;
    QuantityInput := Converter.numberField1;
    QuantityOutput := Converter.numberField2;
  end;
end;

procedure TConverter.FormCreate(Sender: TObject);
begin
  Koruna := TCurrency.Create(1, 0.042, 0.038);
  Dollar := TCurrency.Create(23.67 , 1, 0.89);
  Euro := TCurrency.Create(26.47, 1.12, 1);
  reverseDirection := false;
  defineSchema(reverseDirection);
  Image2.Visible := false;
end;

procedure TConverter.Button1Click(Sender: TObject);
begin
  reverseDirection := not reverseDirection;
  defineSchema(reverseDirection);
  Image2.Visible := reverseDirection;
  Image1.Visible := Image1.Visible;
end;

end.
