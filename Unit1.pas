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
    procedure FormCreate(Sender: TObject);
    procedure convert_buttonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
  TCurrency = class

  public
    ToPound: double;
    ToDollar: double;
    ToEuro: double;

    constructor Create(P,D,E: double);
  end;
var
  Converter: TConverter;

  Pound: TCurrency;
  Dollar: TCurrency;
  Euro: TCurrency;

implementation

constructor TCurrency.Create(P,D,E: double);
  begin
  ToPound := P;
  ToDollar := D;
  ToEuro := E;
  end;

{$R *.dfm}

procedure TConverter.convert_buttonClick(Sender: TObject);
  function getCoefficient(): double;
  begin
     case currencyField1.ItemIndex of
      0: case currencyField2.ItemIndex of
           0: exit(Pound.ToPound);
           1: exit(Pound.ToDollar);
           2: exit(Pound.ToEuro);
         end;
      1: case currencyField2.ItemIndex of
           0: exit(Dollar.ToPound);
           1: exit(Dollar.ToDollar);
           2: exit(Dollar.ToEuro);
         end;
      2: case currencyField2.ItemIndex of
           0: exit(Euro.ToPound);
           1: exit(Euro.ToDollar);
           2: exit(Euro.ToEuro);
         end;
     end;
  end;

begin
  numberField2.Text := (StrToFloat(numberField1.Text) * getCoefficient).ToString;
end;

procedure TConverter.FormCreate(Sender: TObject);
begin
  Pound := TCurrency.Create(1, 1.29, 1.16);
  Dollar := TCurrency.Create(0.77 , 1, 0.89);
  Euro := TCurrency.Create(0.86, 1.12, 1);
end;

end.
