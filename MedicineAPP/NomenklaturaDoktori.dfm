object NomenDoctorsForm: TNomenDoctorsForm
  Left = 257
  Top = 119
  Width = 577
  Height = 480
  Caption = #1051#1077#1082#1072#1088#1080
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
    Width = 561
    Height = 441
    Align = alClient
    Color = clWhite
    DataSource = DataMod.NomDocDs
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
        FieldName = 'FIRST_NAME'
        Title.Alignment = taCenter
        Title.Caption = #1048#1084#1077
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LAST_NAME'
        Title.Alignment = taCenter
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Doctor_Specialty'
        Title.Alignment = taCenter
        Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1085#1086#1089#1090
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 144
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Doctor_Specialty_Code'
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076' '#1085#1072' '#1089#1087#1077#1094#1080#1072#1083#1085#1086#1089#1090
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
end
