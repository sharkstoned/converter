object Converter: TConverter
  Left = 0
  Top = 0
  Caption = 'Converter'
  ClientHeight = 191
  ClientWidth = 505
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object first_currency: TComboBox
    Left = 32
    Top = 24
    Width = 129
    Height = 21
    TabOrder = 0
    Text = 'Currency'
    Items.Strings = (
      #163'  GB Pound'
      '$  US Dollar'
      #8364'  Euro')
  end
  object second_currency: TComboBox
    Left = 32
    Top = 136
    Width = 129
    Height = 21
    TabOrder = 1
    Text = 'Currency'
    Items.Strings = (
      #163'  GB Pound'
      '$  US Dollar'
      #8364'  Euro')
  end
  object convert_button: TButton
    Left = 368
    Top = 64
    Width = 105
    Height = 57
    Caption = 'Convert'
    TabOrder = 2
  end
  object first_value: TSpinEdit
    Left = 208
    Top = 24
    Width = 137
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object second_value: TSpinEdit
    Left = 208
    Top = 136
    Width = 137
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
  end
end
