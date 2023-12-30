object Form3: TForm3
  Left = 267
  Top = 229
  Width = 870
  Height = 450
  Caption = 'MAIN MENU'
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
    Left = 32
    Top = 48
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Rumah1: TMenuItem
        Caption = 'KUSTOMER'
        OnClick = Rumah1Click
      end
      object ANGSURAN1: TMenuItem
        Caption = 'ANGSURAN'
        OnClick = ANGSURAN1Click
      end
      object PENGAJUAN1: TMenuItem
        Caption = 'PENGAJUAN'
        OnClick = PENGAJUAN1Click
      end
      object RUMAH2: TMenuItem
        Caption = 'RUMAH'
        OnClick = RUMAH2Click
      end
      object SYARATPEMESANANRUMAH1: TMenuItem
        Caption = 'SYARAT PEMESANAN RUMAH'
        OnClick = SYARATPEMESANANRUMAH1Click
      end
      object PEMESANANRUMAH1: TMenuItem
        Caption = 'PEMESANAN RUMAH'
        OnClick = PEMESANANRUMAH1Click
      end
      object SYARATPENGAJUAN1: TMenuItem
        Caption = 'SYARAT PENGAJUAN'
        OnClick = SYARATPENGAJUAN1Click
      end
      object PROFILPERUMAHAN1: TMenuItem
        Caption = 'PROFIL PERUMAHAN'
        OnClick = PROFILPERUMAHAN1Click
      end
      object SYARATSARANA1: TMenuItem
        Caption = 'SARANA DAN PRASARANA'
        OnClick = SYARATSARANA1Click
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
