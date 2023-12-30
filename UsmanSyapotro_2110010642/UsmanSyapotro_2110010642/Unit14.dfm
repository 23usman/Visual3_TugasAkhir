object Form14: TForm14
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'MENU USER'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 48
    Top = 48
    object Menu1: TMenuItem
      Caption = 'Menu'
      object KUSTOMER1: TMenuItem
        Caption = 'KUSTOMER'
        OnClick = KUSTOMER1Click
      end
      object PENGAJUAN1: TMenuItem
        Caption = 'PENGAJUAN'
        OnClick = PENGAJUAN1Click
      end
      object LAYANAN1: TMenuItem
        Caption = 'LAYANAN'
        OnClick = LAYANAN1Click
      end
    end
    object Logout1: TMenuItem
      Caption = 'Logout'
      OnClick = Logout1Click
    end
  end
end
