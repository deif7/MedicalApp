object NomenSIMPForm: TNomenSIMPForm
  Left = 236
  Top = 128
  Width = 427
  Height = 480
  Caption = #1052#1077#1076#1080#1094#1080#1085#1089#1082#1080' '#1057#1087#1077#1094#1080#1072#1083#1085#1086#1089#1090#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 411
    Height = 441
    Align = alClient
    Color = clWhite
    DataSource = DataMod.SimpDS
    FixedColor = clAqua
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SIMP_NAME'
        Title.Alignment = taCenter
        Title.Caption = #1048#1084#1077
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SIMP_CODE'
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 42
        Visible = True
      end>
  end
end
