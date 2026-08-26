object Form2: TForm2
  Left = 569
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 395
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 492
    Height = 376
    Align = alClient
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 376
    Width = 492
    Height = 19
    Panels = <
      item
        Text = 'X :'
        Width = 20
      end
      item
        Width = 50
      end
      item
        Text = 'Y :'
        Width = 20
      end
      item
        Width = 50
      end
      item
        Text = 'Bit :'
        Width = 30
      end
      item
        Width = 50
      end
      item
        Text = 'Used :'
        Width = 40
      end
      item
        Width = 50
      end>
  end
end
