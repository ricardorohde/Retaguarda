inherited FormTelaEnvioEmailGeral: TFormTelaEnvioEmailGeral
  Left = 223
  Top = 103
  Width = 808
  Height = 580
  Caption = 'Envio de Email'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 792
    Height = 542
    inherited PanelCentral: TPanel
      Width = 788
      Height = 458
      inherited PanelBarra: TPanel
        Width = 788
        Height = 0
        Align = alTop
      end
      object PageControl: TPageControl
        Left = 0
        Top = 0
        Width = 788
        Height = 458
        ActivePage = Email
        Align = alClient
        TabOrder = 1
        TabPosition = tpBottom
        object Email: TTabSheet
          Caption = 'Email'
          ImageIndex = 1
          object Label3: TLabel
            Left = 2
            Top = 0
            Width = 46
            Height = 13
            Caption = 'Assunto :'
          end
          object Label4: TLabel
            Left = 3
            Top = 38
            Width = 58
            Height = 13
            Caption = 'Mensagem :'
          end
          object SpeedButton4: TSpeedButton
            Left = 420
            Top = 16
            Width = 115
            Height = 34
            Caption = '&Limpar Textos'
            Flat = True
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777700000007777777777777777700000007777777777777777700000007700
              0000000000007000000077777777777777777000000077000000000000007000
              0000777777777777777770000000770000000000000070000000777777777777
              7777700000007700000000000000700000007777777777777777700000007700
              0000000000007000000077777777777777777000000077000000000000007000
              0000777777777777777770000000777777777777777770000000777777777777
              777770000000}
            OnClick = SpeedButton4Click
          end
          object ButtonGeraEmail: TSpeedButton
            Left = 420
            Top = 50
            Width = 115
            Height = 34
            Caption = '&Gerar Email'
            Flat = True
            Glyph.Data = {
              66010000424D6601000000000000760000002800000014000000140000000100
              040000000000F000000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888800008888888888888888888800008880000000000000000800008880
              FFFFFFFFFFFFFF0800008880FFFFF4444444FF0800008800FFFFFFFFFFFFFF08
              00008800FFFFF4444444FF0800008800FFFFFFFFFFFFFF0800008000FFFFFFFF
              FFF99F0800008000F4444FFFFFF99F0800008000FFFFFFFFFFFFFF0800008000
              00000000000000080000800F4444FFFFFF99F0880000800FFFFFFFFFFFFFF088
              000080000000000000000088000080F4444FFFFFF99F0888000080FFFFFFFFFF
              FFFF088800008000000000000000088800008888888888888888888800008888
              88888888888888880000}
            OnClick = ButtonGeraEmailClick
          end
          object ButtonEnviarEmail: TSpeedButton
            Left = 420
            Top = 84
            Width = 115
            Height = 34
            Caption = '&Enviar Email'
            Flat = True
            Glyph.Data = {
              F6020000424DF602000000000000760000002800000020000000140000000100
              0800000000008002000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00080808080808
              0808080808080808080808080008080800080808080808080808080808080808
              0808080808080808080808000F0008000F000808080808080808080808080808
              08080808080808080808000F0F08000F0F0F0008080808080808080808080808
              080808080808080808000F0F08000F0F0F0F0F00080808080808080808080808
              0808080808080808000F0F04000F0F0C0F0F0F0F000808080808080808080808
              08080808080808000F0F04000F0F0C0F0F0F0F0F0F0008080808080808080808
              080808080808000F0F04000F0F0C0F0F0C0F0F0F0F0F00080808080808080808
              0808080808000F0F04000F0F0C0F0F0C0F0F0C0F080908000808080808080808
              08080808000F0F08000F0F0F0F0F0C0F0F0C0F0F0901090F00080F0000000000
              000000000F0F08000F0F0F0F0F0C0F0F0C0F0F0F080908000008000F03030303
              0303000F0F08000F0F0F0F0F0F0F0F0C0F0F0F0F0F0F00030300000B00000000
              0000080808000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0000000300000F00080008
              00080808000808080808080808080C0808080808000003000300000B000B0800
              070008080800080808080808080C08080C080800000307000300000F00080B08
              0000000000000000000000000000000000000000030703000300000B000B080B
              0F0B0F0B0F0B0F0B0F0B0F0B0F0B0F0B0F0B0F0B030307000300000F00080B0F
              0B0F0B0F0B0F0B0F0B0F0B0F0B0F0B0F0B0F0B0F0B0303000300000B00000000
              0000000000000000000000000000000000000000000000000300000F0B0F0B0F
              0B0F0B0F0B0F0B0F0B0F0B0F0B0F0B0F0B0F0B0F0B0F0B0F0B000F0000000000
              000000000000000000000000000000000000000000000000000F}
            OnClick = ButtonEnviarEmailClick
          end
          object SpeedButton2: TSpeedButton
            Left = 420
            Top = 118
            Width = 115
            Height = 34
            Caption = '&Apagar Lista'
            Flat = True
            Glyph.Data = {
              26080000424D26080000000000003604000028000000210000001C0000000100
              080000000000F0030000C30E0000C30E00000001000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000F0F0F000F0F
              0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F
              0F000F0F00000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F
              0F000F0F0F000F0F0F000F0F0F000F0F0000000F0F000F0F0000000F0F000000
              0F00000F0F0000000F00000000000F0000000F0F00000F0F0000000F0000000F
              0F000F000F000F000F0000000F00000F00000F000F000F0F0000000F0F000F00
              0F000F0F0F000F000000000F0F000F000F000F000F000F0F0000000F00000F00
              0F0000000000000F0F000F000000000F0F00000F0000000F0F000F000F000F00
              0F000F0F0000000F00000F000F000F0F0000000F0F000F000F00000F00000F0F
              0000000000000F0F0000000F0F000F0F0000000F0F0000000F0000000F000F00
              00000F0F00000F0F0F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F
              0F000F000F000F0F0F000F0F0F000F0F0F000F0F0F000F0F00000F0F0F000F0F
              0F000F0F0F000F0F0F00000F0F000F000F000F0F0F000F0F0F000F0F0F000F0F
              0F000F0F00000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F
              0F000F0F0F000F0F0F000F0F0F000F0F00000F0F0F000F0F0F000F0F0F000F0F
              0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F00000F0F
              0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F
              0F000F0F0F000F0F00000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F
              0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F00000F0F0F000F0F0F000F0F
              0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F
              00000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F
              0F000F0F0F000F0F0F000F0F00000F0F0F000F0F0F000F0F0F000F0F0F000F0F
              0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F00000F0F0F000F0F
              0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F
              0F000F0F00000F0F0F000F0F0F000F0F0F000F0F0F000F00000000000000000F
              0F000F0F0F000F0F0F000F0F0F000F0F00000F0F0F000F0F0F000F0F0F000F0F
              0000000C0C000C0C0C000C0000000F0F0F000F0F0F000F0F0F000F0F00000F0F
              0F000F0F0F000F0F0F000F000C000C0C0C000C0C0C000C0C0C0000000F000F0F
              0F000F0F0F000F0F00000F0F0F000F0F0F000F0F0F00000C0C000C0C0C000C0C
              0C000C0C0C000C0C00000F0F0F000F0F0F000F0F00000F0F0F000F0F0F000F0F
              00000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000F0F0F00080808080808
              0808080808080800000000000000000808080808080808080808080000000808
              08080808080808080000000C0C0C0C0C0C0C0C00000008080808080808080800
              0000080808080808080808000C0C0C0C0C0C0C0C0C0C0C0C0C0C000008080808
              0808080000000808080808080800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              00080808080808000000080808080808000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C000808080804000000080808080800040C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C000804040C0000000808080800040C040C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0404040C0800000008080808000C040C040C
              0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C040C0C08000000080808000C04
              0C040C040C04000008080808080800000C0C0C0C0C0C0C0C0C08080000000808
              08040404040C040C040008080808080808080404040C0C0C0C0C0C0C0C080800
              0000080800040404040404040C0008080808080804040C0C0C0C0C0C0C0C0C0C
              0800080000000808000404040404040400080808080808080E0C0C0C0C0C0C0C
              0C0C0C0C08000800000008080004040808040404080808080808080808080808
              0C0C0C0C0C0C0C080500080000000808000404080D0808040008080808080808
              080808080808080C0C0C0C0805000800000008080004080D0D0D0D0808080808
              080808080808080808000508080C080505000800000008080004080D0D0D0D0D
              0D0D080808080808080808080800050505080805050008000000080800080D0D
              0D0D0D0D0D0D0D0D0D0808080808080808000505050505050500080000000808
              00080D0D0D0D0D0D0D0D0D0D0505080808080808000D050D0505050505000800
              00000808080D0D0D0D0D0D0D0D050505080808080808080800050D050D050D05
              0008080000000808080D0D0D0D0D0D0D0D0D000008080808080800000D0D050D
              050D050D00080800000008080D0D0D0D0D0D0D0D0D0D0D0D0000000000000D0D
              0D0D0D050D050D0008080800000008080D0D050D0D0D0D0D0D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D050D0500080808000000080D050505000D0D0D0D0D0D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D050008080808000000080508080808000D0D0D
              0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D000808080808000000080808080808
              0800000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00000808080808080000000808
              08080808080808000D0D0D0D0D0D0D0D0D0D0D0D0D0D00080808080808080800
              0000080808080808080808080000000D0D0D0D0D0D0D0D000000080808080808
              0808080000000808080808080808080808080800000000000000000808080808
              08080808080808000000}
            OnClick = SpeedButton2Click
          end
          object EditAssunto: TEdit
            Left = 1
            Top = 16
            Width = 408
            Height = 21
            Hint = 'Escvreva aqui o assunto'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object EditMensagem: TRichEdit
            Left = 1
            Top = 54
            Width = 408
            Height = 125
            Hint = 'Digite aqui a sua mensagem'
            HideScrollBars = False
            ParentShowHint = False
            ScrollBars = ssBoth
            ShowHint = True
            TabOrder = 1
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 287
            Width = 780
            Height = 145
            Align = alBottom
            BorderStyle = bsNone
            Color = clWhite
            DataSource = DSSQLGeraMail
            FixedColor = 10053171
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'MAILICOD'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MAILTREMETENTE'
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MAILTDESTINO'
                Width = 227
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MAILTASSUNTO'
                Width = 145
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MAILDDATA'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MAILCSTATUS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MAILTPATHANEXO'
                Width = 207
                Visible = True
              end>
          end
          object Panel4: TPanel
            Left = 0
            Top = 255
            Width = 780
            Height = 32
            Align = alBottom
            BevelOuter = bvLowered
            ParentColor = True
            TabOrder = 3
            object LabelEnviar: TLabel
              Left = 683
              Top = 1
              Width = 96
              Height = 30
              Align = alRight
              Caption = 'LabelEnviar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object LabelEnviado: TLabel
              Left = 1
              Top = 1
              Width = 202
              Height = 30
              Align = alLeft
              Caption = 'Mensagen(s) Enviada(s)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 223
            Width = 780
            Height = 32
            Align = alBottom
            BevelOuter = bvLowered
            ParentColor = True
            TabOrder = 4
            object ButtonAnexar: TSpeedButton
              Left = 729
              Top = 1
              Width = 29
              Height = 32
              Cursor = crHandPoint
              Hint = 'Anexar Arquivo'
              Flat = True
              Glyph.Data = {
                1E060000424D1E06000000000000360000002800000018000000150000000100
                180000000000E8050000CA0E0000C30E00000000000000000000BFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302F60302F7F7F
                7FCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302FFF9790
                FF979000FFFF60302F60302FCF67607F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302FFF
                9790FFC8CFFFC8CFFFC8CF00FFFFFFC8CF60302FCF6760CF6760CF67607F7F7F
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F6030
                2FFF9790FFC8CF00FFFFCFFFFFFFC8CFFFC8CFCFFFFFFFC8CFCF676060302FCF
                6760CF6760CF67607F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                7F7F7FCF6760FFC8CF00FFFFFFC8CFFFC8CF7F7F7F7F7F7FCFFFFFFFC8CFCFFF
                FFFFC8CF60302FFF0000CF6760CF6760CF67607F7F7F7F7F7FBFBFBFBFBFBFBF
                BFBFBFBFBF7F7F7FFF9790FFC8CF00FFFFCFFFFF7F7F7F7F7F7FFFC8CF00FFFF
                FFC8CF00FFFFFFC8CFCFFFFFCF67600000FFFF0000FF00007F7F7F7F7F7F7F7F
                7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF00FFFFFFC8CFFFC8CF7F7F7FFFC8CFCF
                FFFFFFC8CF7F7F7F7F7F7FCFFFFFCFFFFFFFC8CFCFFFFF60302F0000FFFF0000
                CF67607F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFFFFFF
                FFFFFFFF00FFFF7F7F7F7F7F7FCFFFFFCFFFFFCFFFFFFFC8CFCFFFFFFFC8CFCF
                6760FF97900000FFFF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFFFC8CFFFFFFFFFFFFF1F201F7F7F7FCFFFFFCFFFFF7F7F7F7F7F7FCFFF
                FFFFC8CFCFFFFFFFC8CF60302FFFC8CF0000FFFF0000BFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFC8CFCF6760CF67601F201F7F7F7F7F7F7F
                CFFFFFCFFFFFFFC8CFCFFFFFFFC8CFCFFFFFCF6760CFFFFFFF97900000FFFF00
                00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FFC8CFFF9790CF
                67601F201F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFC8CFFFFFFF60302F
                CFFFFFFF97900000FFCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FFC8
                CFFFC8CFFF9790FF9790CF67601F201F7F7F7FCFFFFFFFFFFFCFFFFFFFFFFFCF
                FFFFFFC8CFCF6760FFFFFFFFFFFFFF00000000FFCF6760BFBFBFBFBFBFBFBFBF
                CF6760FFC8CFFFC8CFFFC8CFFF9790FF9790FF9790CF67601F201F7F7F7FFFFF
                FFFFFFFFFFFFFFFFC8CFCFFFFFFFC8CFFFFFFFFFFFFFFFFFFFCF6760CF6760BF
                BFBFBFBFBFCF6760FFC8CFFFFFFFFFC8CFFFC8CFFF9790CF6760CF6760CF6760
                CF67601F201F7F7F7FFFFFFF3F3700CFFFFFCF6760FFFFFF0000FF0000FF0000
                FFCF6760BFBFBFBFBFBFBFBFBF60302F60302F60302FFFC8CFFFC8CFFF9790CF
                67601F201F1F201F1F201F1F201F1F201FFFFFFFFFFFFFFFC8CFFFFFFFFFFFFF
                FFFFFFFFC8CFCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFC8
                CFFFC8CFFF9790CF67601F201F60302F60302F60302F60302FFFC8CFFFC8CFFF
                FFFFFF0000FF0000CF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                FF9790FFC8CFFFC8CFFFFFFFFF9790CF67601F201F60302F0000FF0000FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFCF6760FFFFFFFFFFFFFFC8CFFF9790CF67601F201F60302F
                BFBFBFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FF9790FF9790FF9790FF9790CF
                67601F201F60302FBFBFBFBFBFBFFF0000FF0000BFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760CF6760CF67
                60CF6760CF67601F201F60302F7F7F7FFFC8CFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBF}
              ParentShowHint = False
              ShowHint = True
              OnClick = ButtonAnexarClick
            end
            object LabelAnexo: TLabel
              Left = 1
              Top = 1
              Width = 298
              Height = 30
              Align = alLeft
              Caption = 'Caminho/Nome do arquivo anexo...'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object ButtonLimparAnexo: TSpeedButton
              Left = 758
              Top = 1
              Width = 29
              Height = 32
              Cursor = crHandPoint
              Hint = 'Limpar Anexo'
              Flat = True
              Glyph.Data = {
                36080000424D3608000000000000360400002800000020000000200000000100
                08000000000000040000C30E0000C30E00000001000000000000000000004000
                00006000000080000000A0000000C0000000E0000000FF000000008000004080
                00006080000080800000A0800000C0800000E0800000FF80000000C0000040C0
                000060C0000080C00000A0C00000C0C00000E0C00000FFC0000000FF000040FF
                000060FF000080FF0000A0FF0000C0FF0000E0FF0000FFFF0000000040004000
                40006000400080004000A0004000C0004000E0004000FF004000008040004080
                40006080400080804000A0804000C0804000E0804000FF80400000C0400040C0
                400060C0400080C04000A0C04000C0C04000E0C04000FFC0400000FF400040FF
                400060FF400080FF4000A0FF4000C0FF4000E0FF4000FFFF4000000060004000
                60006000600080006000A0006000C0006000E0006000FF006000008060004080
                60006080600080806000A0806000C0806000E0806000FF80600000C0600040C0
                600060C0600080C06000A0C06000C0C06000E0C06000FFC0600000FF600040FF
                600060FF600080FF6000A0FF6000C0FF6000E0FF6000FFFF6000000080004000
                80006000800080008000A0008000C0008000E0008000FF008000008080004080
                80006080800080808000A0808000C0808000E0808000FF80800000C0800040C0
                800060C0800080C08000A0C08000C0C08000E0C08000FFC0800000FF800040FF
                800060FF800080FF8000A0FF8000C0FF8000E0FF8000FFFF80000000A0004000
                A0006000A0008000A000A000A000C000A000E000A000FF00A0000080A0004080
                A0006080A0008080A000A080A000C080A000E080A000FF80A00000C0A00040C0
                A00060C0A00080C0A000A0C0A000C0C0A000E0C0A000FFC0A00000FFA00040FF
                A00060FFA00080FFA000A0FFA000C0FFA000E0FFA000FFFFA0000000C0004000
                C0006000C0008000C000A000C000C000C000E000C000FF00C0000080C0004080
                C0006080C0008080C000A080C000C080C000E080C000FF80C00000C0C00040C0
                C00060C0C00080C0C000A0C0C000C0C0C000E0C0C000FFC0C00000FFC00040FF
                C00060FFC00080FFC000A0FFC000C0FFC000E0FFC000FFFFC0000000E0004000
                E0006000E0008000E000A000E000C000E000E000E000FF00E0000080E0004080
                E0006080E0008080E000A080E000C080E000E080E000FF80E00000C0E00040C0
                E00060C0E00080C0E000A0C0E000C0C0E000E0C0E000FFC0E00000FFE00040FF
                E00060FFE00080FFE000A0FFE000C0FFE000E0FFE000FFFFE0000000FF004000
                FF006000FF008000FF00A000FF00C000FF00E000FF00FF00FF000080FF004080
                FF006080FF008080FF00A080FF00C080FF00E080FF00FF80FF0000C0FF0040C0
                FF0060C0FF0080C0FF00A0C0FF00C0C0FF00E0C0FF00FFC0FF0000FFFF0040FF
                FF0060FFFF0080FFFF00A0FFFF00C0FFFF00E0FFFF00FFFFFF00B5B5B5B5B5B5
                B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5949494949494949494949494B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B50000000000000000000000949494B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B500808080808080808080008400949494B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B50080808080808080808000840094949494B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5008080808080808080800000848400949494B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5008080808080808080800084848400B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B50080808080808080808000000000848400B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B50080808080808080808000F8F80084848400B5B5B5B5B5B5B5B5B5B5B5B5
                B50080808080808080808000F8F8F80000000000B5B5B5B5B5B5B5B5B5B5B5B5
                B500000000000000000000000707F800B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B500F8F8F8F8F8F8F8F8F8F8F8F800B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B500F807070707070707070707F800B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B500F8F8F8F8F8F8F8F8F8F8F8F800B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B500F8070707F80000000000000000B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B500F8F8F800B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5000000B5B51F04040494B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B5B5B51F04040494B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B51F1F1F04040494949494B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B504040404040404040494B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B5B50404040404040494B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B5B5B5040404040494B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B5B5B5B504040494B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B5B5B5B5B504B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
                B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5}
              ParentShowHint = False
              ShowHint = True
              OnClick = ButtonLimparAnexoClick
            end
          end
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 788
      inherited PanelCabecalho: TPanel
        Width = 788
        inherited PanelNavigator: TPanel
          Width = 788
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 788
          end
        end
      end
    end
  end
  object SQLTemp: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select MAX(MAILICOD) from Email')
    Macros = <>
    Left = 288
    Top = 2
  end
  object OpenDialog: TOpenDialog
    Filter = 'Todos Arquivos *.*|*.*'
    InitialDir = 'C:\'
    Options = [ofHideReadOnly, ofShowHelp, ofFileMustExist, ofShareAware, ofNoNetworkButton, ofEnableSizing]
    Title = 'Anexar Arquivo'
    Left = 344
    Top = 2
  end
  object SQLConfigEmail: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ConfigEmail')
    Macros = <>
    Left = 372
    Top = 2
    object SQLConfigEmailCFEMA60REMETENTE: TStringField
      FieldName = 'CFEMA60REMETENTE'
      Origin = 'DB.CONFIGEMAIL.CFEMA60REMETENTE'
      FixedChar = True
      Size = 60
    end
    object SQLConfigEmailCFEMTMAILREMET: TStringField
      FieldName = 'CFEMTMAILREMET'
      Origin = 'DB.CONFIGEMAIL.CFEMTMAILREMET'
      FixedChar = True
      Size = 255
    end
    object SQLConfigEmailCFEMIPORTA: TIntegerField
      FieldName = 'CFEMIPORTA'
      Origin = 'DB.CONFIGEMAIL.CFEMIPORTA'
    end
    object SQLConfigEmailCFEMTUSUARIO: TStringField
      FieldName = 'CFEMTUSUARIO'
      Origin = 'DB.CONFIGEMAIL.CFEMTUSUARIO'
      FixedChar = True
      Size = 255
    end
    object SQLConfigEmailCFEMTHOST: TStringField
      FieldName = 'CFEMTHOST'
      Origin = 'DB.CONFIGEMAIL.CFEMTHOST'
      FixedChar = True
      Size = 255
    end
    object SQLConfigEmailCFEMA15SENHA: TStringField
      FieldName = 'CFEMA15SENHA'
      Origin = 'DB.CONFIGEMAIL.CFEMA15SENHA'
      FixedChar = True
      Size = 15
    end
    object SQLConfigEmailCFEMCAUTENTICA: TStringField
      FieldName = 'CFEMCAUTENTICA'
      Origin = 'DB.CONFIGEMAIL.CFEMCAUTENTICA'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLGeraMail: TDataSource
    AutoEdit = False
    DataSet = SQLGeraMail
    Left = 260
    Top = 2
  end
  object SQLGeraMail: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from EMAIL where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 232
    Top = 2
    object SQLGeraMailMAILICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MAILICOD'
      Origin = 'DB.EMAIL.MAILICOD'
    end
    object SQLGeraMailMAILTREMETENTE: TStringField
      DisplayLabel = 'Remetente'
      FieldName = 'MAILTREMETENTE'
      Origin = 'DB.MAIL.MAILTREMETENTE'
      FixedChar = True
      Size = 255
    end
    object SQLGeraMailMAILTDESTINO: TStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldName = 'MAILTDESTINO'
      Origin = 'DB.MAIL.MAILTDESTINO'
      FixedChar = True
      Size = 255
    end
    object SQLGeraMailMAILTASSUNTO: TStringField
      DisplayLabel = 'Assunto'
      FieldName = 'MAILTASSUNTO'
      Origin = 'DB.MAIL.MAILTASSUNTO'
      FixedChar = True
      Size = 255
    end
    object SQLGeraMailMAILTMENSAGEM: TMemoField
      DisplayLabel = 'Mensagem'
      FieldName = 'MAILTMENSAGEM'
      Origin = 'DB.MAIL.MAILTMENSAGEM'
      BlobType = ftMemo
      Size = 10000
    end
    object SQLGeraMailMAILDDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'MAILDDATA'
      Origin = 'DB.MAIL.MAILDDATA'
    end
    object SQLGeraMailMAILTPATHANEXO: TStringField
      DisplayLabel = 'Anexo'
      FieldName = 'MAILTPATHANEXO'
      Origin = 'DB.MAIL.MAILTPATHANEXO'
      FixedChar = True
      Size = 255
    end
    object SQLGeraMailMAILCSTATUS: TStringField
      DisplayLabel = 'Enviado'
      FieldName = 'MAILCSTATUS'
      Origin = 'DB.MAIL.MAILCSTATUS'
      FixedChar = True
      Size = 1
    end
  end
  object SMTPNew: TIdSMTP
    SASLMechanisms = <>
    Left = 466
    Top = 2
  end
  object IdMsgSend: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    ContentType = 'text/plain'
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 437
    Top = 2
  end
end
