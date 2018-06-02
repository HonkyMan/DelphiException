object MatrixMult: TMatrixMult
  Left = 0
  Top = 0
  Caption = #1055#1077#1088#1077#1084#1085#1086#1078#1077#1085#1080#1077' '#1084#1072#1090#1088#1080#1094
  ClientHeight = 396
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 396
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -48
    ExplicitTop = -24
    ExplicitWidth = 628
    ExplicitHeight = 299
    object Label1: TLabel
      Left = 59
      Top = 37
      Width = 30
      Height = 21
      Caption = 'n = '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 54
      Top = 64
      Width = 35
      Height = 21
      Caption = 'm = '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 275
      Top = 37
      Width = 30
      Height = 21
      Caption = 'n = '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 270
      Top = 64
      Width = 35
      Height = 21
      Caption = 'm = '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 95
      Top = 37
      Width = 37
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 95
      Top = 64
      Width = 37
      Height = 21
      TabOrder = 1
    end
    object StaticText1: TStaticText
      Left = 19
      Top = 14
      Width = 170
      Height = 17
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1088#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100' 1 '#1084#1072#1090#1088#1080#1094#1099
      TabOrder = 2
    end
    object StaticText2: TStaticText
      Left = 227
      Top = 14
      Width = 170
      Height = 17
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1088#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100' 2 '#1084#1072#1090#1088#1080#1094#1099
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 311
      Top = 37
      Width = 37
      Height = 21
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 311
      Top = 64
      Width = 37
      Height = 21
      TabOrder = 5
    end
    object Button1: TButton
      Left = 19
      Top = 104
      Width = 398
      Height = 33
      Caption = #1055#1054#1057#1063#1048#1058#1040#1058#1068' '#1055#1056#1054#1048#1047#1042#1045#1044#1045#1053#1048#1045
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object Memo1: TMemo
      Left = 19
      Top = 152
      Width = 398
      Height = 233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'Memo1')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 7
    end
  end
end
