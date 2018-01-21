object CAD_FluxoCaixa: TCAD_FluxoCaixa
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Fluxo de Caixa'
  ClientHeight = 518
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 68
    Top = 24
    Width = 42
    Height = 13
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label26: TLabel
    Left = 55
    Top = 51
    Width = 42
    Height = 13
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label27: TLabel
    Left = 55
    Top = 86
    Width = 42
    Height = 13
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CENTRO: TPageControl
    Left = 0
    Top = 20
    Width = 988
    Height = 498
    ActivePage = tab_5
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = PRINCIPAL.ImagensRosa
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    object tab_5: TTabSheet
      Caption = 'Filtros de Busca'
      ImageIndex = 77
      OnContextPopup = tab_5ContextPopup
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 980
        Height = 13
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 
          'FA'#199'A A SUA PESQUISA AQUI E VISUALIZE O RESULTADO NAS OUTRAS ABAS' +
          ' DESTE FORMUL'#193'RIO.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = -26
        ExplicitTop = 8
        ExplicitWidth = 1072
      end
      object GerarFiltro: TSpeedButton
        Left = 677
        Top = 430
        Width = 303
        Height = 33
        Cursor = crHandPoint
        BiDiMode = bdRightToLeft
        Caption = 'PROCESSAR FILTRO'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000000000000000000000010000000100005FCC830060CC
          85005CCB810059CA7E0054C87A0050C676004BC4720045C26B003FC069003ABE
          660038BE650036BD630034BB610031BA5D002EB859002CB7550029B6540025B5
          520024B4500021B34D0020B24B001FB1490020B0460022B0430020AF42001DAE
          41001CAE3F001AAD3E0018AD3C0017AD3B0016AC390015AB370013AA320012A9
          300012A92E0011A82C0010A52A0010A428000FA427000EA626000DA625000DA6
          24000CA623000BA620000AA61E0009A61B0007A5170006A3140005A2110004A1
          0F0003A10E0003A00D00039F0C00039F0C00039F0C00039E0C00039E0C00039E
          0C00039D0C00039D0C00039C0C00039B0C00039A0C0003980D0004950D000492
          0E0004900E00048E0D00048B0D0004860C0003800B00037A0A00037409000370
          0900046C090004690A00046709000465090003610800035D0700035907000355
          060003510500024A04000247040002420300013E0300013B0200013902000137
          02000137020001360200013702000237030003390400053D060009430B00114C
          13001C581F002B642D003B6F3E00447147004F735100557056005B6E5C00626C
          63006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
          7100727272007373730074747400757575007676760077777700787878007979
          79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
          8100828282008383830084848400858585008686860087878700888888008989
          89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
          9100929292009393930094949400959595009696960097979700989898009999
          99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
          A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A7ABA800A7AF
          AA00A7B3AC00A5B9AB00A0C1A9009CC7A70098CEA50095D2A30092D5A2008FD8
          A10090DAA20090DBA40093DCA50095DDA70097DEAA0099DFAD009BE0B0009DE1
          B3009FE1B500A1E2B700A7E4BC00AAE5BF00AEE6C100B0E7C200B3E8C400B6E9
          C600B8E9C700BAEAC800BBEACA00BCEBCB00BDEBCC00BFECCE00C1ECCF00C3ED
          CF00C5EDD100C7EED300C9EED500CDEFD700D1F1D900D3F1DB00D6F2DD00D8F3
          DF00DBF4E100DEF4E300E2F5E600E4F6E800E6F7EA00EBF8EE00F1FAF300F5FC
          F700F8FCF900FAFDFB00FBFDFC00FCFEFD00FDFEFD00FEFEFE00FEFEFE00FEFE
          FE00FDFEFD00FDFEFD00FDFEFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
          FE00FEFEFE00FEFDFE00FEFBFE00FEF2FE00FEDBFE00FEA4FE00FE4FFE00FE16
          FE00FE06FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FF00FF00FFFFFFFFFFFF
          FFFF5B5B5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFF535B453E35323235
          3F465B5BFFFFFFFFFFFFFFFFFFFF53534332323535353535353232455B5BFFFF
          FFFFFFFFFF4B4B2F3137373737373737373737323B4F5BFFFFFFFFFF4B4B2C2E
          2F31313137373737373737373535515BFFFFFFFF4B23282C313131312C17D7E7
          B137373737323E5BFFFFFF4B2420232327272D222A00E7E7E7B1373737373247
          5BFFFF4B191F201E1C1C1D202217CBDDE7E7B137373735375BFF3721141C1C1C
          1F1A1A1C202217BDD5E7E7B1373737324A5B371B131515151012171A1A202217
          00E7E7E706373732455B3714111414BCC9C8C6C5C4C3C3C2D1E7E7E7E7073737
          3E5B370D0B1212E7E7E7E7E7E7E7E7E7E7E7E7E7E7E73737355B3708061111D8
          E7E7E7E7E7E7E7D8D1E7E7E7E7C93737375B3706010B0B050100020304050708
          B2E7E7E7C1223735415B3709B3040A0A0A0B0C0D0F100FBDE7E7E7B7222A3732
          465B3716B3B30B0A0A0A0B0C0D07D1E7E7E7B5282B2E30314E5BFF3701BE010D
          0A0A0A0B0CB3E7E7E7B72023282C2E3F5BFFFF370EBBC1010A0A0A0A0B00E7E7
          011D1E20272A2C4A5BFFFFFF3703C4C5B10A0A0A0A0A0B0D0E161D1F22234353
          FFFFFFFF372401C4CDB801090E111212111113191D254B53FFFFFFFFFF372503
          BCCDC8BBB101020303050A12244B4BFFFFFFFFFFFFFF37370F01BAC1C1BEBBB3
          010410264B4BFFFFFFFFFFFFFFFFFFFF3737180B0504050915254B4BFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF3737373737373737FFFFFFFFFFFFFFFF}
        ParentFont = False
        ParentBiDiMode = False
        OnClick = GerarFiltroClick
      end
      object GroupBox19: TGroupBox
        Left = 3
        Top = 13
        Width = 220
        Height = 304
        Caption = ' Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object ListCategoria: TListView
          Left = 2
          Top = 15
          Width = 216
          Height = 262
          Align = alTop
          Checkboxes = True
          Columns = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FlatScrollBars = True
          GridLines = True
          HideSelection = False
          HotTrackStyles = [htHandPoint]
          IconOptions.AutoArrange = True
          MultiSelect = True
          ParentFont = False
          ShowColumnHeaders = False
          TabOrder = 0
          ViewStyle = vsList
        end
        object chkcategoria: TCheckBox
          Left = 3
          Top = 281
          Width = 97
          Height = 21
          Caption = 'Todos'
          TabOrder = 1
          OnClick = chkcategoriaClick
        end
      end
      object GroupBox20: TGroupBox
        Left = 227
        Top = 13
        Width = 220
        Height = 304
        Caption = ' Grupos '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object ListGrupo: TListView
          Left = 2
          Top = 15
          Width = 216
          Height = 262
          Align = alTop
          Checkboxes = True
          Columns = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FlatScrollBars = True
          HideSelection = False
          HotTrackStyles = [htHandPoint]
          IconOptions.AutoArrange = True
          MultiSelect = True
          ParentFont = False
          ShowColumnHeaders = False
          TabOrder = 0
          ViewStyle = vsList
        end
        object chkgrupo: TCheckBox
          Left = 3
          Top = 283
          Width = 97
          Height = 17
          Caption = 'Todos'
          TabOrder = 1
          OnClick = chkgrupoClick
        end
      end
      object GroupBox21: TGroupBox
        Left = 451
        Top = 13
        Width = 220
        Height = 450
        Caption = ' Sub Grupos '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object listsubgrupo: TListView
          Left = 2
          Top = 15
          Width = 216
          Height = 409
          Align = alTop
          Checkboxes = True
          Columns = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FlatScrollBars = True
          HideSelection = False
          HotTrackStyles = [htHandPoint]
          IconOptions.AutoArrange = True
          ParentFont = False
          ShowColumnHeaders = False
          TabOrder = 0
          ViewStyle = vsList
        end
        object chksubgrupo: TCheckBox
          Left = 3
          Top = 426
          Width = 97
          Height = 21
          Caption = 'Todos'
          TabOrder = 1
          OnClick = chksubgrupoClick
        end
      end
      object GroupBox22: TGroupBox
        Left = 677
        Top = 13
        Width = 303
        Height = 57
        Caption = ' Per'#237'odo '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label9: TLabel
          Left = 30
          Top = 21
          Width = 37
          Height = 13
          Caption = 'Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 160
          Top = 21
          Width = 29
          Height = 13
          Caption = 'Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object data_ini: TDateTimePicker
          Left = 69
          Top = 17
          Width = 85
          Height = 21
          Cursor = crHandPoint
          Date = 39065.450619930550000000
          Time = 39065.450619930550000000
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParseInput = True
          ParentFont = False
          TabOrder = 0
          OnCloseUp = data_iniCloseUp
          OnKeyDown = data_iniKeyDown
        end
        object data_fim: TDateTimePicker
          Left = 192
          Top = 17
          Width = 85
          Height = 21
          Cursor = crHandPoint
          Date = 39065.450619930550000000
          Time = 39065.450619930550000000
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParseInput = True
          ParentFont = False
          TabOrder = 1
          OnCloseUp = data_fimCloseUp
          OnKeyDown = data_fimKeyDown
        end
        object RadioVencimento: TRadioButton
          Left = 87
          Top = 40
          Width = 91
          Height = 15
          Caption = 'Vencimento'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
        object RadioPagamento: TRadioButton
          Left = 192
          Top = 40
          Width = 87
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = 'Pagamento'
          ParentBiDiMode = False
          TabOrder = 3
        end
        object CheckTudo: TCheckBox
          Left = 26
          Top = 40
          Width = 55
          Height = 14
          BiDiMode = bdLeftToRight
          Caption = 'Tudo.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 4
          OnClick = CheckTudoClick
        end
      end
      object RFiltros: TGroupBox
        Left = 677
        Top = 168
        Width = 303
        Height = 251
        Caption = 'Outros Filtros'
        TabOrder = 4
        object PageControl1: TPageControl
          Left = 2
          Top = 15
          Width = 299
          Height = 234
          ActivePage = TabProprietario
          Align = alClient
          TabOrder = 0
          object TabProprietario: TTabSheet
            Caption = 'Pessoa'
            object EditNomePessoa: TEdit
              Left = 3
              Top = 17
              Width = 256
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              Text = 'NOME DA PESSOA'
              OnKeyDown = EditNomePessoaKeyDown
            end
            object BitBtnBuscaPessoa: TBitBtn
              Left = 265
              Top = 17
              Width = 25
              Height = 21
              TabOrder = 1
              OnClick = BitBtnBuscaPessoaClick
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000010000000000000101
                0100020202000303030004040400050505000606060007070700080808000909
                09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
                1100121212001313130014141400151515001616160017171700181818001919
                19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002E2B
                2800453B3100644F3B007D5F4400926E4C00AB815A00C6986C00D7A67800DFAE
                7F00E5B48600E9B88A00EBBB8D00EDBE9100EFC09400F0C39700F2C49800F1C3
                9600F1C29500F1C19300F0BD8C00EFB88500EEB37D00EDB07700ECAC7200EBA9
                6C00EAA56600E8A05F00E69D5B00E49A5800E3975400E1944F00DF8F4900DD89
                4100DB853C00D8803700D67C3200D4782D00D3752A00CF6E2100CC661700CA62
                1200C65D0E00C55A0B00C4580A00C2560800C2540700C2530600C2510500C250
                0300C24F0200C14E0200BE4D0100BC4B0100BB4A0000BB4A0000BA490000B948
                0000B8480000B5480200B1480300AE460400A9440400A4430500A04106009C40
                07009B3F0700993E0700963D0800923B09008E3909008B380A0088370B008536
                0C0080340D00773010006F2D1200692A130064281500612716005C2517005823
                18005522190053211A0054221A0056231A0059251A005D281B00612C1E006635
                26006B4031006F4D410074615B007A7776007E7E7E007F7F7F00808080008181
                8100828282008383830084848400858585008686860087878700888888008989
                89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
                9100929292009393930094949400959595009696960097979700989898009999
                99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
                A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
                A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
                B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
                B900BABABA00BEBCBA00C2BFBB00C9C3BD00CEC6BE00D5CAC000DBCEC200E0D2
                C400E5D5C600E9D7C700ECD9C600EDDAC800EEDCCA00F1DECB00F3E0CE00F5E2
                D100F6E5D300F8E6D500F9E8D700FAE9D900FAEADA00FAEBDB00FAECDD00FAEC
                DE00FAEEE100FAEEE200FBEFE300FBF0E500FBF1E700FCF2E800FCF3E900FCF4
                EB00FCF5EE00FDF7F200FDF9F500FEFAF600FEFBF800FEFBF900FEFCFB00FEFD
                FC00FEFDFC00FEFEFD00FEFEFE00FEFEFE00FEFEFE00FEFEFD00FEFCFD00FEFA
                FD00FEF3FC00FEE7FC00FED8FC00FEC3FB00FEABFB00FE8EFB00FE6AFC00FE41
                FD00FE1DFD00FE04FE00FE02FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FAFAFAFAFA73
                736D6D7373FAFAFAFAFAFAFAFA756E635C57555B626D73FAFAFAFAFA6F655151
                5459545453516573FAFAFA6D6352594F29475A575555516573FAFA6A53545850
                C6D3465A575555516DFA655D4D4C4C4BC4E6D83F595955536073624B48484847
                C4E6E6E6295559545B73604745464545C7E6E6E6E6C44C5855735F413C414141
                C9E6E6E6E62D4F575571613F333C3E3DCAE6E6E53A5959545B736044C433393A
                CDE6D43E535855536273FA5C33CE3039D2CE41494B5557516EFAFA5F45C6D030
                303F47484B51516775FAFAFA604530CEC534393D4349666EFAFAFAFAFA5F5C41
                292C29404A6A6FFAFAFAFAFAFAFAFA616060656467FAFAFAFAFA}
              Spacing = 0
            end
            object DBGrid1: TDBGrid
              Left = 0
              Top = 40
              Width = 291
              Height = 166
              Cursor = crHandPoint
              Align = alBottom
              BorderStyle = bsNone
              Color = cl3DLight
              DataSource = DS_FiltroPessoa
              Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ID_PESSOA'
                  Title.Caption = 'C'#243'digo'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME'
                  Title.Caption = 'Nome'
                  Width = 240
                  Visible = True
                end>
            end
            object CheckPessoa: TCheckBox
              Left = 3
              Top = -1
              Width = 95
              Height = 17
              BiDiMode = bdLeftToRight
              Caption = 'Usar o Filtro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 3
            end
          end
          object TabImovel: TTabSheet
            Caption = 'Im'#243'veis'
            ImageIndex = 1
            object EditNomeImovel: TEdit
              Left = 3
              Top = 23
              Width = 261
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              Text = 'DADOS DO IM'#211'VEL'
              OnKeyDown = EditNomeImovelKeyDown
            end
            object BitBtnBuscaImovel: TBitBtn
              Left = 270
              Top = 23
              Width = 21
              Height = 21
              TabOrder = 1
              OnClick = BitBtnBuscaImovelClick
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000010000000000000101
                0100020202000303030004040400050505000606060007070700080808000909
                09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
                1100121212001313130014141400151515001616160017171700181818001919
                19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002E2B
                2800453B3100644F3B007D5F4400926E4C00AB815A00C6986C00D7A67800DFAE
                7F00E5B48600E9B88A00EBBB8D00EDBE9100EFC09400F0C39700F2C49800F1C3
                9600F1C29500F1C19300F0BD8C00EFB88500EEB37D00EDB07700ECAC7200EBA9
                6C00EAA56600E8A05F00E69D5B00E49A5800E3975400E1944F00DF8F4900DD89
                4100DB853C00D8803700D67C3200D4782D00D3752A00CF6E2100CC661700CA62
                1200C65D0E00C55A0B00C4580A00C2560800C2540700C2530600C2510500C250
                0300C24F0200C14E0200BE4D0100BC4B0100BB4A0000BB4A0000BA490000B948
                0000B8480000B5480200B1480300AE460400A9440400A4430500A04106009C40
                07009B3F0700993E0700963D0800923B09008E3909008B380A0088370B008536
                0C0080340D00773010006F2D1200692A130064281500612716005C2517005823
                18005522190053211A0054221A0056231A0059251A005D281B00612C1E006635
                26006B4031006F4D410074615B007A7776007E7E7E007F7F7F00808080008181
                8100828282008383830084848400858585008686860087878700888888008989
                89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
                9100929292009393930094949400959595009696960097979700989898009999
                99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
                A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
                A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
                B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
                B900BABABA00BEBCBA00C2BFBB00C9C3BD00CEC6BE00D5CAC000DBCEC200E0D2
                C400E5D5C600E9D7C700ECD9C600EDDAC800EEDCCA00F1DECB00F3E0CE00F5E2
                D100F6E5D300F8E6D500F9E8D700FAE9D900FAEADA00FAEBDB00FAECDD00FAEC
                DE00FAEEE100FAEEE200FBEFE300FBF0E500FBF1E700FCF2E800FCF3E900FCF4
                EB00FCF5EE00FDF7F200FDF9F500FEFAF600FEFBF800FEFBF900FEFCFB00FEFD
                FC00FEFDFC00FEFEFD00FEFEFE00FEFEFE00FEFEFE00FEFEFD00FEFCFD00FEFA
                FD00FEF3FC00FEE7FC00FED8FC00FEC3FB00FEABFB00FE8EFB00FE6AFC00FE41
                FD00FE1DFD00FE04FE00FE02FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FAFAFAFAFA73
                736D6D7373FAFAFAFAFAFAFAFA756E635C57555B626D73FAFAFAFAFA6F655151
                5459545453516573FAFAFA6D6352594F29475A575555516573FAFA6A53545850
                C6D3465A575555516DFA655D4D4C4C4BC4E6D83F595955536073624B48484847
                C4E6E6E6295559545B73604745464545C7E6E6E6E6C44C5855735F413C414141
                C9E6E6E6E62D4F575571613F333C3E3DCAE6E6E53A5959545B736044C433393A
                CDE6D43E535855536273FA5C33CE3039D2CE41494B5557516EFAFA5F45C6D030
                303F47484B51516775FAFAFA604530CEC534393D4349666EFAFAFAFAFA5F5C41
                292C29404A6A6FFAFAFAFAFAFAFAFA616060656467FAFAFAFAFA}
              Spacing = 0
            end
            object DBGrid2: TDBGrid
              Left = 0
              Top = 107
              Width = 291
              Height = 99
              Cursor = crHandPoint
              Align = alBottom
              BorderStyle = bsNone
              Color = cl3DLight
              DataSource = DS_FiltroImovel
              Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ID_IMOVEL'
                  Title.Caption = 'C'#243'digo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'RUA'
                  Title.Caption = 'Logradouro'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NUMERO'
                  Title.Caption = 'N'#250'mero'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COMPLEMENTO'
                  Title.Caption = 'Complemento'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_ALUQUEL'
                  Title.Caption = 'Aluguel'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BAIRRO'
                  Title.Caption = 'Bairro'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CIDADE'
                  Title.Caption = 'Cidade'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PESSOA'
                  Title.Caption = 'Propriet'#225'rio'
                  Width = 100
                  Visible = True
                end>
            end
            object CheckImoveis: TCheckBox
              Left = 193
              Top = 0
              Width = 98
              Height = 17
              BiDiMode = bdRightToLeft
              Caption = 'Usar o Filtro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 3
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Usu'#225'rios'
            ImageIndex = 2
            OnShow = TabSheet3Show
            object CheckUsuarios: TCheckBox
              Left = 196
              Top = 0
              Width = 95
              Height = 17
              BiDiMode = bdRightToLeft
              Caption = 'Usar o Filtro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 0
            end
            object EditNomeUsuario: TComboBox
              Left = 3
              Top = 23
              Width = 288
              Height = 22
              Style = csOwnerDrawFixed
              ItemHeight = 16
              TabOrder = 1
            end
          end
          object TabSaldos: TTabSheet
            Caption = 'Saldos'
            ImageIndex = 3
            OnHide = TabSaldosHide
            OnShow = TabSaldosShow
            object DBGrid3: TDBGrid
              Left = 0
              Top = 0
              Width = 291
              Height = 206
              Cursor = crHandPoint
              Hint = 'Leia as orienta'#231#245'es no rodap'#233' do sistema!'
              Align = alClient
              BorderStyle = bsNone
              Color = cl3DLight
              DataSource = DS_Saldos
              Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnMouseMove = DBGrid3MouseMove
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NOME'
                  Title.Caption = 'Operador'
                  Width = 70
                  Visible = True
                end
                item
                  Color = clMoneyGreen
                  Expanded = False
                  FieldName = 'CAIXAENTRADA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Entrada'
                  Width = 80
                  Visible = True
                end
                item
                  Color = clSkyBlue
                  Expanded = False
                  FieldName = 'CAIXASAIDA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Sa'#237'da'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SALDO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Saldo'
                  Width = 80
                  Visible = True
                end>
            end
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 319
        Width = 447
        Height = 144
        Caption = 'Status '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object chkstatus: TCheckBox
          Left = 3
          Top = 122
          Width = 97
          Height = 17
          Caption = 'Todos'
          TabOrder = 0
          OnClick = chkstatusClick
        end
        object listStatus: TListView
          Left = 2
          Top = 15
          Width = 443
          Height = 106
          Align = alTop
          Checkboxes = True
          Columns = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FlatScrollBars = True
          HideSelection = False
          HotTrackStyles = [htHandPoint]
          IconOptions.AutoArrange = True
          MultiSelect = True
          ParentFont = False
          ShowColumnHeaders = False
          TabOrder = 1
          ViewStyle = vsList
        end
      end
      object GroupBox9: TGroupBox
        Left = 677
        Top = 73
        Width = 303
        Height = 95
        Caption = 'Tipos de Contas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object CheckContasBoletos: TCheckBox
          Left = 6
          Top = 32
          Width = 136
          Height = 15
          Cursor = crHandPoint
          Hint = 'Contas aos quais foram ou n'#227'o foram geradas boletos.'
          AllowGrayed = True
          BiDiMode = bdLeftToRight
          Caption = 'Com ou Sem Boletos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          State = cbGrayed
          TabOrder = 0
          OnClick = CheckContasBoletosClick
          OnMouseMove = CheckContasBoletosMouseMove
        end
        object CheckContasGarantidos: TCheckBox
          Left = 153
          Top = 16
          Width = 147
          Height = 15
          Cursor = crHandPoint
          Hint = 'Contas marcadas como Garantidas ou n'#227'o.'
          AllowGrayed = True
          BiDiMode = bdLeftToRight
          Caption = 'Garantidas ou N'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          State = cbGrayed
          TabOrder = 1
          OnClick = CheckContasGarantidosClick
          OnMouseMove = CheckContasGarantidosMouseMove
        end
        object CheckContasPagas: TCheckBox
          Left = 6
          Top = 16
          Width = 136
          Height = 15
          Cursor = crHandPoint
          Hint = 'Contas pagas, n'#227'o pagas ou todas as contas.'
          AllowGrayed = True
          BiDiMode = bdLeftToRight
          Caption = 'Contas Pagas'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 2
          OnClick = CheckContasPagasClick
          OnMouseMove = CheckContasPagasMouseMove
        end
        object CheckContasPendentes: TCheckBox
          Left = 6
          Top = 48
          Width = 147
          Height = 15
          Cursor = crHandPoint
          Hint = 'Contas marcadas como pendentes ou n'#227'o pelo usu'#225'rio.'
          AllowGrayed = True
          BiDiMode = bdLeftToRight
          Caption = 'Contas n'#227'o Pendentes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = CheckContasPendentesClick
          OnMouseMove = CheckContasPendentesMouseMove
        end
        object CheckContasContratos: TCheckBox
          Left = 153
          Top = 48
          Width = 147
          Height = 15
          Cursor = crHandPoint
          Hint = 'Contas com Contratos ou n'#227'o. '
          AllowGrayed = True
          BiDiMode = bdLeftToRight
          Caption = 'Com ou sem Contratos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          State = cbGrayed
          TabOrder = 4
          OnClick = CheckContasContratosClick
          OnMouseMove = CheckContasContratosMouseMove
        end
        object CheckContasImoveis: TCheckBox
          Left = 153
          Top = 32
          Width = 147
          Height = 15
          Cursor = crHandPoint
          Hint = 'Contas com ou sem im'#243'veis'
          AllowGrayed = True
          BiDiMode = bdLeftToRight
          Caption = 'Com ou sem Im'#243'veis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          State = cbGrayed
          TabOrder = 5
          OnClick = CheckContasImoveisClick
          OnMouseMove = CheckContasImoveisMouseMove
        end
        object CheckContasContratosAtivos: TCheckBox
          Left = 153
          Top = 64
          Width = 147
          Height = 15
          Cursor = crHandPoint
          Hint = 'Contas com contratos ativos ou desativados'
          AllowGrayed = True
          BiDiMode = bdLeftToRight
          Caption = 'Todos os Contratos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          State = cbGrayed
          TabOrder = 6
          OnClick = CheckContasContratosAtivosClick
          OnMouseMove = CheckContasImoveisMouseMove
        end
        object CheckContasProprietarios: TCheckBox
          Left = 6
          Top = 64
          Width = 147
          Height = 15
          Cursor = crHandPoint
          Hint = 'Contas espec'#237'ficas de propriet'#225'rios ou de inquilinos'
          AllowGrayed = True
          BiDiMode = bdLeftToRight
          Caption = 'Locat'#225'rio e Locador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          State = cbGrayed
          TabOrder = 7
          OnClick = CheckContasProprietariosClick
        end
        object CheckContasContratosMarcados: TCheckBox
          Left = 153
          Top = 79
          Width = 147
          Height = 15
          Cursor = crHandPoint
          Hint = 'Contratos marcados ou sem marca'#231#227'o do Le'#227'o - DIMOB'
          AllowGrayed = True
          BiDiMode = bdLeftToRight
          Caption = 'Contrato C/S Marca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          State = cbGrayed
          TabOrder = 8
          OnClick = CheckContasContratosMarcadosClick
          OnMouseMove = CheckContasContratosMarcadosMouseMove
        end
        object CheckContasDeposito: TCheckBox
          Left = 6
          Top = 79
          Width = 147
          Height = 15
          Cursor = crHandPoint
          Hint = 'Contratos COM OU SEM dep'#243'sito'
          AllowGrayed = True
          BiDiMode = bdLeftToRight
          Caption = 'Contrato C/S Dep'#243'sito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          State = cbGrayed
          TabOrder = 9
          OnClick = CheckContasDepositoClick
          OnMouseMove = CheckContasContratosMarcadosMouseMove
        end
      end
    end
    object TabInformacao: TTabSheet
      Caption = 'Informa'#231#245'es'
      ImageIndex = 62
      object GroupBox24: TGroupBox
        Left = 109
        Top = 54
        Width = 180
        Height = 112
        Caption = 'Contas Pagas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label18: TLabel
          Left = 9
          Top = 24
          Width = 53
          Height = 13
          Caption = 'Entradas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 9
          Top = 51
          Width = 40
          Height = 13
          Caption = 'Sa'#237'das:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 9
          Top = 84
          Width = 40
          Height = 16
          Caption = 'Saldo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbEntEfetuadas: TLabel
          Left = 68
          Top = 24
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbSaiEfeuadas: TLabel
          Left = 55
          Top = 51
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SaldoEfetuadas: TLabel
          Left = 55
          Top = 86
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbEntEfetuadasNormal: TLabel
          Left = 68
          Top = 36
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object lbSaiEfeuadasNormal: TLabel
          Left = 55
          Top = 63
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object SaldoEfetuadasNormal: TLabel
          Left = 55
          Top = 98
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Panel2: TPanel
          Left = 2
          Top = 71
          Width = 176
          Height = 2
          Caption = 'Panel2'
          TabOrder = 0
        end
      end
      object GroupBox25: TGroupBox
        Left = 481
        Top = 54
        Width = 180
        Height = 112
        Caption = 'Contas Previstas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label20: TLabel
          Left = 9
          Top = 24
          Width = 53
          Height = 13
          Caption = 'Entradas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 9
          Top = 51
          Width = 40
          Height = 13
          Caption = 'Sa'#237'das:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbEntEsperadas: TLabel
          Left = 68
          Top = 24
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbSaiEsperadas: TLabel
          Left = 55
          Top = 51
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SaldoPrevista: TLabel
          Left = 55
          Top = 86
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 9
          Top = 84
          Width = 40
          Height = 16
          Caption = 'Saldo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbEntEsperadasNormal: TLabel
          Left = 68
          Top = 36
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object lbSaiEsperadasNormal: TLabel
          Left = 55
          Top = 63
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object SaldoPrevistaNormal: TLabel
          Left = 55
          Top = 98
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Panel4: TPanel
          Left = 2
          Top = 71
          Width = 176
          Height = 2
          Caption = 'Panel2'
          TabOrder = 0
        end
      end
      object GroupBox26: TGroupBox
        Left = 295
        Top = 54
        Width = 180
        Height = 112
        Caption = 'Contas N'#227'o Pagas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label22: TLabel
          Left = 9
          Top = 24
          Width = 53
          Height = 13
          Caption = 'Entradas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 9
          Top = 51
          Width = 40
          Height = 13
          Caption = 'Sa'#237'das:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbEntDiferenca: TLabel
          Left = 68
          Top = 24
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbSaiDiferenca: TLabel
          Left = 55
          Top = 51
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SaldonNaoEfetuadas: TLabel
          Left = 55
          Top = 86
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 9
          Top = 84
          Width = 40
          Height = 16
          Caption = 'Saldo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbEntDiferencaNormal: TLabel
          Left = 68
          Top = 36
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object lbSaiDiferencaNormal: TLabel
          Left = 55
          Top = 63
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object SaldonNaoEfetuadasNormal: TLabel
          Left = 55
          Top = 98
          Width = 42
          Height = 13
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Panel5: TPanel
          Left = 2
          Top = 71
          Width = 176
          Height = 2
          Caption = 'Panel2'
          TabOrder = 0
        end
      end
      object GroupBox27: TGroupBox
        Left = 0
        Top = 0
        Width = 980
        Height = 48
        Align = alTop
        TabOrder = 3
        object Label25: TLabel
          Left = 9
          Top = 15
          Width = 174
          Height = 19
          Caption = 'Per'#237'odo Relacionado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbPeriodo: TLabel
          Left = 189
          Top = 15
          Width = 233
          Height = 19
          Caption = '00/00/0000 at'#233' 00/00/0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbTotais: TLabel
          Left = 449
          Top = 15
          Width = 135
          Height = 19
          Caption = 'Total de Contas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object SelecaoImpressao: TListBox
        Left = 665
        Top = 48
        Width = 315
        Height = 418
        Cursor = crHandPoint
        Align = alRight
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        Color = cl3DLight
        ExtendedSelect = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          'RELAT'#211'RIOS'
          ''
          '- CONTAS INDIVIDUAIS'
          '    - Caixa Simplificado do Dia'
          '    - Caixa do Dia por Usu'#225'rio'
          '    - Recibo Simples do Propriet'#225'rio'
          '    - Recibo Geral do Propriet'#225'rio'
          '    - Resumido'
          '    - Super Resumido'
          '    - Contas Estornadas'
          ''
          '- VALORES ENVOLVIDOS'
          '    - Entrada'
          '    - Sa'#237'da'
          '    - Contas Recebidas sem Repasse'
          '    - Contas Repassadas sem Recebimento'
          ''
          '- AGRUPAMENTOS'
          '   - Total dos Caixas'
          '   - Total das Categorias'
          '   - Total das Categorias com Contas'
          '   - Total dos Grupos'
          '   - Grupo do Caixa Entrada'
          '   - Grupo do Caixa Sa'#237'da'
          '   - Subgrupo do Caixa Entrada'
          '   - Subgrupo do Caixa Sa'#237'da'
          '   - Agrupar Valores por Pessoas do Caixa Sa'#237'da'
          ''
          '- MOVIMENTA'#199#195'O FINANCEIRA'
          '    - Fluxo de Caixa'
          '    - Valores L'#237'quidos de Repasses'
          '    - Previs'#227'o do Propriet'#225'rio'
          '    - Contas de Propriet'#225'rio'
          '    - Contas sem Repasse'
          '    - Cobran'#231'as'
          ''
          '- CONTAS SUSPEITAS')
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 4
        OnDblClick = SelecaoImpressaoDblClick
      end
      object ChartFluxo: TChart
        Left = 0
        Top = 169
        Width = 666
        Height = 294
        AnimatedZoom = True
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        LeftWall.Brush.Color = clWhite
        LeftWall.Brush.Style = bsClear
        LeftWall.Color = clSilver
        MarginBottom = 0
        MarginLeft = 0
        MarginRight = 1
        MarginTop = 0
        PrintProportional = False
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          'Fluxo de Caixa (Saldo di'#225'rio de vencimentos conforme filtro)')
        DepthAxis.Automatic = False
        DepthAxis.AutomaticMaximum = False
        DepthAxis.AutomaticMinimum = False
        DepthAxis.Maximum = 0.500000000000000000
        DepthAxis.Minimum = -0.500000000000000000
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 411.120000000000000000
        LeftAxis.Minimum = 107.120000000000000000
        Legend.Visible = False
        RightAxis.Automatic = False
        RightAxis.AutomaticMaximum = False
        RightAxis.AutomaticMinimum = False
        Align = alCustom
        BevelOuter = bvNone
        TabOrder = 5
        object Series2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          SeriesColor = clSilver
          Title = 'Saldo'
          Pointer.Draw3D = False
          Pointer.HorizSize = 1
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 1
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object btnValoresNormais: TBitBtn
        Left = 0
        Top = 54
        Width = 103
        Height = 35
        Cursor = crHandPoint
        Hint = 'Mostrar valores normais nos quadros a direita.'
        Caption = 'Valores Normais'
        TabOrder = 6
        OnClick = btnValoresNormaisClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000000000000101
          0100020202000303030004040400050505000606060007070700080808000909
          09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
          1100121212001313130014141400151515001616160017171700181818001919
          19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
          2100222222002323230024242400252525002626260027272700282828002929
          29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
          3100323232003333330034343400353535003636360037373700383838003939
          39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
          4100424242004343430044444400454545004646460047474700484848004949
          49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
          5100525252005353530054545400555555005656560057575700585858005959
          59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
          6100626262006363630064646400656565006666660067676700686868006969
          69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
          7100727272007373730074747400757575007676760077777700787878007979
          79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
          8100828282008383830084848400858585008686860087878700888888008989
          89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F0096879600AF69
          AF00D23BD200EB1AEB00F908F900FD02FD00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE0BF700FE17EE00FE22E600FE2DDF00FE37D800FE41
          D100FE4BCB00FC58BD00FB69AD00F6799500F3898300F2937800F1997100EF9C
          6800EC9B5F00E9985700E7985200E6964E00E5944B00E4914700E18C4100DF87
          3C00DC823700D87B2F00D5752900D06D2100CA641800C3580C00BF510600BE4F
          0400BD4E0200BD4D0200BC4C0100BC4C0000BC4C0000BA4A0000B6470100AF42
          0100A73C02009D350200922E03008A2804008525040085240400842404008424
          0400842304008323040083230400832304008323040083230400B0B0B0B0B0B0
          B0B0B0B0B0B0B0B0B0B0B0B0B0B0EDB0B0B0F8F8F8F8F8B0B0B0B0B0B0B0EDED
          EDE9F8D7E0E5F8B0B0B0B0B0B0B0EDB0B0B0FCF8FAFCF8B0B0B0B0B0B0B0EDB0
          B0B0B0B0B0B0B0B0B0B0B0B0B0B0EDB0B0B0F8F8F8F8F8B0B0B0B0B0B0B0EDED
          EDEDF8D7E0E5F8B0B0B0B0B0B0B0EDB0B0B0FCF8FAFCF8B0B0B0B0B0B0B0EDB0
          B0B0B0B0B0B0B0B0B0B0B0B0B0B0EDB0B0B0F8F8F8F8F8B0B0B0B0B0B0B0EDED
          EDEDF8D7E0E5F8B0B0B0B0B0B0B0EDB0B0B0FCF8FAFCF8B0B0B0B0B0F8F8F8F8
          F8B0B0B0B0B0B0B0B0B0B0B0F8D7E0E5F8B0B0B0B0B0B0B0B0B0B0B0FCF8FAFC
          F8B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0}
        Layout = blGlyphTop
        Spacing = 0
      end
      object BtnValoresCalculados: TBitBtn
        Left = 0
        Top = 95
        Width = 103
        Height = 35
        Cursor = crHandPoint
        Hint = 'Mostrar valores com Juros e Multa nos quadros a direita.'
        Caption = 'Valores Calculados'
        TabOrder = 7
        OnClick = BtnValoresCalculadosClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          080000000000000100000000000000000000000100000001000089370000983D
          0000A2410000AA440000AF460000B4480000B74A0000BA4B0100BB4D0200BE51
          0600C0560A00C45B0F00C8611600CD691C00D1712500D77A2E00DA7F3300DC82
          3600DD843700DC823600DA803400D77C3100D3772E00D0732A00CC6D2600C767
          2100C15F1B00BA561500B24B0C00A9400400A63C0300A2390200A1380200A037
          02009E3602009C3402009933020096300300932E0300912D03008E2B03008C29
          04008A2804008826040086250400832304008323040083230400832304008323
          0400832304008323040083230400832304008323040083230400832304008323
          0400832304008323040083240500812605007C290600723109005F3F0C004C4C
          0F00395A13002C63150027671500226915001E6A13001C6A12001B6911001B6A
          11001B6B12001A6D13001A6E140019701500197116001A7217001A7217001B71
          18001C7019001D701A001F6F1C00216F1F00236F2100256F2500296E28002D6E
          2D00306C3100356B35003A6939003F673F0043674300476646004B664B005065
          4F00546554005A6559005F655F00656565006666660067676700686868006969
          69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
          7100727272007373730074747400757575007676760077777700787878007979
          79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
          8100828282008383830084848400858585008686860087878700888888008989
          89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
          9100929292009393930094949400959595009696960097979700989898009999
          99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
          A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
          A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
          B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800BDB9
          B500C2BAB200C6BBB000C9BDAE00CCBDAC00D1BEA800D5BFA600D7C0A500DBC1
          A200D9C1A600D8C2A800D6C3AD00D2C4B300D1C5B600D0C6BA00CEC7BE00CCC8
          C400CACACA00CBCBCB00CCCCCC00D0C0D000DB95DB00EA59EA00F529F500FB0D
          FB00FE03FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00E9E908E9E9E9
          3C3C3C3C3CE9E9E9E9E9E9E9080808083CC1120D3CE9E9E9E9E9E9E908E9E9E9
          363C36363CE9E9E9E9E9E9E908E9E9E9E9E9E9E9E9E9E9E9E9E9E9E908E9E9E9
          3C3C3C3C3CE9E9E9E9E9E9E9080808083CC1120D3CE9E9E9E9E9E9E908E9E9E9
          363C36363CE9E9E9E9E9E9E908E9E9E9E9E9E9E9E9E9E9E9E9E9E9E908E9E9E9
          3C3C3C3C3CE9E9E9E9E9E9E9080808083CC1120D3CE9E9E9E9E9E9E908E9E9E9
          363C36363CE94848E9E93C3C3C3C3CE9E9E9E9E9E9E94848E9E93CC1120D3CE9
          E9E9E9E9484E4F4F4B48363C36363CE9E9E9E9E9484E4F4F4A48E9E9E9E9E9E9
          E9E9E9E9E9E94F4FE9E9E9E9E9E9E9E9E9E9E9E9E9E94848E9E9}
        Layout = blGlyphTop
        Spacing = 0
      end
      object BitBtn7: TBitBtn
        Left = 0
        Top = 136
        Width = 103
        Height = 35
        Cursor = crHandPoint
        Hint = 'Atualizar Zoom do gr'#225'fico.'
        Caption = 'Voltar Zoom'
        TabOrder = 8
        OnClick = BitBtn7Click
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000000000000101
          0100020202000303030004040400050505000606060007070700080808000909
          09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
          1100121212001313130014141400151515001616160017171700181818001919
          19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
          2100222222002323230024242400252525002626260027272700282828002929
          29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
          3100323232003333330034343400353535003636360037373700383838003939
          39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
          4100424242004343430044444400454545004646460047474700484848004949
          49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050004D51
          55004B5259004A545C004A555F004A5662004B5865004A586600495867004958
          6800485869004858690048596A0048596A0047596C00455A6F00475A6D00495A
          6B004A5B6C004B5C6C004C5D6D004E5E6E00515F6F0053616F00576370005B66
          71005E67700061687000656A6F00696C6E006E6E6E006F6F6F00707070007471
          7000777271007B7371007E74720083757200887571008D75700091746F009474
          6E0096746D0099736C009A736C009B736C009C726C009D736C009F746C009F74
          6C00A0756D00A1756D00A2776E00A3786F00A47A7100A67C7200A67D7200A87E
          7300AA807400AB807600AD817600AF827700B0827700B2837800B2847800B284
          7800B4867900B5887A00B58A7A00B68D7B00B78E7B00B9907B00BB917A00BE92
          7800C1927600C4937400C9947200D0987000D59C7000DBA17100DFA57200E3A8
          7200E6AC7400E7AE7700E8B07800E7B17A00E7B27B00E6B37D00E6B47E00E7B6
          8100E6B98600E5BC8A00E6BF8D00E6C19000E8C39200EAC59200ECC89300F0CB
          9300F2CE9500F4D09500F5D19600F5D29900F4D49B00F4D69F00F4D9A300F5DB
          A600F4DDA800F6E1AF00F6E5B700F8EDC300FAF4CB00FCF8D000FDFBD400FEFC
          DD00FEFDDF00FCFCE000F9FBDE00F5F9DF00F1F6E000EBF1E000E7EEE000E7EC
          E000E7E9E200E9E6E400ECE2E700EFDCE800F3C1EC00F894F100FE60F600FE2F
          FB00FE0CFE00FE01FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00F508FE00E912FE00DC1DFD00CE28FC00B938FB00A747
          FA009554F8008560F600776BF4006677F3005A80F3005187F200498CF2004490
          EF003E91EE003692EF003191F1002E90F0002A8DEE002C8FEF00DF558BDFDFDF
          DFDFDFDFDFDFDFDFDFDFF7FE5F8FDFDFDFDFDFDFDFDFDFDFDFDFFCFBFE5F8FDF
          DFDFDFDFDFDFDFDFDFDFDFFBFBFE5F8FDFDFDFDFDFDFDFDFDFDFDFDFFBFBFE5F
          87DFDFDFDFDFDFDFDFDFDFDFDFFBFCFE52DF7E93938ADFDFDFDFDFDFDFDFFBCE
          928ABBC1C1BFAB80DFDFDFDFDFDFDFDF98BBC0C0C0C2C2CA7BDFDFDFDFDFDFDF
          91B4BEC0C1C2C2C297DFDFDFDFDFDF91B5A4BDC0C1C2C2C2BC87DFDFDFDFDF94
          B59FB5C0C0C1C1C0BD89DFDFDFDFDF8AB9A4A6B9C0C0C0C0AF83DFDFDFDFDFDF
          ABC1B8A6B1BBBDBF85DFDFDFDFDFDFDF80CAC2B1A4B1B99A84DFDFDFDFDFDFDF
          DF7B98B8B7AD8484DFDFDFDFDFDFDFDFDFDFDF898A85DFDFDFDF}
        Layout = blGlyphTop
        Spacing = 0
      end
    end
    object Tab_1: TTabSheet
      Caption = 'Contas'
      ImageIndex = 31
      object Grid_Entrada: TDBGrid
        Left = 0
        Top = 33
        Width = 980
        Height = 200
        Cursor = crHandPoint
        Hint = 
          'BRANCO: Pago, PRETO: N'#227'o Pago, AMARELO: Pendente, VERMELHO: Paga' +
          'mento efetuado sem recebimento.'
        Align = alTop
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = True
        DataSource = DS_CaixaEntrada
        Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = Grid_EntradaDrawColumnCell
        OnDblClick = Grid_EntradaDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_REAL'
            Title.Caption = 'Valor Real'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'Valor Base'
            Width = 100
            Visible = True
          end
          item
            Color = clCream
            Expanded = False
            FieldName = 'CATEGORIA'
            Title.Caption = 'Categoria'
            Width = 120
            Visible = True
          end
          item
            Color = clCream
            Expanded = False
            FieldName = 'GRUPO'
            Title.Caption = 'Grupo'
            Width = 120
            Visible = True
          end
          item
            Color = clCream
            Expanded = False
            FieldName = 'SUBGRUPO'
            Title.Caption = 'Subgrupo'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CONTRATO'
            Title.Caption = 'Contrato'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_REF'
            Title.Caption = 'Vencimento'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_PGTO'
            Title.Caption = 'Pagamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCUMENTO'
            Title.Caption = 'Documento'
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PARCELA'
            Title.Alignment = taCenter
            Title.Caption = 'Parcela'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PENDENTE'
            Title.Caption = 'Pendente?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GARANTIDO'
            Title.Caption = 'Garantido?'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Pessoa'
            Width = 270
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 980
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Color = clMoneyGreen
        TabOrder = 1
        object Label4: TLabel
          Left = 9
          Top = 5
          Width = 142
          Height = 21
          Caption = 'CAIXA ENTRADA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelTotalEntrada: TLabel
          Left = 747
          Top = 10
          Width = 148
          Height = 13
          BiDiMode = bdRightToLeft
          Caption = '0 Registro(s) encontrados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 233
        Width = 980
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Color = clSkyBlue
        TabOrder = 2
        object Label1: TLabel
          Left = 9
          Top = 5
          Width = 116
          Height = 21
          Caption = 'CAIXA SA'#205'DA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelTotalSaida: TLabel
          Left = 747
          Top = 10
          Width = 148
          Height = 13
          BiDiMode = bdRightToLeft
          Caption = '0 Registro(s) encontrados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
        end
      end
      object Grid_Saida: TDBGrid
        Left = 0
        Top = 266
        Width = 980
        Height = 200
        Cursor = crHandPoint
        Hint = 
          'BRANCO: Pago, PRETO: N'#227'o Pago, AMARELO: Pendente, VERMELHO: Paga' +
          'mento efetuado sem recebimento.'
        Align = alTop
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = True
        DataSource = DS_CaixaSaida
        Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = Grid_SaidaDrawColumnCell
        OnDblClick = Grid_SaidaDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_REAL'
            Title.Caption = 'Valor Real'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'Valor Base'
            Width = 100
            Visible = True
          end
          item
            Color = clCream
            Expanded = False
            FieldName = 'CATEGORIA'
            Title.Caption = 'Categoria'
            Width = 120
            Visible = True
          end
          item
            Color = clCream
            Expanded = False
            FieldName = 'GRUPO'
            Title.Caption = 'Grupo'
            Width = 120
            Visible = True
          end
          item
            Color = clCream
            Expanded = False
            FieldName = 'SUBGRUPO'
            Title.Caption = 'Subgrupo'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CONTRATO'
            Title.Caption = 'Contrato'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_REF'
            Title.Caption = 'Vencimento'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_PGTO'
            Title.Caption = 'Pagamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCUMENTO'
            Title.Caption = 'Documento'
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PARCELA'
            Title.Alignment = taCenter
            Title.Caption = 'Parcela'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PENDENTE'
            Title.Caption = 'Pendente?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GARANTIDO'
            Title.Caption = 'Garantido?'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Pessoa'
            Width = 270
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Movimenta'#231#227'o de Contas'
      ImageIndex = 15
      OnShow = TabSheet2Show
      object Label2: TLabel
        Left = 10
        Top = 125
        Width = 67
        Height = 13
        Caption = 'Transferir: R$'
      end
      object Label10: TLabel
        Left = 11
        Top = 366
        Width = 368
        Height = 13
        Caption = 
          'Importante: Breve Anota'#231#227'o para acompanhar esta conta no seu fin' +
          'anceiro:'
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 11
        Width = 975
        Height = 85
        Caption = 'Categoria de ORIGEM'
        TabOrder = 0
        object Label5: TLabel
          Left = 28
          Top = 59
          Width = 46
          Height = 13
          Caption = 'Saldo: R$'
        end
        object comboOrigem: TComboBox
          Left = 8
          Top = 29
          Width = 246
          Height = 21
          Hint = 'Escolha a categoria / conta a sair o dinheiro'
          ItemHeight = 13
          TabOrder = 0
          OnChange = comboOrigemChange
        end
        object editOrigem: TEdit
          Left = 80
          Top = 56
          Width = 174
          Height = 21
          Hint = 'Montante total do caixa at'#233' hoje.'
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = cl3DLight
          ReadOnly = True
          TabOrder = 1
          Text = '0,00'
        end
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 171
        Width = 975
        Height = 85
        Caption = 'Categoria de DESTINO'
        TabOrder = 1
        object Label6: TLabel
          Left = 28
          Top = 59
          Width = 46
          Height = 13
          Caption = 'Saldo: R$'
        end
        object comboDestino: TComboBox
          Left = 8
          Top = 29
          Width = 246
          Height = 21
          Hint = 'Escolha a categoria / conta a sair o dinheiro'
          ItemHeight = 13
          TabOrder = 0
          OnChange = comboDestinoChange
        end
        object editDestino: TEdit
          Left = 80
          Top = 56
          Width = 174
          Height = 21
          Hint = 'Montante total do caixa at'#233' hoje.'
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = cl3DLight
          ReadOnly = True
          TabOrder = 1
          Text = '0,00'
        end
      end
      object editMontante: TEdit
        Left = 83
        Top = 122
        Width = 174
        Height = 21
        Color = 12189625
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = '0,00'
      end
      object btnMovimentar: TBitBtn
        Left = 3
        Top = 422
        Width = 254
        Height = 43
        Caption = 'Transferir'
        TabOrder = 3
        OnClick = btnMovimentarClick
        OnMouseMove = btnMovimentarMouseMove
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FC01
          FD00F405F500E60DE700CC1BCE008C3F91005161580032743A00217E2A001587
          1F000C8E1700089313000696110005981000049A0E00039A0D00039B0C00039A
          0B0003970A0003930A0002900A00028D0A00028809000280090002700800025F
          0700025907000254060001510500014D0400014C0400014C0400014E0400014F
          0400015105000154050002580600025B0700035E070003610800046409000667
          0B0008660D000B631000105E140016561A001F4B2100273F28002B3E2C002F3D
          2F00333D3300373C37003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
          4100424242004343430044444400454545004646460047474700484848004949
          49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
          5100525252005353530054545400555555005656560057575700585858005959
          59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
          6100626262006363630064646400656565006666660067676700686868006969
          69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
          7100727272007373730074747400757575007676760077777700787878007979
          79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
          8100828282008383830084848400858585008686860087878700888888008989
          89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
          9100929292009393930094949400959595009696960097979700989898009999
          99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
          A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
          A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
          B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
          B900BABDBB00BCC2BE00BDC6C000C0CDC400C2D3C700C7DACD00CCE0D200D1E5
          D600D7EADC00DEEFE300E4F4E800E9F7EC00ECF9F000EFFBF200F3FCF600F6FD
          F800F3FDF600EFFDF400EEFCF200EBFCF100E8FCEF00E3FBEB00DEF9E800DAF8
          E400D4F6E000CEF4DC00C3F1D300B9EECB00B5EDC700ADEAC100A3E6B9009CE3
          B30093DFAC008ADCA40081D99E007AD6990074D495006FD291006AD18F0068CF
          8D0065CF8A0063CE890060CD87005DCC850058CA800054C87D004DC6770048C4
          740043C26E003DBF680039BC620034BA5D0031B85A002DB757002DB655002AB5
          540027B4520025B3500022B24D0020B149001FB046001CAE41001AAD3D0017AA
          380013A6330010A42E000FA42C000FA32C0010A12C0010A22C00040404040404
          04040404040404040404040430212C29272727272727272604040412FE131414
          1C1C1C1C1C1C1A20260404FEF9FCFC1516C9F9181818181A270404FEF5F9F6D9
          D8D2D8EC1818181C250404FEEEF4EAC9F0D6DFC9EC18181C270404FEEAEDE9DE
          FCD6E8C9DC16181C270404FEE5ECEFF1EAD3CBC9DF13151C250404FEDEEAEDD7
          C9C9C9DAF6FCFC142B0404FEDCE8E7C9D1CFE9F6FAFCFC13210404FEDBE7E5C9
          DCD5EBD6EAF8FAFE310404FEDAE2EAD8D4D3D5CFE8F6F7FE200404FED9DAE0E5
          DEC9DAE9F1F4F4F9130404FEDDD9D9DADCDFE7EBEFF1EFF712040404F7F0F0F0
          F3F5F7F9FAFAFBFE040404040404040404040404040404040404}
        Layout = blGlyphTop
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 278
        Width = 975
        Height = 66
        Caption = 
          'Selecionar o registro da empresa (Escreva o primeiro nome da pes' +
          'soa, e selecione na listagem)'
        TabOrder = 4
        object ComboEmpresa: TComboBox
          Left = 8
          Top = 24
          Width = 246
          Height = 21
          Hint = 
            'Escolha o registro da empresa no cadastro de pessoas. N'#195'O altere' +
            ' nenhuma informa'#231#227'o.'
          ItemHeight = 13
          TabOrder = 0
        end
      end
      object editAnotacao: TEdit
        Left = 11
        Top = 384
        Width = 246
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 165
        ParentFont = False
        TabOrder = 5
      end
    end
    object TabCobranca: TTabSheet
      Caption = 'Cobran'#231'as'
      ImageIndex = 16
      OnHide = TabCobrancaHide
      OnShow = TabCobrancaShow
      object GroupBox6: TGroupBox
        Left = 0
        Top = 306
        Width = 980
        Height = 160
        Align = alClient
        Caption = '( 3'#186' ) ANOTA'#199#213'ES DAS CONTAS (Total de 0 Anota'#231#245'es)'
        TabOrder = 0
        DesignSize = (
          980
          160)
        object Label11: TLabel
          Left = 752
          Top = 120
          Width = 72
          Height = 13
          Caption = 'Data Cobran'#231'a'
        end
        object Label12: TLabel
          Left = 868
          Top = 120
          Width = 63
          Height = 13
          Caption = 'Data Solu'#231#227'o'
        end
        object BitBtn4: TBitBtn
          Left = 718
          Top = 73
          Width = 28
          Height = 23
          Cursor = crHandPoint
          Hint = 'Excluir selecionado.'
          Anchors = [akTop, akRight]
          TabOrder = 0
          Visible = False
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000000000000101
            0100020202000303030004040400050505000606060007070700080808000909
            09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
            1100121212001313130014141400151515001616160017171700181818001919
            19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
            2100222222002323230024242400252525002626260027272700282828002929
            29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
            3100323232003333330034343400353535003636360037373700383838003939
            39003A3A3A003B3B3B003A42450039494E0038505700335C6A002E677A002971
            8B00257A98002181A3001F86AB001D8AB1001A8DB600178EBA00158FBD00128F
            BF001090C1000E8FC1000C8EC2000B8DC100098AC0000988BD000883B700077D
            B2000679AE000476AB000474A8000472A6000470A300046D9E00046DA100056E
            A100056DA500086BB0000A67BD000D61CB001059D9001053E100104FE3000E48
            E5000C41E7000A3AEA000A35ED000932EE000930F000092FF100082FF100082E
            EE00082CE9000729DD000622C600051DB300041BA30003189A00021493000112
            8E0001108B00010E8800000D8700000B85000008840000068400000A84000110
            850002158600031A870005218800092989000F378A001C4A8C0027548B00355B
            8A00406289004A6A8A0054738A00607D8A00687F8A006F818A0077848A008087
            8A008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B5B600B6BEBF00B8C9CB00B9D2D500BADADD00BBE1E500BDE8EC00C1ED
            F200C4F2F600C5F4F800C6F6FA00C7F8FB00C8F9FC00C2F9FC00BDF9FD00B9FA
            FD00B3FAFD00A9FBFE009FFBFE0099FCFE0095FCFE008FFCFE0085FBFE0080FA
            FD007EF8FD007CF6FD0079EEFA0076EAF90072E8F9006FECFC006BECFC0066ED
            FD0062EDFD005EECFE0058E9FE0054E5FE0050E3FE004DE1FE004AE0FE0046DF
            FE0042DEFE003FDEFE003DDCFD0037DAFD0032D8FD002DD4FC0028CFF90021CC
            F90023CAF60023C8F40023C7F20025C5F10027C4EE002CBEE90033B8E80041AA
            E9005696EB006E7FEC008669EE00A151F000BB3AF400D523F700F20AFC00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F8F8F8F8F8F8
            F8F8F8F8F8F8F8F8F8F8F8F8F8575757575757F8F8F8F8F8F8F8F8F854E7E1E1
            D5CEE857F8F8F8F8F8F8F854C9DBE1E37777777777777777F8F8F854C9DBE1E3
            775F626868686A77F8F8F854C9DBE1E3775F616468686977F8F8F854C4C4C1BE
            7777777777777777F8F8F854B84A4C4F494852CD57F8F8F8F8F8F854E8DBE1E1
            D5CEE85857F8F8F8F8F8F854C9DBE1E1D5CEE84E57F8F8F8F8F8F854C9DBE1E1
            D5CEE84E57F8F8F8F8F8F854C9DBE1E1D5CEE84E57F8F8F8F8F8F854C9D1D4D3
            C9C8D94E57F8F8F8F8F8F854BEBEBEC4C5C5C6D457F8F8F8F8F8F8F852BEBEC1
            C5C7C957F8F8F8F8F8F8F8F8F8545454545454F8F8F8F8F8F8F8}
          Layout = blGlyphTop
          Margin = 1
        end
        object BitBtn5: TBitBtn
          Left = 718
          Top = 44
          Width = 28
          Height = 23
          Cursor = crHandPoint
          Hint = 'Cancelar Altera'#231#245'es'
          Anchors = [akTop, akRight]
          TabOrder = 1
          OnClick = BitBtn5Click
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B00000001000000000000000000000101
            0100020202000303030004040400050505000606060007070700080808000909
            09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
            1100121212001313130014141400151515001616160017171700181818001919
            19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
            2100222222002323230024242400252525002626260027272700282828002929
            29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
            3100323232003333330034343400353535003636360037373700383838003939
            39003A3A3A003B3B3B003A42450039494E0038505700335C6A002E677A002971
            8B00257A98002181A3001F86AB001D8AB1001A8DB600178EBA00158FBD00128F
            BF001090C1000E8FC1000C8EC2000B8DC100098AC0000988BD000883B700077D
            B2000679AE000476AB000474A8000472A6000470A300046D9E00046DA100056E
            A100056DA500086BB0000A67BD000D61CB001059D9001053E100104FE3000E48
            E5000C41E7000A3AEA000A35ED000932EE000930F000092FF100082FF100082E
            EE00082CE9000729DD000622C600051DB300041BA30003189A00021493000112
            8E0001108B00010E8800000D8700000B85000008840000068400000A84000110
            850002158600031A870005218800092989000F378A001C4A8C0027548B00355B
            8A00406289004A6A8A0054738A00607D8A00687F8A006F818A0077848A008087
            8A008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B5B600B6BEBF00B8C9CB00B9D2D500BADADD00BBE1E500BDE8EC00C1ED
            F200C4F2F600C5F4F800C6F6FA00C7F8FB00C8F9FC00C2F9FC00BDF9FD00B9FA
            FD00B3FAFD00A9FBFE009FFBFE0099FCFE0095FCFE008FFCFE0085FBFE0080FA
            FD007EF8FD007CF6FD0079EEFA0076EAF90072E8F9006FECFC006BECFC0066ED
            FD0062EDFD005EECFE0058E9FE0054E5FE0050E3FE004DE1FE004AE0FE0046DF
            FE0042DEFE003FDEFE003DDCFD0037DAFD0032D8FD002DD4FC0028CFF90021CC
            F90023CAF60023C8F40023C7F20025C5F10027C4EE002CBEE90033B8E80041AA
            E9005696EB006E7FEC008669EE00A151F000BB3AF400D523F700F20AFC00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F8F8F8F8F8F8
            F8F8F8F8F8F8F8F8F8F8F8F8F8575757575757F8F8F8F8F8F8F8F8F854E7E1E1
            D5CEE857F8F8F8F8F8F8F854C9DBE1E30000000000000000F8F8F854C9DBE1E3
            0000000000000000F8F8F854C9DBE1E30000000000000000F8F8F854C4C4C1BE
            0000000000000000F8F8F854B84A4C4F494852CD57F8F8F8F8F8F854E8DBE1E1
            D5CEE85857F8F8F8F8F8F854C9DBE1E1D5CEE84E57F8F8F8F8F8F854C9DBE1E1
            D5CEE84E57F8F8F8F8F8F854C9DBE1E1D5CEE84E57F8F8F8F8F8F854C9D1D4D3
            C9C8D94E57F8F8F8F8F8F854BEBEBEC4C5C5C6D457F8F8F8F8F8F8F852BEBEC1
            C5C7C957F8F8F8F8F8F8F8F8F8545454545454F8F8F8F8F8F8F8}
          Layout = blGlyphTop
          Margin = 1
        end
        object DBGridAnotacoes: TDBGrid
          Left = 2
          Top = 15
          Width = 710
          Height = 143
          Cursor = crHandPoint
          Align = alLeft
          BorderStyle = bsNone
          Color = cl3DLight
          DataSource = DM_CADASTRO.DS_Curinga_03X
          Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID_CAIXA_ENTRADA'
              Title.Alignment = taCenter
              Title.Caption = 'Conta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Status'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TEXTO'
              Title.Alignment = taCenter
              Title.Caption = 'Anota'#231#227'o'
              Width = 255
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPERADOR'
              Title.Caption = 'Func.'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOCUMENTO'
              Title.Caption = 'Documento'
              Width = 255
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CAIXA_STATUS'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_STATUS'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_CAIXA_SAIDA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_FUNCIONARIO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DATA_ENTRADA'
              Title.Caption = 'Cobran'#231'a'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_SAIDA'
              Title.Caption = 'Solu'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_ALT'
              Title.Caption = 'Altera'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANOTACAO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DATA_CAD'
              Title.Caption = 'Cadastro'
              Visible = True
            end>
        end
        object BitBtn1: TBitBtn
          Left = 718
          Top = 130
          Width = 28
          Height = 23
          Cursor = crHandPoint
          Hint = 'Gravar Altera'#231#245'es'
          Anchors = [akTop, akRight]
          TabOrder = 3
          OnClick = BitBtn1Click
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000000000000101
            010002020200030303000B050300140804001C0A0400240C05002B0E05003711
            0500411305004E1504005817040060190300671A03006D1B0200721C0200761C
            0100791D01007B1D01007D1D00007D1D01007E1D01007E1D01007E1D01007E1D
            01007E1D01007E1D01007E1D01007E1D01007E1E01007E1E01007E1E01007F1E
            01007F1E01007F1E00007F1E00007F1E00007F1E00007F1E00007F1E00007E1E
            01007D1E01007B1F0200761F0600732007006E210A006A220D00642410005E26
            150056281A00512B1F004A2D2400472F280043312C00403330003C3634003939
            39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
            4100424242004343430044444400454545004646460047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
            5100525252005353530054545400555555005656560057575700585858005959
            59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
            6100626262006363630064646400656565006666660067676700686868006969
            69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
            7100727272007373730074747400757575007676760077777700787878007979
            79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
            8100828282008383830084848400858585008686860087878700888888008989
            89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D00949B9E008297A0007393A200558E
            A7003888AB002684AE001983B2001183B4000C83B6000982B6000782B6000681
            B700057FB500047DB200047BB1000379AE000377AC000376AA000274A9000273
            A8000273A7000272A6000370A300046DA000046B9D000469A0000564A500055D
            AF000551BF000641CF000736D9000731DF00072DE600092BEF00092AF7000B2D
            F7000E34F800123CF9001744F9001A4AFA001F5FF7002271F500278CF2002B9F
            F1002CAFEE0028C1F20026C7F50024CAF70027CDF9002FD1FA0039D6FB0043DD
            FD004EE2FE0057E8FD0062EDFD006AF0FD0070EEFD0075E8FC0078E9FC007DEA
            FC0083EBFD008BEDFD0090F0FD0097F0FD00A4F1FD00B4F5FD00C3F8FD00CEF6
            FD00D9F6FE00E4F8FE00EDF9FE00F4F9FE00F3F7FE00F4EFFE00F4E1FE00F5CB
            FD00F7B4FE00FA9AFE00FA82FE00FB64FE00FC40FE00FD25FE00FD17FE00FE0A
            FE00FE05FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F9F9F9F9F9F9
            2424242424242424F9F9F9F9B6B6B6B624E5E5E5C8DEE524F9F9F9B0CCCDCED2
            24E5E5C8C0C6E524F9F9B0D6D1CDCED224E1C5C0C5C0E124F9F9B0D6D1CDCED2
            24C6C0DEE7C1C621F9F9B0D6D1CDCED224E2E1E5E5D9C035F9F9B0DEDEDFE2E3
            24E5E5E5E5E5C6C0F9F9B0DECAA8A8A52424242424242CBCC0F9B0CAD1CDCED2
            D7CAB7B6F9F9F9F9C0C0B0D6D1CDCED2D7CAA9B6F9F9F9F9F9C0B0D6D1CDCED2
            D7CAA9B6F9F9F9F9F9F9B0D6D1CDCED2D7CAA9B6F9F9F9F9F9F9B0D8D5D3D4DA
            DBD1A9B6F9F9F9F9F9F9B0E5E4E0DEDDDDDCD3B6F9F9F9F9F9F9F9ADE4E2DFDD
            DCDAB6F9F9F9F9F9F9F9F9F9B0B0B0B0B0B0F9F9F9F9F9F9F9F9}
          Layout = blGlyphTop
          Margin = 1
        end
        object BitBtn2: TBitBtn
          Left = 718
          Top = 15
          Width = 28
          Height = 23
          Cursor = crHandPoint
          Hint = 'Adicionar nova a'#231#227'o.'
          Anchors = [akTop, akRight]
          TabOrder = 4
          OnClick = BitBtn2Click
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000025304000256
            0400025704000358040003590400035905000359050003580500035705000356
            05000354050004500500044A060005440700073A08000A2D0B000C240D000E1D
            0E00111611001313130014141400151515001616160017171700181818001919
            19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
            2100222222002323230024242400252525002626260027272700282828002929
            29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002C323500283941002341
            50001E485D0018516D0014577800105D82000D6088000A638E00086591000766
            930007669500066796000667960006699800066A9A00056B9C00056C9D00046D
            9F00046FA2000370A4000371A5000272A7000273A7000273A8000273A8000274
            A9000275AA000276AC000278AE00037AB000037DB4000480B6000682B8000783
            B9000885BB000A86BB000C87BB000F89BC001A8FC0002796C400339DC70040A5
            CC0050AED10062BAD90075C7E00088D3E7009ADDED00A4E3F000ADE8F300B4ED
            F600BAF3F900BDF8FC00B5F9FD00ABF9FD00A0F8FD0099F8FD0090F8FD0086F7
            FC007DF4FC0077F2FC0074F2FC0071F1FC006FF0FC006CF0FC0069EEFC0063EB
            FC005CE8FD0056E6FD004FE3FD0049E1FC0047E0FC0045DBFA0042D7F7003DD3
            F50036D0F50031CEF4002CCCF40025CBF50020CAF8001ECAF70020C8F50025C6
            F1002CC0E80033B9DF0037B2D6003FAECE0048A9C60056A4BA00619EB0006F97
            A3007C9197008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
            B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
            C100C2C2C200C3C3C300C4C4C400C8B9C800CCAECC00D0A4D000D499D400DE77
            DE00E855E800EF3DEF00F526F500F914F900FC0AFC00FD04FD00FE01FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FD01FD00FA04FA00E714EB00C82FD000AC47
            B800935DA2007C718F0066867D00529C6D0043AB620037B758002CC2500028C5
            4C0025C6490024C5470023C4450021C041001FBE3E001DBB3B001CB837001AB5
            330018B2310017AF2D0015AC2A0013A8260012A6240011A52200DBDBDBDBDBDB
            DBDBDB06060606DBDBDBDBDB3A3A3A3A3A3ADB06FFFF06DBDBDBDB49827F7E74
            6C843A06FFFF06DBDBDB496C767F7E7806060606FEFF06060606496C767F7E78
            06F2F5F8FAFCFFFFFF06496C767F7E7806F0F1F4F6F8FBFDFF06496666646363
            06060606F1F406060606496084525255564C5C06F0F106DBDBDB4984767F7E74
            6C844206EFF006DBDBDB496C767F7E746C845206060606DBDBDB496C767F7E74
            6C845239DBDBDBDBDBDB496C767F7E746C84523ADBDBDBDBDBDB496B7073716A
            6979523ADBDBDBDBDBDB4963636366676768733ADBDBDBDBDBDBDB4D63636467
            68693EDBDBDBDBDBDBDBDBDB494949494949DBDBDBDBDBDBDBDB}
          Layout = blGlyphTop
          Margin = 1
        end
        object DbTipoStatus: TDBLookupComboBox
          Left = 751
          Top = 16
          Width = 225
          Height = 20
          Cursor = crHandPoint
          DataField = 'ID_STATUS'
          DataSource = DM_CADASTRO.DS_Curinga_03X
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          KeyField = 'ID_CAIXA_SIS'
          ListField = 'NOME'
          ListSource = DM_FINANCEIRO.DS_CaixaTipoStatus
          ParentFont = False
          TabOrder = 5
        end
        object DBMemo3: TDBMemo
          Left = 751
          Top = 44
          Width = 225
          Height = 75
          BorderStyle = bsNone
          DataField = 'ANOTACAO'
          DataSource = DM_CADASTRO.DS_Curinga_03X
          TabOrder = 6
        end
        object DBEdit16: TDBEdit
          Left = 751
          Top = 133
          Width = 109
          Height = 24
          Cursor = crHandPoint
          DataField = 'DATA_ENTRADA'
          DataSource = DM_CADASTRO.DS_Curinga_03X
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit1: TDBEdit
          Left = 866
          Top = 133
          Width = 109
          Height = 24
          Cursor = crHandPoint
          DataField = 'DATA_SAIDA'
          DataSource = DM_CADASTRO.DS_Curinga_03X
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clOlive
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 980
        Height = 159
        Align = alTop
        Caption = '( 1'#186' ) PESSOAS DEVEDORAS ( Total de 0 Pessoas)'
        TabOrder = 1
        object DBGridPessoa: TDBGrid
          Left = 2
          Top = 15
          Width = 976
          Height = 142
          Cursor = crHandPoint
          Hint = 'Pessoas com contas criadas e n'#227'o paga.'
          Align = alClient
          BorderStyle = bsNone
          Color = cl3DLight
          DataSource = DM_CADASTRO.DS_Curinga_01X
          Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          PopupMenu = PopupMenuPessoas
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnColExit = DBGridPessoaColExit
          OnKeyUp = DBGridPessoaKeyUp
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'C'#243'digo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CONTRATO'
              Title.Caption = 'Contrato'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESSOA'
              Title.Caption = 'Pessoa'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOGRADOURO'
              Title.Caption = 'Endere'#231'o'
              Width = 150
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NUMERO'
              Title.Caption = 'N'#250'mero'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMPLEMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Complemento'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELDDDRES'
              Title.Caption = 'DDD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELNUMRES'
              Title.Caption = 'Tel. Residencial'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELCONTATORES'
              Title.Caption = 'Contato'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELDDDCEL'
              Title.Caption = 'DDD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELNUMCEL'
              Title.Caption = 'Tel. Celular'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELCONTATOCEL'
              Title.Caption = 'Contato'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELDDDCOM'
              Title.Caption = 'DDD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELNUMCOM'
              Title.Caption = 'Tel. Comercial'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELCONTATOCOM'
              Title.Caption = 'Contato'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMAIL'
              Title.Caption = 'E-Mail'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'YAHOO'
              Title.Caption = 'E-Mail (Trabalho)'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MSN'
              Title.Caption = 'Skype'
              Width = 100
              Visible = True
            end>
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 159
        Width = 980
        Height = 147
        Align = alTop
        Caption = 
          '( 2'#186' ) CONTAS DA PESSOA SELECIONADA ( Total de 0 Contas = R$ 0,0' +
          '0)'
        TabOrder = 2
        object DBGridContas: TDBGrid
          Left = 2
          Top = 15
          Width = 710
          Height = 130
          Cursor = crHandPoint
          Align = alLeft
          BorderStyle = bsNone
          Color = cl3DLight
          DataSource = DM_CADASTRO.DS_Curinga_02X
          Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGridContasDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_CAIXA'
              Title.Caption = 'C'#243'digo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_REF'
              Title.Caption = 'Vencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'R$ Base'
              Visible = True
            end
            item
              Color = clSilver
              Expanded = False
              FieldName = 'VALORREAL'
              Title.Caption = 'R$ Calculado'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PARCELA'
              Title.Caption = 'Parcela'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOCUMENTO'
              Title.Caption = 'Documento'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CATEGORIA'
              Title.Caption = 'Categoria'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Title.Caption = 'Grupo'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBTIPO'
              Title.Caption = 'Sub Grupo'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CATEGORIA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_TIPO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_SUBTIPO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_PESSOA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_IMOVEL'
              Title.Caption = 'Im'#243'vel'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CONTRATO'
              Title.Caption = 'Contrato'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_FUNCIONARIO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_ENTRADA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_SAIDA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DATA_CAD'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DATA_ALT'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DATA_PGTO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'HORA_PGTO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'OPERACAO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'VALOR_JUROS'
              Title.Caption = 'Juros'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'VALOR_MULTA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'VALOR_DESCONTO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'PENDENTE'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ANOTACAO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ATIVO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'GARANTIDO'
              Visible = True
            end>
        end
        object BitBtn6: TBitBtn
          Left = 718
          Top = 119
          Width = 28
          Height = 23
          Cursor = crHandPoint
          Hint = 'SALVAR TEXTO'
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 1
          OnClick = BitBtn6Click
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000000000000101
            010002020200030303000B050300140804001C0A0400240C05002B0E05003711
            0500411305004E1504005817040060190300671A03006D1B0200721C0200761C
            0100791D01007B1D01007D1D00007D1D01007E1D01007E1D01007E1D01007E1D
            01007E1D01007E1D01007E1D01007E1D01007E1E01007E1E01007E1E01007F1E
            01007F1E01007F1E00007F1E00007F1E00007F1E00007F1E00007F1E00007E1E
            01007D1E01007B1F0200761F0600732007006E210A006A220D00642410005E26
            150056281A00512B1F004A2D2400472F280043312C00403330003C3634003939
            39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
            4100424242004343430044444400454545004646460047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
            5100525252005353530054545400555555005656560057575700585858005959
            59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
            6100626262006363630064646400656565006666660067676700686868006969
            69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
            7100727272007373730074747400757575007676760077777700787878007979
            79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
            8100828282008383830084848400858585008686860087878700888888008989
            89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D00949B9E008297A0007393A200558E
            A7003888AB002684AE001983B2001183B4000C83B6000982B6000782B6000681
            B700057FB500047DB200047BB1000379AE000377AC000376AA000274A9000273
            A8000273A7000272A6000370A300046DA000046B9D000469A0000564A500055D
            AF000551BF000641CF000736D9000731DF00072DE600092BEF00092AF7000B2D
            F7000E34F800123CF9001744F9001A4AFA001F5FF7002271F500278CF2002B9F
            F1002CAFEE0028C1F20026C7F50024CAF70027CDF9002FD1FA0039D6FB0043DD
            FD004EE2FE0057E8FD0062EDFD006AF0FD0070EEFD0075E8FC0078E9FC007DEA
            FC0083EBFD008BEDFD0090F0FD0097F0FD00A4F1FD00B4F5FD00C3F8FD00CEF6
            FD00D9F6FE00E4F8FE00EDF9FE00F4F9FE00F3F7FE00F4EFFE00F4E1FE00F5CB
            FD00F7B4FE00FA9AFE00FA82FE00FB64FE00FC40FE00FD25FE00FD17FE00FE0A
            FE00FE05FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F9F9F9F9F9F9
            2424242424242424F9F9F9F9B6B6B6B624E5E5E5C8DEE524F9F9F9B0CCCDCED2
            24E5E5C8C0C6E524F9F9B0D6D1CDCED224E1C5C0C5C0E124F9F9B0D6D1CDCED2
            24C6C0DEE7C1C621F9F9B0D6D1CDCED224E2E1E5E5D9C035F9F9B0DEDEDFE2E3
            24E5E5E5E5E5C6C0F9F9B0DECAA8A8A52424242424242CBCC0F9B0CAD1CDCED2
            D7CAB7B6F9F9F9F9C0C0B0D6D1CDCED2D7CAA9B6F9F9F9F9F9C0B0D6D1CDCED2
            D7CAA9B6F9F9F9F9F9F9B0D6D1CDCED2D7CAA9B6F9F9F9F9F9F9B0D8D5D3D4DA
            DBD1A9B6F9F9F9F9F9F9B0E5E4E0DEDDDDDCD3B6F9F9F9F9F9F9F9ADE4E2DFDD
            DCDAB6F9F9F9F9F9F9F9F9F9B0B0B0B0B0B0F9F9F9F9F9F9F9F9}
          Layout = blGlyphTop
          Margin = 1
        end
        object MemoPessoa: TMemo
          Left = 752
          Top = 15
          Width = 226
          Height = 130
          Cursor = crIBeam
          Hint = 'Digite uma mensagem permanente e salve o texto.'
          Align = alRight
          MaxLength = 299
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object BitBtn3: TBitBtn
          Left = 718
          Top = 15
          Width = 28
          Height = 23
          Cursor = crHandPoint
          Hint = 'QUITAR A CONTA'
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 3
          OnClick = BitBtn3Click
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FC01
            FD00F405F500E60DE700CC1BCE008C3F91005161580032743A00217E2A001587
            1F000C8E1700089313000696110005981000049A0E00039A0D00039B0C00039A
            0B0003970A0003930A0002900A00028D0A00028809000280090002700800025F
            0700025907000254060001510500014D0400014C0400014C0400014E0400014F
            0400015105000154050002580600025B0700035E070003610800046409000667
            0B0008660D000B631000105E140016561A001F4B2100273F28002B3E2C002F3D
            2F00333D3300373C37003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
            4100424242004343430044444400454545004646460047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
            5100525252005353530054545400555555005656560057575700585858005959
            59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
            6100626262006363630064646400656565006666660067676700686868006969
            69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
            7100727272007373730074747400757575007676760077777700787878007979
            79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
            8100828282008383830084848400858585008686860087878700888888008989
            89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
            B900BABDBB00BCC2BE00BDC6C000C0CDC400C2D3C700C7DACD00CCE0D200D1E5
            D600D7EADC00DEEFE300E4F4E800E9F7EC00ECF9F000EFFBF200F3FCF600F6FD
            F800F3FDF600EFFDF400EEFCF200EBFCF100E8FCEF00E3FBEB00DEF9E800DAF8
            E400D4F6E000CEF4DC00C3F1D300B9EECB00B5EDC700ADEAC100A3E6B9009CE3
            B30093DFAC008ADCA40081D99E007AD6990074D495006FD291006AD18F0068CF
            8D0065CF8A0063CE890060CD87005DCC850058CA800054C87D004DC6770048C4
            740043C26E003DBF680039BC620034BA5D0031B85A002DB757002DB655002AB5
            540027B4520025B3500022B24D0020B149001FB046001CAE41001AAD3D0017AA
            380013A6330010A42E000FA42C000FA32C0010A12C0010A22C00040404040404
            04040404040404040404040430212C29272727272727272604040412FE131414
            1C1C1C1C1C1C1A20260404FEF9FCFC1516C9F9181818181A270404FEF5F9F6D9
            D8D2D8EC1818181C250404FEEEF4EAC9F0D6DFC9EC18181C270404FEEAEDE9DE
            FCD6E8C9DC16181C270404FEE5ECEFF1EAD3CBC9DF13151C250404FEDEEAEDD7
            C9C9C9DAF6FCFC142B0404FEDCE8E7C9D1CFE9F6FAFCFC13210404FEDBE7E5C9
            DCD5EBD6EAF8FAFE310404FEDAE2EAD8D4D3D5CFE8F6F7FE200404FED9DAE0E5
            DEC9DAE9F1F4F4F9130404FEDDD9D9DADCDFE7EBEFF1EFF712040404F7F0F0F0
            F3F5F7F9FAFAFBFE040404040404040404040404040404040404}
          Layout = blGlyphTop
          Margin = 1
        end
      end
    end
    object TabLogCobranca: TTabSheet
      Caption = 'Log de Cobran'#231'as'
      ImageIndex = 88
      OnHide = TabLogCobrancaHide
      OnShow = TabLogCobrancaShow
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 980
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label13: TLabel
          Left = 14
          Top = 5
          Width = 268
          Height = 13
          Caption = '1) Selecione a data na aba "Filtros de Busca > Per'#237'odo".'
        end
        object Label14: TLabel
          Left = 14
          Top = 20
          Width = 419
          Height = 13
          Caption = 
            '2) Selecione o Usu'#225'rio em "Filtros de Busca > Outros Filtros > U' +
            'su'#225'rios > Usar o Filtro".'
        end
        object Label15: TLabel
          Left = 14
          Top = 34
          Width = 543
          Height = 13
          Caption = 
            '3) Realize o filtro e volte at'#233' essa aba de "Log de Cobran'#231'as" p' +
            'ara ver o resultado do andamento das cobran'#231'as.'
        end
        object BitBtn8: TBitBtn
          Left = 704
          Top = 9
          Width = 259
          Height = 35
          Caption = 'Imprimir Listagem no Word'
          TabOrder = 0
          OnClick = BitBtn8Click
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000010000FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00EF00EF00DF00DF00D100D100C400C400B800B800AD00AD00990099007E02
            7E0061076100470C4700331033001F101F00101010000D0D0D000A0A0A000B0B
            0B000C0C0C000D0D0D000F0F0F00101010001212120014141400171717001B1B
            1B001D1D1D002020200023232300272727002A2A2A002E2E2E00303030003131
            3100323232003333330034343400353535003636360037373700383838003939
            39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E0041404000444242004744
            4400494646004C4748004E494A00504A4B00524B4C00534C4D00554D4E00564E
            4F00584F51005B5253005E5556006157590063595A00645A5C00655B5C00675C
            5D00695D5D006A5E5D006A5E5D00675C5B0064595900605657005A525300564E
            5000514B4C004D47480048434400433F3F003E3B3C003B393900383737003837
            3700383737003B3939003F3C3C00413D3E00433F3F00474243004B464600514C
            4D00565051005A5556005E595A00635D5E006660610067626300696465006A65
            66006B6767006B6768006B6869006C6969006C6969006C696A006C6A6A006C69
            6A006C6A6A006D6A6A006E6A6B00726D6E00767172007A7575007D7879007F7A
            7B00817C7D00827E7F00837F80008581820087838400898586008B8788008C88
            89008E898A008E8A8A008F8B8C00918D8D00938F9000969293009A9697009D99
            9A009F9C9D00A09D9E00A19E9E00A19E9F00A29F9F00A2A0A000A3A1A100A5A2
            A200A6A3A400A7A5A500A8A6A600A9A7A700AAA8A800AAA9A900ABAAAA00ADAB
            AB00AFAEAE00B1B0B000B4B2B200B5B4B400B7B6B600B9B8B800BCBBBB00BFBE
            BE00C1C1C100C4C4C400C7C6C600C8C7C700C9C9C900CACACA00CBCACA00CCCB
            CB00CDCCCD00CECDCD00CFCECE00CFCFCF00D0CFCF00D0D0D000D1D0D000D2D1
            D100D3D2D200D4D3D300D7D6D600DAD9D900DDDCDC00E1E0E000E5E4E400E7E6
            E500E9E8E700EBEAE900EDEBEA00EEECEB00F0EEED00F1EFEE00F3F1F000F4F2
            F100F6F3F200F6F3F000F8F3EE00F9F3EC00FBF2E900FCF1E600FDEFE200FDED
            DC00FEEBD800FEEAD500FEE8D200FEE6CE00FEE3C900FEE1C400FEDFC000FEDE
            BE00FEDCBB00FEDBB800FED9B400FDD7B200FDD5AF00FDD4AD00FDD2AA00FCD0
            A700FDD0A500FDCEA200FDCD9F00FDCB9D00FDCA9900FDC89600FBC59300F9C2
            9000F7BF8D00F3BC8D00ECB58B00E5AE8800DCA48500D49D8300CD958100C991
            8000C68D8000C38A8000BF868000BD838000BC828000BC828000BC828000BC82
            8000BC828000BC828000BB828000BA827F00B7817C00B3817A000C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C7A7A7A0C0C0C0C7A7A0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C7AA28F8B7A7A837ABEB67A7A7A0C0C0C0C0C0C0C0C0C0C7ABB
            AB969696856CA8B4B5B9BBAE7A7A7A0C0C0C0C0C0C7ABCBFA99696966E202028
            6D9FAFAFAFAFAA7A7A7A0C0C7ABBBBB58B8383837A2720202020286D9FAFAFA6
            A67A0C7AAFAFAC8CA6A5969692908E846A2E2020202870837A0C0C7AAFAB8CBC
            CACAC8BFADA59A9696928E712C2029907A0C0C7AAB8CC1CACACAC8C5C3C1C0BB
            AAA2969690847A927A0C0C7A8CC6CACACACABB828DA9BEBFBEBDB9AAA396917A
            7A0C0C7AB1CACACACAB1A2A191817C859CACBCB9B4ADA89A7A0C0C0C7A7AB1C4
            9B527C8090A0A39E8F80828DA9B1AFAA7A0C0C0C0C0C7A7AFAFF544C57545485
            92A2A396AFB1A67A0C0C0C0C0C0C0C0CFADFE3E6EFFF724B567088B2B59A7A0C
            0C0C0C0C0C0C0C0CFADCE0E3E6E8EAEAEAFA7A7A7A7A0C0C0C0C0C0C0C0C0C0C
            FADADDE0E4E7E8EAEAFA0C0C0C0C0C0C0C0C0C0C0C0C0CFAD5D7DBDEE2E4E7E9
            FA0C0C0C0C0C0C0C0C0C0C0C0C0C0CFAD3D6D8DBDFE2E5E7FA0C0C0C0C0C0C0C
            0C0C0C0C0C0C0CFAD1D4D6D8DBDFE2E9FA0C0C0C0C0C0C0C0C0C0C0C0C0CFACC
            D0D1D5D6D9DCDFFA0C0C0C0C0C0C0C0C0C0C0C0C0CFACACACDD0D2D5D7DAE1FA
            0C0C0C0C0C0C0C0C0C0C0C0C0CFAFAFAFACDD0D2D5D8FA0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0CFAFAFAFAFA0C0C0C0C0C0C0C0C0C0C0C0C}
        end
      end
      object gridlogcobranca: TDBGrid
        Left = 0
        Top = 51
        Width = 980
        Height = 415
        Hint = 'Log da manipula'#231#227'o das cobran'#231'as'
        Align = alClient
        DataSource = DS_LogCobranca
        Options = [dgTitles, dgColumnResize, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USUARIO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo Usu'#225'rio(a)'
            Width = 97
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'REGISTRO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo Registro'
            Width = 88
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ORIGEM'
            Title.Alignment = taCenter
            Title.Caption = 'Origem da A'#231#227'o'
            Width = 206
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ACAO'
            Title.Alignment = taCenter
            Title.Caption = 'A'#231#227'o'
            Width = 433
            Visible = True
          end>
      end
    end
  end
  object TOPO: TPanel
    Left = 0
    Top = 0
    Width = 988
    Height = 20
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Image4: TImage
      Left = 0
      Top = 0
      Width = 988
      Height = 20
      Align = alClient
      Picture.Data = {
        0A544A504547496D616765C4010000FFD8FFE000104A46494600010200006400
        640000FFEC00114475636B79000100040000005A0000FFEE000E41646F626500
        64C000000001FFDB008400010101010101010101010201010102020201010202
        0202020202020203020303030302030304040404040305050505050507070707
        0708080808080808080808010101010202020503030507050405070808080808
        0808080808080808080808080808080808080808080808080808080808080808
        080808080808080808080808FFC0001108001E001E03011100021101031101FF
        C400650001000301000000000000000000000000000507090A01010002030000
        0000000000000000000000020503040610000004050500000000000000000000
        0000910253F001D1051612030454171101000203000000000000000000000000
        001214012213FFDA000C03010002110311003F00EB6F3EDA7A4386ACB4919F6D
        3D20AC48CFB69E90562467DB4F482B12674FAB729D821D3536BCCF56E53B0414
        C99EADCA760829933D5B94EC1053269AC0ADFD0414C4BBE5381815BFA0829877
        C90302B7F410530EF9206056FE820A61DF2417CE8B5BC9255057ECCA68B5BC92
        550360D16B7924AA06C1A2D6F249540D87FFD9}
      Stretch = True
      ExplicitTop = -6
      ExplicitWidth = 852
    end
  end
  object DS_CaixaEntrada: TDataSource
    DataSet = ZEntrada
    Left = 760
    Top = 65528
  end
  object DS_CaixaSaida: TDataSource
    DataSet = ZSaida
    Left = 672
    Top = 65528
  end
  object ZEntrada: TZQuery
    Connection = PRINCIPAL.Conexao
    SQL.Strings = (
      
        'SELECT (SELECT RESULT FROM spvalorcobranca1(1, C.data_ref, C.dat' +
        'a_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)' +
        ') as VALOR_REAL,  C.*, CAT.nome AS CATEGORIA, GRU.nome AS GRUPO,' +
        ' SUB.nome AS SUBGRUPO, P.*, I.*, CONT.*, USU.*, CSAI.*, L.nome A' +
        'S RUA  FROM CAIXA_ENTRADA C'
      'LEFT JOIN CAIXA_SIS CAT ON CAT.id_caixa_sis = C.id_categoria'
      'LEFT JOIN CAIXA_SIS GRU ON GRU.id_caixa_sis = C.id_tipo'
      'LEFT JOIN CAIXA_SIS SUB ON SUB.id_caixa_sis = C.id_subtipo'
      'LEFT JOIN PESSOA P ON P.id_pessoa = C.id_pessoa'
      'LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imovel'
      'LEFT JOIN CONTRATO CONT ON CONT.id_contrato = C.id_contrato'
      'LEFT JOIN USUARIO USU ON USU.id_usuario = C.id_funcionario'
      'LEFT JOIN CAIXA_SAIDA CSAI ON CSAI.id_caixa = C.id_saida'
      'LEFT JOIN logradouro L ON L.id_logradouro = I.id_logradouro'
      'WHERE C.id_imovel = 1')
    Params = <>
    Left = 40
    Top = 472
    object ZEntradaVALOR_REAL: TFloatField
      FieldName = 'VALOR_REAL'
      ReadOnly = True
    end
    object ZEntradaID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Required = True
    end
    object ZEntradaID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Required = True
    end
    object ZEntradaID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object ZEntradaID_SUBTIPO: TIntegerField
      FieldName = 'ID_SUBTIPO'
      Required = True
    end
    object ZEntradaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object ZEntradaID_IMOVEL: TIntegerField
      FieldName = 'ID_IMOVEL'
    end
    object ZEntradaID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object ZEntradaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object ZEntradaID_ENTRADA: TIntegerField
      FieldName = 'ID_ENTRADA'
    end
    object ZEntradaID_SAIDA: TIntegerField
      FieldName = 'ID_SAIDA'
    end
    object ZEntradaDATA_REF: TDateField
      FieldName = 'DATA_REF'
      Required = True
    end
    object ZEntradaDATA_CAD: TDateTimeField
      FieldName = 'DATA_CAD'
      Required = True
    end
    object ZEntradaDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
      Required = True
    end
    object ZEntradaDATA_PGTO: TDateField
      FieldName = 'DATA_PGTO'
    end
    object ZEntradaHORA_PGTO: TTimeField
      FieldName = 'HORA_PGTO'
    end
    object ZEntradaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 200
    end
    object ZEntradaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Required = True
      Size = 400
    end
    object ZEntradaVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
    object ZEntradaVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
      Required = True
    end
    object ZEntradaVALOR_MULTA: TFloatField
      FieldName = 'VALOR_MULTA'
      Required = True
    end
    object ZEntradaVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      Required = True
    end
    object ZEntradaPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Required = True
    end
    object ZEntradaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Required = True
      Size = 3
    end
    object ZEntradaANOTACAO: TMemoField
      FieldName = 'ANOTACAO'
      BlobType = ftMemo
    end
    object ZEntradaATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      Size = 3
    end
    object ZEntradaGARANTIDO: TStringField
      FieldName = 'GARANTIDO'
      Required = True
      Size = 3
    end
    object ZEntradaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object ZEntradaGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object ZEntradaSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      Size = 100
    end
    object ZEntradaID_PESSOA_1: TIntegerField
      FieldName = 'ID_PESSOA_1'
      Required = True
    end
    object ZEntradaID_PESSOA_TIPO: TIntegerField
      FieldName = 'ID_PESSOA_TIPO'
    end
    object ZEntradaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object ZEntradaID_OCUPACAO: TIntegerField
      FieldName = 'ID_OCUPACAO'
    end
    object ZEntradaPESSOA_FISICA: TStringField
      FieldName = 'PESSOA_FISICA'
      Required = True
      Size = 3
    end
    object ZEntradaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object ZEntradaNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 100
    end
    object ZEntradaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 100
    end
    object ZEntradaRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 100
    end
    object ZEntradaRG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
    end
    object ZEntradaRG_ORGAO: TStringField
      FieldName = 'RG_ORGAO'
      Size = 6
    end
    object ZEntradaIM: TStringField
      FieldName = 'IM'
      Size = 100
    end
    object ZEntradaSEXO: TStringField
      FieldName = 'SEXO'
      Required = True
      Size = 3
    end
    object ZEntradaPAI: TStringField
      FieldName = 'PAI'
      Size = 100
    end
    object ZEntradaMAE: TStringField
      FieldName = 'MAE'
      Size = 100
    end
    object ZEntradaCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 100
    end
    object ZEntradaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 100
    end
    object ZEntradaESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Required = True
      Size = 100
    end
    object ZEntradaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 100
    end
    object ZEntradaEMPRESA_CARGO: TStringField
      FieldName = 'EMPRESA_CARGO'
      Size = 100
    end
    object ZEntradaEMPRESA_RENDA: TFloatField
      FieldName = 'EMPRESA_RENDA'
    end
    object ZEntradaEMPRESA_TEMPO: TDateField
      FieldName = 'EMPRESA_TEMPO'
    end
    object ZEntradaCONSULTA_SPC: TStringField
      FieldName = 'CONSULTA_SPC'
      Required = True
      Size = 3
    end
    object ZEntradaCONSULTA_CERASA: TStringField
      FieldName = 'CONSULTA_CERASA'
      Required = True
      Size = 3
    end
    object ZEntradaCONSULTA_TELEFONE: TStringField
      FieldName = 'CONSULTA_TELEFONE'
      Required = True
      Size = 3
    end
    object ZEntradaCONSULTA_OUTROS: TStringField
      FieldName = 'CONSULTA_OUTROS'
      Required = True
      Size = 3
    end
    object ZEntradaCONSULTA_DADOS: TMemoField
      FieldName = 'CONSULTA_DADOS'
      BlobType = ftMemo
    end
    object ZEntradaCREDITO: TFloatField
      FieldName = 'CREDITO'
    end
    object ZEntradaCREDITO_VAL: TDateField
      FieldName = 'CREDITO_VAL'
    end
    object ZEntradaCREDITO_VAL_ATIVO: TStringField
      FieldName = 'CREDITO_VAL_ATIVO'
      Required = True
      Size = 3
    end
    object ZEntradaNOTA: TSmallintField
      FieldName = 'NOTA'
    end
    object ZEntradaNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
    end
    object ZEntradaCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object ZEntradaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object ZEntradaFILHOS: TStringField
      FieldName = 'FILHOS'
      Required = True
      Size = 3
    end
    object ZEntradaFOTO: TStringField
      FieldName = 'FOTO'
      Size = 100
    end
    object ZEntradaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object ZEntradaMSN: TStringField
      FieldName = 'MSN'
      Size = 50
    end
    object ZEntradaICQ: TStringField
      FieldName = 'ICQ'
      Size = 50
    end
    object ZEntradaYAHOO: TStringField
      FieldName = 'YAHOO'
      Size = 50
    end
    object ZEntradaAIM: TStringField
      FieldName = 'AIM'
      Size = 50
    end
    object ZEntradaMALADIRETA: TStringField
      FieldName = 'MALADIRETA'
      Required = True
      Size = 3
    end
    object ZEntradaDATA: TDateTimeField
      FieldName = 'DATA'
      Required = True
    end
    object ZEntradaOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object ZEntradaATIVO_1: TStringField
      FieldName = 'ATIVO_1'
      Required = True
      Size = 3
    end
    object ZEntradaALTERACAO_FUNC: TSmallintField
      FieldName = 'ALTERACAO_FUNC'
    end
    object ZEntradaALTERACAO_DATA: TDateField
      FieldName = 'ALTERACAO_DATA'
    end
    object ZEntradaIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      Required = True
      Size = 3
    end
    object ZEntradaPESSOA_RESPONSAVEL: TIntegerField
      FieldName = 'PESSOA_RESPONSAVEL'
    end
    object ZEntradaSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 8
    end
    object ZEntradaID_IMOVEL_1: TIntegerField
      FieldName = 'ID_IMOVEL_1'
      Required = True
    end
    object ZEntradaID_LOGRADOURO: TIntegerField
      FieldName = 'ID_LOGRADOURO'
      Required = True
    end
    object ZEntradaID_IMOVEL_SUBTIPO: TIntegerField
      FieldName = 'ID_IMOVEL_SUBTIPO'
      Required = True
    end
    object ZEntradaID_IMOVEL_TIPO: TIntegerField
      FieldName = 'ID_IMOVEL_TIPO'
      Required = True
    end
    object ZEntradaID_PESSOA_2: TIntegerField
      FieldName = 'ID_PESSOA_2'
      Required = True
    end
    object ZEntradaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Required = True
    end
    object ZEntradaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object ZEntradaSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 15
    end
    object ZEntradaDEPOSITO: TStringField
      FieldName = 'DEPOSITO'
      Size = 3
    end
    object ZEntradaSEGURO_FIANCA: TStringField
      FieldName = 'SEGURO_FIANCA'
      Size = 3
    end
    object ZEntradaFIADOR: TStringField
      FieldName = 'FIADOR'
      Size = 3
    end
    object ZEntradaVISITACORRETOR: TStringField
      FieldName = 'VISITACORRETOR'
      Size = 3
    end
    object ZEntradaOCUPADO: TStringField
      FieldName = 'OCUPADO'
      Size = 3
    end
    object ZEntradaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 3
    end
    object ZEntradaVENDA: TStringField
      FieldName = 'VENDA'
      Required = True
      Size = 3
    end
    object ZEntradaALUGUEL: TStringField
      FieldName = 'ALUGUEL'
      Required = True
      Size = 3
    end
    object ZEntradaOUTROS: TStringField
      FieldName = 'OUTROS'
      Required = True
      Size = 3
    end
    object ZEntradaOUTROS_NOME: TStringField
      FieldName = 'OUTROS_NOME'
      Size = 100
    end
    object ZEntradaVALOR_REAL_1: TFloatField
      FieldName = 'VALOR_REAL_1'
    end
    object ZEntradaVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object ZEntradaVALOR_ALUQUEL: TFloatField
      FieldName = 'VALOR_ALUQUEL'
    end
    object ZEntradaVALOR_CONDOMINIO: TFloatField
      FieldName = 'VALOR_CONDOMINIO'
    end
    object ZEntradaVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
    end
    object ZEntradaVALOR_OUTROS_NOME: TStringField
      FieldName = 'VALOR_OUTROS_NOME'
      Size = 100
    end
    object ZEntradaAREA_L: TFloatField
      FieldName = 'AREA_L'
    end
    object ZEntradaAREA_C: TFloatField
      FieldName = 'AREA_C'
    end
    object ZEntradaAREA_FATOR: TFloatField
      FieldName = 'AREA_FATOR'
    end
    object ZEntradaAREA_OUTROS: TFloatField
      FieldName = 'AREA_OUTROS'
    end
    object ZEntradaAREA_OUTROS_FATOR: TFloatField
      FieldName = 'AREA_OUTROS_FATOR'
    end
    object ZEntradaAREA_CONSTRUIDA: TFloatField
      FieldName = 'AREA_CONSTRUIDA'
    end
    object ZEntradaAREA_CONSTRUIDA_FATOR: TFloatField
      FieldName = 'AREA_CONSTRUIDA_FATOR'
    end
    object ZEntradaAREA_DEPRECIACAO: TStringField
      FieldName = 'AREA_DEPRECIACAO'
      Size = 100
    end
    object ZEntradaNUM_LUZ: TStringField
      FieldName = 'NUM_LUZ'
      Size = 100
    end
    object ZEntradaNUM_MATRICULA: TStringField
      FieldName = 'NUM_MATRICULA'
      Size = 50
    end
    object ZEntradaNUM_AGUA: TStringField
      FieldName = 'NUM_AGUA'
      Size = 100
    end
    object ZEntradaENTRADA_CHAVES: TSmallintField
      FieldName = 'ENTRADA_CHAVES'
    end
    object ZEntradaHORARIO_VISITA: TStringField
      FieldName = 'HORARIO_VISITA'
      Size = 50
    end
    object ZEntradaCHAVE_QUADRO: TStringField
      FieldName = 'CHAVE_QUADRO'
      Size = 50
    end
    object ZEntradaOBS_1: TStringField
      FieldName = 'OBS_1'
      Size = 300
    end
    object ZEntradaDATA_1: TDateField
      FieldName = 'DATA_1'
      Required = True
    end
    object ZEntradaATIVO_2: TStringField
      FieldName = 'ATIVO_2'
      Required = True
      Size = 3
    end
    object ZEntradaALTERACAO_FUNC_1: TIntegerField
      FieldName = 'ALTERACAO_FUNC_1'
      Required = True
    end
    object ZEntradaALTERACAO_DATA_1: TDateField
      FieldName = 'ALTERACAO_DATA_1'
      Required = True
    end
    object ZEntradaANOTACOES: TMemoField
      FieldName = 'ANOTACOES'
      BlobType = ftMemo
    end
    object ZEntradaANUNCIAR: TStringField
      FieldName = 'ANUNCIAR'
      Required = True
      Size = 3
    end
    object ZEntradaEXCLUSIVO: TStringField
      FieldName = 'EXCLUSIVO'
      Required = True
      Size = 3
    end
    object ZEntradaLOCAL_PGTO: TStringField
      FieldName = 'LOCAL_PGTO'
      Size = 100
    end
    object ZEntradaFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      Size = 15
    end
    object ZEntradaNOTA_1: TSmallintField
      FieldName = 'NOTA_1'
    end
    object ZEntradaPLACA_DATA: TDateField
      FieldName = 'PLACA_DATA'
    end
    object ZEntradaIMPRIMIR_1: TStringField
      FieldName = 'IMPRIMIR_1'
      Size = 3
    end
    object ZEntradaDORMITORIOS: TSmallintField
      FieldName = 'DORMITORIOS'
      Required = True
    end
    object ZEntradaINTERNET: TStringField
      FieldName = 'INTERNET'
      Size = 3
    end
    object ZEntradaCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 3
    end
    object ZEntradaID_CONTRATO_1: TIntegerField
      FieldName = 'ID_CONTRATO_1'
      Required = True
    end
    object ZEntradaID_IMOVEL_2: TIntegerField
      FieldName = 'ID_IMOVEL_2'
      Required = True
    end
    object ZEntradaTIPO_CONTRATO: TStringField
      FieldName = 'TIPO_CONTRATO'
      Required = True
      Size = 15
    end
    object ZEntradaVALOR_1: TFloatField
      FieldName = 'VALOR_1'
    end
    object ZEntradaVALOR_REAJUSTE: TFloatField
      FieldName = 'VALOR_REAJUSTE'
    end
    object ZEntradaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object ZEntradaTARIFA: TFloatField
      FieldName = 'TARIFA'
    end
    object ZEntradaVIGENCIA: TSmallintField
      FieldName = 'VIGENCIA'
    end
    object ZEntradaREPASSE: TStringField
      FieldName = 'REPASSE'
      Size = 100
    end
    object ZEntradaCORRESPONDENCIA: TStringField
      FieldName = 'CORRESPONDENCIA'
      Size = 100
    end
    object ZEntradaMORADORES: TSmallintField
      FieldName = 'MORADORES'
    end
    object ZEntradaFINALIDADE_1: TStringField
      FieldName = 'FINALIDADE_1'
      Size = 100
    end
    object ZEntradaMULTA: TFloatField
      FieldName = 'MULTA'
    end
    object ZEntradaMULTA_APOS: TSmallintField
      FieldName = 'MULTA_APOS'
    end
    object ZEntradaMULTA_MORA: TFloatField
      FieldName = 'MULTA_MORA'
    end
    object ZEntradaMULTA_MORA_APOS: TSmallintField
      FieldName = 'MULTA_MORA_APOS'
    end
    object ZEntradaJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object ZEntradaJUROS_APOS: TSmallintField
      FieldName = 'JUROS_APOS'
    end
    object ZEntradaHONORARIO: TFloatField
      FieldName = 'HONORARIO'
    end
    object ZEntradaHONORARIO_APOS: TSmallintField
      FieldName = 'HONORARIO_APOS'
    end
    object ZEntradaREAJUSTE: TStringField
      FieldName = 'REAJUSTE'
      Size = 50
    end
    object ZEntradaREAJUSTE_APOS: TSmallintField
      FieldName = 'REAJUSTE_APOS'
    end
    object ZEntradaDESCONTO_1: TFloatField
      FieldName = 'DESCONTO_1'
    end
    object ZEntradaDESCONTO_ATE: TSmallintField
      FieldName = 'DESCONTO_ATE'
    end
    object ZEntradaISENTO_CPMF: TStringField
      FieldName = 'ISENTO_CPMF'
      Size = 3
    end
    object ZEntradaHONORARIO_1ALUGUEL: TStringField
      FieldName = 'HONORARIO_1ALUGUEL'
      Size = 3
    end
    object ZEntradaHONORARIO_ADMIN: TStringField
      FieldName = 'HONORARIO_ADMIN'
      Size = 3
    end
    object ZEntradaHONORARIO_REPASSE: TStringField
      FieldName = 'HONORARIO_REPASSE'
      Size = 3
    end
    object ZEntradaPARCELADO_EM: TSmallintField
      FieldName = 'PARCELADO_EM'
    end
    object ZEntradaCOMISSAO_LOCACAO: TFloatField
      FieldName = 'COMISSAO_LOCACAO'
    end
    object ZEntradaCOMISSAO_CAPTACAO: TFloatField
      FieldName = 'COMISSAO_CAPTACAO'
    end
    object ZEntradaCOMISSAO_DESPESAS: TFloatField
      FieldName = 'COMISSAO_DESPESAS'
    end
    object ZEntradaCOMISSAO_INDICACAO: TFloatField
      FieldName = 'COMISSAO_INDICACAO'
    end
    object ZEntradaRENTA_ALUGUEL: TFloatField
      FieldName = 'RENTA_ALUGUEL'
    end
    object ZEntradaRENTA_EFETIVADO: TFloatField
      FieldName = 'RENTA_EFETIVADO'
    end
    object ZEntradaRENTA_HONOR_ALUGUEL: TFloatField
      FieldName = 'RENTA_HONOR_ALUGUEL'
    end
    object ZEntradaRENTA_HONOR_ADMIN: TFloatField
      FieldName = 'RENTA_HONOR_ADMIN'
    end
    object ZEntradaRES_INADIM_OCP: TStringField
      FieldName = 'RES_INADIM_OCP'
      Size = 3
    end
    object ZEntradaRES_INADIM_DES: TStringField
      FieldName = 'RES_INADIM_DES'
      Size = 3
    end
    object ZEntradaRES_ANTECIP_OCP: TStringField
      FieldName = 'RES_ANTECIP_OCP'
      Size = 3
    end
    object ZEntradaRES_ANTECIP_DES: TStringField
      FieldName = 'RES_ANTECIP_DES'
      Size = 3
    end
    object ZEntradaRES_MOTIVO: TStringField
      FieldName = 'RES_MOTIVO'
      Size = 100
    end
    object ZEntradaFOTO_1: TStringField
      FieldName = 'FOTO_1'
      Size = 100
    end
    object ZEntradaDATA_2: TDateField
      FieldName = 'DATA_2'
      Required = True
    end
    object ZEntradaATIVO_3: TStringField
      FieldName = 'ATIVO_3'
      Required = True
      Size = 3
    end
    object ZEntradaID_REFERENCIA: TLargeintField
      FieldName = 'ID_REFERENCIA'
    end
    object ZEntradaALTERACAO_FUNC_2: TIntegerField
      FieldName = 'ALTERACAO_FUNC_2'
      Required = True
    end
    object ZEntradaALTERACAO_DATA_2: TDateTimeField
      FieldName = 'ALTERACAO_DATA_2'
      Required = True
    end
    object ZEntradaOBS_2: TMemoField
      FieldName = 'OBS_2'
      BlobType = ftMemo
    end
    object ZEntradaINFO_1: TStringField
      FieldName = 'INFO_1'
      Size = 400
    end
    object ZEntradaINFO_2: TStringField
      FieldName = 'INFO_2'
      Size = 400
    end
    object ZEntradaINFO_3: TStringField
      FieldName = 'INFO_3'
      Size = 400
    end
    object ZEntradaINFO_4: TStringField
      FieldName = 'INFO_4'
      Size = 400
    end
    object ZEntradaID_USUARIO_1: TIntegerField
      FieldName = 'ID_USUARIO_1'
      Required = True
    end
    object ZEntradaNOME_1: TStringField
      FieldName = 'NOME_1'
      Required = True
      Size = 100
    end
    object ZEntradaSENHA_1: TStringField
      FieldName = 'SENHA_1'
      Required = True
      Size = 8
    end
    object ZEntradaFUNDO: TStringField
      FieldName = 'FUNDO'
      Size = 100
    end
    object ZEntradaATIVO_4: TStringField
      FieldName = 'ATIVO_4'
      Required = True
      Size = 3
    end
    object ZEntradaADMINISTRADOR: TStringField
      FieldName = 'ADMINISTRADOR'
      Required = True
      Size = 3
    end
    object ZEntradaEMAIL_1: TStringField
      FieldName = 'EMAIL_1'
      Size = 200
    end
    object ZEntradaID_CAIXA_1: TIntegerField
      FieldName = 'ID_CAIXA_1'
      Required = True
    end
    object ZEntradaID_CATEGORIA_1: TIntegerField
      FieldName = 'ID_CATEGORIA_1'
      Required = True
    end
    object ZEntradaID_TIPO_1: TIntegerField
      FieldName = 'ID_TIPO_1'
      Required = True
    end
    object ZEntradaID_SUBTIPO_1: TIntegerField
      FieldName = 'ID_SUBTIPO_1'
      Required = True
    end
    object ZEntradaID_PESSOA_3: TIntegerField
      FieldName = 'ID_PESSOA_3'
    end
    object ZEntradaID_IMOVEL_3: TIntegerField
      FieldName = 'ID_IMOVEL_3'
    end
    object ZEntradaID_CONTRATO_2: TIntegerField
      FieldName = 'ID_CONTRATO_2'
    end
    object ZEntradaID_FUNCIONARIO_1: TIntegerField
      FieldName = 'ID_FUNCIONARIO_1'
      Required = True
    end
    object ZEntradaID_ENTRADA_1: TIntegerField
      FieldName = 'ID_ENTRADA_1'
    end
    object ZEntradaID_SAIDA_1: TIntegerField
      FieldName = 'ID_SAIDA_1'
    end
    object ZEntradaDATA_REF_1: TDateField
      FieldName = 'DATA_REF_1'
      Required = True
    end
    object ZEntradaDATA_CAD_1: TDateTimeField
      FieldName = 'DATA_CAD_1'
      Required = True
    end
    object ZEntradaDATA_ALT_1: TDateTimeField
      FieldName = 'DATA_ALT_1'
      Required = True
    end
    object ZEntradaDATA_PGTO_1: TDateField
      FieldName = 'DATA_PGTO_1'
    end
    object ZEntradaHORA_PGTO_1: TTimeField
      FieldName = 'HORA_PGTO_1'
    end
    object ZEntradaDOCUMENTO_1: TStringField
      FieldName = 'DOCUMENTO_1'
      Size = 200
    end
    object ZEntradaOPERACAO_1: TStringField
      FieldName = 'OPERACAO_1'
      Required = True
      Size = 400
    end
    object ZEntradaVALOR_2: TFloatField
      FieldName = 'VALOR_2'
      Required = True
    end
    object ZEntradaVALOR_JUROS_1: TFloatField
      FieldName = 'VALOR_JUROS_1'
      Required = True
    end
    object ZEntradaVALOR_MULTA_1: TFloatField
      FieldName = 'VALOR_MULTA_1'
      Required = True
    end
    object ZEntradaVALOR_DESCONTO_1: TFloatField
      FieldName = 'VALOR_DESCONTO_1'
      Required = True
    end
    object ZEntradaPARCELA_1: TIntegerField
      FieldName = 'PARCELA_1'
      Required = True
    end
    object ZEntradaPENDENTE_1: TStringField
      FieldName = 'PENDENTE_1'
      Required = True
      Size = 3
    end
    object ZEntradaANOTACAO_1: TMemoField
      FieldName = 'ANOTACAO_1'
      BlobType = ftMemo
    end
    object ZEntradaATIVO_5: TStringField
      FieldName = 'ATIVO_5'
      Required = True
      Size = 3
    end
    object ZEntradaGARANTIDO_1: TStringField
      FieldName = 'GARANTIDO_1'
      Required = True
      Size = 3
    end
    object ZEntradaRUA: TStringField
      FieldName = 'RUA'
      Required = True
      Size = 100
    end
  end
  object ZSaida: TZQuery
    Connection = PRINCIPAL.Conexao
    SQL.Strings = (
      
        'SELECT (SELECT RESULT FROM spvalorcobranca1(1, C.data_ref, C.dat' +
        'a_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)' +
        ') as  VALOR_REAL,'
      
        'C.*, CAT.nome AS CATEGORIA, GRU.nome AS GRUPO, SUB.nome AS SUBGR' +
        'UPO, P.*, I.*, CONT.*, USU.*, CSAI.*, L.nome AS RUA, PES.NOME AS' +
        ' INQUILINO,'
      
        '(SELECT RESULT FROM spvalorcobranca1(1, CSAI.data_ref, CSAI.data' +
        '_pgto, CSAI.valor, CSAI.valor_juros, CSAI.valor_multa, CSAI.valo' +
        'r_desconto)) as VR,'
      
        '(SELECT FIRST 1 P.NOME FROM PESSOA_CONTRATO PC INNER JOIN PESSOA' +
        ' P ON P.id_pessoa = PC.id_pessoa AND PC.id_contrato =C.id_contra' +
        'to AND'
      
        '(PC.tipo = '#39'LOCAT'#193'RIO'#39' or PC.tipo = '#39'INQUILINO'#39' or PC.tipo = '#39'CO' +
        'MPRADOR'#39' or PC.tipo = '#39'MORADOR'#39')) as NOME_INQUILINO  FROM CAIXA_' +
        'SAIDA C'
      
        'LEFT JOIN CAIXA_SIS CAT ON CAT.id_caixa_sis = C.id_categoria LEF' +
        'T JOIN CAIXA_SIS GRU ON GRU.id_caixa_sis = C.id_tipo LEFT JOIN C' +
        'AIXA_SIS SUB'
      
        'ON SUB.id_caixa_sis = C.id_subtipo LEFT JOIN PESSOA P ON P.id_pe' +
        'ssoa = C.id_pessoa LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imov' +
        'el'
      
        'LEFT JOIN CONTRATO CONT ON CONT.id_contrato = C.id_contrato LEFT' +
        ' JOIN USUARIO USU ON USU.id_usuario = C.id_funcionario LEFT JOIN' +
        ' logradouro L ON'
      
        'L.id_logradouro = I.id_logradouro LEFT JOIN CAIXA_ENTRADA CSAI O' +
        'N CSAI.id_caixa = C.id_ENTRADA LEFT JOIN PESSOA PES ON PES.id_pe' +
        'ssoa = CSAI.id_pessoa'
      
        'WHERE  (C.data_ref >= '#39'25.11.2009'#39' AND C.data_ref <= '#39'30.11.2009' +
        #39') AND  C.id_pessoa = 51 AND C.ID_CATEGORIA IN (27, 1, 0)  AND  ' +
        'C.ID_TIPO IN (2, 28, 0)'
      
        ' AND  C.ID_SUBTIPO IN (6, 34, 33, 5, 10, 35, 30, 8, 4, 7, 3, 11,' +
        ' 29, 9, 32, 0)  AND  C.ATIVO <> '#39'XXX'#39' order by c.data_ref DESC, ' +
        'p.nome')
    Params = <>
    Left = 96
    Top = 472
    object ZSaidaVALOR_REAL: TFloatField
      FieldName = 'VALOR_REAL'
      ReadOnly = True
    end
    object ZSaidaID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Required = True
    end
    object ZSaidaID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Required = True
    end
    object ZSaidaID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object ZSaidaID_SUBTIPO: TIntegerField
      FieldName = 'ID_SUBTIPO'
      Required = True
    end
    object ZSaidaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object ZSaidaID_IMOVEL: TIntegerField
      FieldName = 'ID_IMOVEL'
    end
    object ZSaidaID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object ZSaidaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object ZSaidaID_ENTRADA: TIntegerField
      FieldName = 'ID_ENTRADA'
    end
    object ZSaidaID_SAIDA: TIntegerField
      FieldName = 'ID_SAIDA'
    end
    object ZSaidaDATA_REF: TDateField
      FieldName = 'DATA_REF'
      Required = True
    end
    object ZSaidaDATA_CAD: TDateTimeField
      FieldName = 'DATA_CAD'
      Required = True
    end
    object ZSaidaDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
      Required = True
    end
    object ZSaidaDATA_PGTO: TDateField
      FieldName = 'DATA_PGTO'
    end
    object ZSaidaHORA_PGTO: TTimeField
      FieldName = 'HORA_PGTO'
    end
    object ZSaidaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 200
    end
    object ZSaidaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Required = True
      Size = 400
    end
    object ZSaidaVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
    object ZSaidaVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
      Required = True
    end
    object ZSaidaVALOR_MULTA: TFloatField
      FieldName = 'VALOR_MULTA'
      Required = True
    end
    object ZSaidaVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      Required = True
    end
    object ZSaidaPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Required = True
    end
    object ZSaidaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Required = True
      Size = 3
    end
    object ZSaidaANOTACAO: TMemoField
      FieldName = 'ANOTACAO'
      BlobType = ftMemo
    end
    object ZSaidaATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      Size = 3
    end
    object ZSaidaGARANTIDO: TStringField
      FieldName = 'GARANTIDO'
      Required = True
      Size = 3
    end
    object ZSaidaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object ZSaidaGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object ZSaidaSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      Size = 100
    end
    object ZSaidaID_PESSOA_1: TIntegerField
      FieldName = 'ID_PESSOA_1'
      Required = True
    end
    object ZSaidaID_PESSOA_TIPO: TIntegerField
      FieldName = 'ID_PESSOA_TIPO'
    end
    object ZSaidaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object ZSaidaID_OCUPACAO: TIntegerField
      FieldName = 'ID_OCUPACAO'
    end
    object ZSaidaPESSOA_FISICA: TStringField
      FieldName = 'PESSOA_FISICA'
      Required = True
      Size = 3
    end
    object ZSaidaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object ZSaidaNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 100
    end
    object ZSaidaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 100
    end
    object ZSaidaRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 100
    end
    object ZSaidaRG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
    end
    object ZSaidaRG_ORGAO: TStringField
      FieldName = 'RG_ORGAO'
      Size = 6
    end
    object ZSaidaIM: TStringField
      FieldName = 'IM'
      Size = 100
    end
    object ZSaidaSEXO: TStringField
      FieldName = 'SEXO'
      Required = True
      Size = 3
    end
    object ZSaidaPAI: TStringField
      FieldName = 'PAI'
      Size = 100
    end
    object ZSaidaMAE: TStringField
      FieldName = 'MAE'
      Size = 100
    end
    object ZSaidaCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 100
    end
    object ZSaidaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 100
    end
    object ZSaidaESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Required = True
      Size = 100
    end
    object ZSaidaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 100
    end
    object ZSaidaEMPRESA_CARGO: TStringField
      FieldName = 'EMPRESA_CARGO'
      Size = 100
    end
    object ZSaidaEMPRESA_RENDA: TFloatField
      FieldName = 'EMPRESA_RENDA'
    end
    object ZSaidaEMPRESA_TEMPO: TDateField
      FieldName = 'EMPRESA_TEMPO'
    end
    object ZSaidaCONSULTA_SPC: TStringField
      FieldName = 'CONSULTA_SPC'
      Required = True
      Size = 3
    end
    object ZSaidaCONSULTA_CERASA: TStringField
      FieldName = 'CONSULTA_CERASA'
      Required = True
      Size = 3
    end
    object ZSaidaCONSULTA_TELEFONE: TStringField
      FieldName = 'CONSULTA_TELEFONE'
      Required = True
      Size = 3
    end
    object ZSaidaCONSULTA_OUTROS: TStringField
      FieldName = 'CONSULTA_OUTROS'
      Required = True
      Size = 3
    end
    object ZSaidaCONSULTA_DADOS: TMemoField
      FieldName = 'CONSULTA_DADOS'
      BlobType = ftMemo
    end
    object ZSaidaCREDITO: TFloatField
      FieldName = 'CREDITO'
    end
    object ZSaidaCREDITO_VAL: TDateField
      FieldName = 'CREDITO_VAL'
    end
    object ZSaidaCREDITO_VAL_ATIVO: TStringField
      FieldName = 'CREDITO_VAL_ATIVO'
      Required = True
      Size = 3
    end
    object ZSaidaNOTA: TSmallintField
      FieldName = 'NOTA'
    end
    object ZSaidaNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
    end
    object ZSaidaCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object ZSaidaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object ZSaidaFILHOS: TStringField
      FieldName = 'FILHOS'
      Required = True
      Size = 3
    end
    object ZSaidaFOTO: TStringField
      FieldName = 'FOTO'
      Size = 100
    end
    object ZSaidaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object ZSaidaMSN: TStringField
      FieldName = 'MSN'
      Size = 50
    end
    object ZSaidaICQ: TStringField
      FieldName = 'ICQ'
      Size = 50
    end
    object ZSaidaYAHOO: TStringField
      FieldName = 'YAHOO'
      Size = 50
    end
    object ZSaidaAIM: TStringField
      FieldName = 'AIM'
      Size = 50
    end
    object ZSaidaMALADIRETA: TStringField
      FieldName = 'MALADIRETA'
      Required = True
      Size = 3
    end
    object ZSaidaDATA: TDateTimeField
      FieldName = 'DATA'
      Required = True
    end
    object ZSaidaOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object ZSaidaATIVO_1: TStringField
      FieldName = 'ATIVO_1'
      Required = True
      Size = 3
    end
    object ZSaidaALTERACAO_FUNC: TSmallintField
      FieldName = 'ALTERACAO_FUNC'
    end
    object ZSaidaALTERACAO_DATA: TDateField
      FieldName = 'ALTERACAO_DATA'
    end
    object ZSaidaIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      Required = True
      Size = 3
    end
    object ZSaidaPESSOA_RESPONSAVEL: TIntegerField
      FieldName = 'PESSOA_RESPONSAVEL'
    end
    object ZSaidaSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 8
    end
    object ZSaidaID_IMOVEL_1: TIntegerField
      FieldName = 'ID_IMOVEL_1'
      Required = True
    end
    object ZSaidaID_LOGRADOURO: TIntegerField
      FieldName = 'ID_LOGRADOURO'
      Required = True
    end
    object ZSaidaID_IMOVEL_SUBTIPO: TIntegerField
      FieldName = 'ID_IMOVEL_SUBTIPO'
      Required = True
    end
    object ZSaidaID_IMOVEL_TIPO: TIntegerField
      FieldName = 'ID_IMOVEL_TIPO'
      Required = True
    end
    object ZSaidaID_PESSOA_2: TIntegerField
      FieldName = 'ID_PESSOA_2'
      Required = True
    end
    object ZSaidaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Required = True
    end
    object ZSaidaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object ZSaidaSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 15
    end
    object ZSaidaDEPOSITO: TStringField
      FieldName = 'DEPOSITO'
      Size = 3
    end
    object ZSaidaSEGURO_FIANCA: TStringField
      FieldName = 'SEGURO_FIANCA'
      Size = 3
    end
    object ZSaidaFIADOR: TStringField
      FieldName = 'FIADOR'
      Size = 3
    end
    object ZSaidaVISITACORRETOR: TStringField
      FieldName = 'VISITACORRETOR'
      Size = 3
    end
    object ZSaidaOCUPADO: TStringField
      FieldName = 'OCUPADO'
      Size = 3
    end
    object ZSaidaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 3
    end
    object ZSaidaVENDA: TStringField
      FieldName = 'VENDA'
      Required = True
      Size = 3
    end
    object ZSaidaALUGUEL: TStringField
      FieldName = 'ALUGUEL'
      Required = True
      Size = 3
    end
    object ZSaidaOUTROS: TStringField
      FieldName = 'OUTROS'
      Required = True
      Size = 3
    end
    object ZSaidaOUTROS_NOME: TStringField
      FieldName = 'OUTROS_NOME'
      Size = 100
    end
    object ZSaidaVALOR_REAL_1: TFloatField
      FieldName = 'VALOR_REAL_1'
    end
    object ZSaidaVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object ZSaidaVALOR_ALUQUEL: TFloatField
      FieldName = 'VALOR_ALUQUEL'
    end
    object ZSaidaVALOR_CONDOMINIO: TFloatField
      FieldName = 'VALOR_CONDOMINIO'
    end
    object ZSaidaVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
    end
    object ZSaidaVALOR_OUTROS_NOME: TStringField
      FieldName = 'VALOR_OUTROS_NOME'
      Size = 100
    end
    object ZSaidaAREA_L: TFloatField
      FieldName = 'AREA_L'
    end
    object ZSaidaAREA_C: TFloatField
      FieldName = 'AREA_C'
    end
    object ZSaidaAREA_FATOR: TFloatField
      FieldName = 'AREA_FATOR'
    end
    object ZSaidaAREA_OUTROS: TFloatField
      FieldName = 'AREA_OUTROS'
    end
    object ZSaidaAREA_OUTROS_FATOR: TFloatField
      FieldName = 'AREA_OUTROS_FATOR'
    end
    object ZSaidaAREA_CONSTRUIDA: TFloatField
      FieldName = 'AREA_CONSTRUIDA'
    end
    object ZSaidaAREA_CONSTRUIDA_FATOR: TFloatField
      FieldName = 'AREA_CONSTRUIDA_FATOR'
    end
    object ZSaidaAREA_DEPRECIACAO: TStringField
      FieldName = 'AREA_DEPRECIACAO'
      Size = 100
    end
    object ZSaidaNUM_LUZ: TStringField
      FieldName = 'NUM_LUZ'
      Size = 100
    end
    object ZSaidaNUM_MATRICULA: TStringField
      FieldName = 'NUM_MATRICULA'
      Size = 50
    end
    object ZSaidaNUM_AGUA: TStringField
      FieldName = 'NUM_AGUA'
      Size = 100
    end
    object ZSaidaENTRADA_CHAVES: TSmallintField
      FieldName = 'ENTRADA_CHAVES'
    end
    object ZSaidaHORARIO_VISITA: TStringField
      FieldName = 'HORARIO_VISITA'
      Size = 50
    end
    object ZSaidaCHAVE_QUADRO: TStringField
      FieldName = 'CHAVE_QUADRO'
      Size = 50
    end
    object ZSaidaOBS_1: TStringField
      FieldName = 'OBS_1'
      Size = 300
    end
    object ZSaidaDATA_1: TDateField
      FieldName = 'DATA_1'
      Required = True
    end
    object ZSaidaATIVO_2: TStringField
      FieldName = 'ATIVO_2'
      Required = True
      Size = 3
    end
    object ZSaidaALTERACAO_FUNC_1: TIntegerField
      FieldName = 'ALTERACAO_FUNC_1'
      Required = True
    end
    object ZSaidaALTERACAO_DATA_1: TDateField
      FieldName = 'ALTERACAO_DATA_1'
      Required = True
    end
    object ZSaidaANOTACOES: TMemoField
      FieldName = 'ANOTACOES'
      BlobType = ftMemo
    end
    object ZSaidaANUNCIAR: TStringField
      FieldName = 'ANUNCIAR'
      Required = True
      Size = 3
    end
    object ZSaidaEXCLUSIVO: TStringField
      FieldName = 'EXCLUSIVO'
      Required = True
      Size = 3
    end
    object ZSaidaLOCAL_PGTO: TStringField
      FieldName = 'LOCAL_PGTO'
      Size = 100
    end
    object ZSaidaFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      Size = 15
    end
    object ZSaidaNOTA_1: TSmallintField
      FieldName = 'NOTA_1'
    end
    object ZSaidaPLACA_DATA: TDateField
      FieldName = 'PLACA_DATA'
    end
    object ZSaidaIMPRIMIR_1: TStringField
      FieldName = 'IMPRIMIR_1'
      Size = 3
    end
    object ZSaidaDORMITORIOS: TSmallintField
      FieldName = 'DORMITORIOS'
      Required = True
    end
    object ZSaidaINTERNET: TStringField
      FieldName = 'INTERNET'
      Size = 3
    end
    object ZSaidaCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 3
    end
    object ZSaidaID_CONTRATO_1: TIntegerField
      FieldName = 'ID_CONTRATO_1'
      Required = True
    end
    object ZSaidaID_IMOVEL_2: TIntegerField
      FieldName = 'ID_IMOVEL_2'
      Required = True
    end
    object ZSaidaTIPO_CONTRATO: TStringField
      FieldName = 'TIPO_CONTRATO'
      Required = True
      Size = 15
    end
    object ZSaidaVALOR_1: TFloatField
      FieldName = 'VALOR_1'
    end
    object ZSaidaVALOR_REAJUSTE: TFloatField
      FieldName = 'VALOR_REAJUSTE'
    end
    object ZSaidaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object ZSaidaTARIFA: TFloatField
      FieldName = 'TARIFA'
    end
    object ZSaidaVIGENCIA: TSmallintField
      FieldName = 'VIGENCIA'
    end
    object ZSaidaREPASSE: TStringField
      FieldName = 'REPASSE'
      Size = 100
    end
    object ZSaidaCORRESPONDENCIA: TStringField
      FieldName = 'CORRESPONDENCIA'
      Size = 100
    end
    object ZSaidaMORADORES: TSmallintField
      FieldName = 'MORADORES'
    end
    object ZSaidaFINALIDADE_1: TStringField
      FieldName = 'FINALIDADE_1'
      Size = 100
    end
    object ZSaidaMULTA: TFloatField
      FieldName = 'MULTA'
    end
    object ZSaidaMULTA_APOS: TSmallintField
      FieldName = 'MULTA_APOS'
    end
    object ZSaidaMULTA_MORA: TFloatField
      FieldName = 'MULTA_MORA'
    end
    object ZSaidaMULTA_MORA_APOS: TSmallintField
      FieldName = 'MULTA_MORA_APOS'
    end
    object ZSaidaJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object ZSaidaJUROS_APOS: TSmallintField
      FieldName = 'JUROS_APOS'
    end
    object ZSaidaHONORARIO: TFloatField
      FieldName = 'HONORARIO'
    end
    object ZSaidaHONORARIO_APOS: TSmallintField
      FieldName = 'HONORARIO_APOS'
    end
    object ZSaidaREAJUSTE: TStringField
      FieldName = 'REAJUSTE'
      Size = 50
    end
    object ZSaidaREAJUSTE_APOS: TSmallintField
      FieldName = 'REAJUSTE_APOS'
    end
    object ZSaidaDESCONTO_1: TFloatField
      FieldName = 'DESCONTO_1'
    end
    object ZSaidaDESCONTO_ATE: TSmallintField
      FieldName = 'DESCONTO_ATE'
    end
    object ZSaidaISENTO_CPMF: TStringField
      FieldName = 'ISENTO_CPMF'
      Size = 3
    end
    object ZSaidaHONORARIO_1ALUGUEL: TStringField
      FieldName = 'HONORARIO_1ALUGUEL'
      Size = 3
    end
    object ZSaidaHONORARIO_ADMIN: TStringField
      FieldName = 'HONORARIO_ADMIN'
      Size = 3
    end
    object ZSaidaHONORARIO_REPASSE: TStringField
      FieldName = 'HONORARIO_REPASSE'
      Size = 3
    end
    object ZSaidaPARCELADO_EM: TSmallintField
      FieldName = 'PARCELADO_EM'
    end
    object ZSaidaCOMISSAO_LOCACAO: TFloatField
      FieldName = 'COMISSAO_LOCACAO'
    end
    object ZSaidaCOMISSAO_CAPTACAO: TFloatField
      FieldName = 'COMISSAO_CAPTACAO'
    end
    object ZSaidaCOMISSAO_DESPESAS: TFloatField
      FieldName = 'COMISSAO_DESPESAS'
    end
    object ZSaidaCOMISSAO_INDICACAO: TFloatField
      FieldName = 'COMISSAO_INDICACAO'
    end
    object ZSaidaRENTA_ALUGUEL: TFloatField
      FieldName = 'RENTA_ALUGUEL'
    end
    object ZSaidaRENTA_EFETIVADO: TFloatField
      FieldName = 'RENTA_EFETIVADO'
    end
    object ZSaidaRENTA_HONOR_ALUGUEL: TFloatField
      FieldName = 'RENTA_HONOR_ALUGUEL'
    end
    object ZSaidaRENTA_HONOR_ADMIN: TFloatField
      FieldName = 'RENTA_HONOR_ADMIN'
    end
    object ZSaidaRES_INADIM_OCP: TStringField
      FieldName = 'RES_INADIM_OCP'
      Size = 3
    end
    object ZSaidaRES_INADIM_DES: TStringField
      FieldName = 'RES_INADIM_DES'
      Size = 3
    end
    object ZSaidaRES_ANTECIP_OCP: TStringField
      FieldName = 'RES_ANTECIP_OCP'
      Size = 3
    end
    object ZSaidaRES_ANTECIP_DES: TStringField
      FieldName = 'RES_ANTECIP_DES'
      Size = 3
    end
    object ZSaidaRES_MOTIVO: TStringField
      FieldName = 'RES_MOTIVO'
      Size = 100
    end
    object ZSaidaFOTO_1: TStringField
      FieldName = 'FOTO_1'
      Size = 100
    end
    object ZSaidaDATA_2: TDateField
      FieldName = 'DATA_2'
      Required = True
    end
    object ZSaidaATIVO_3: TStringField
      FieldName = 'ATIVO_3'
      Required = True
      Size = 3
    end
    object ZSaidaID_REFERENCIA: TLargeintField
      FieldName = 'ID_REFERENCIA'
    end
    object ZSaidaALTERACAO_FUNC_2: TIntegerField
      FieldName = 'ALTERACAO_FUNC_2'
      Required = True
    end
    object ZSaidaALTERACAO_DATA_2: TDateTimeField
      FieldName = 'ALTERACAO_DATA_2'
      Required = True
    end
    object ZSaidaOBS_2: TMemoField
      FieldName = 'OBS_2'
      BlobType = ftMemo
    end
    object ZSaidaINFO_1: TStringField
      FieldName = 'INFO_1'
      Size = 400
    end
    object ZSaidaINFO_2: TStringField
      FieldName = 'INFO_2'
      Size = 400
    end
    object ZSaidaINFO_3: TStringField
      FieldName = 'INFO_3'
      Size = 400
    end
    object ZSaidaINFO_4: TStringField
      FieldName = 'INFO_4'
      Size = 400
    end
    object ZSaidaID_USUARIO_1: TIntegerField
      FieldName = 'ID_USUARIO_1'
      Required = True
    end
    object ZSaidaNOME_1: TStringField
      FieldName = 'NOME_1'
      Required = True
      Size = 100
    end
    object ZSaidaSENHA_1: TStringField
      FieldName = 'SENHA_1'
      Required = True
      Size = 8
    end
    object ZSaidaFUNDO: TStringField
      FieldName = 'FUNDO'
      Size = 100
    end
    object ZSaidaATIVO_4: TStringField
      FieldName = 'ATIVO_4'
      Required = True
      Size = 3
    end
    object ZSaidaADMINISTRADOR: TStringField
      FieldName = 'ADMINISTRADOR'
      Required = True
      Size = 3
    end
    object ZSaidaEMAIL_1: TStringField
      FieldName = 'EMAIL_1'
      Size = 200
    end
    object ZSaidaID_CAIXA_1: TIntegerField
      FieldName = 'ID_CAIXA_1'
      Required = True
    end
    object ZSaidaID_CATEGORIA_1: TIntegerField
      FieldName = 'ID_CATEGORIA_1'
      Required = True
    end
    object ZSaidaID_TIPO_1: TIntegerField
      FieldName = 'ID_TIPO_1'
      Required = True
    end
    object ZSaidaID_SUBTIPO_1: TIntegerField
      FieldName = 'ID_SUBTIPO_1'
      Required = True
    end
    object ZSaidaID_PESSOA_3: TIntegerField
      FieldName = 'ID_PESSOA_3'
    end
    object ZSaidaID_IMOVEL_3: TIntegerField
      FieldName = 'ID_IMOVEL_3'
    end
    object ZSaidaID_CONTRATO_2: TIntegerField
      FieldName = 'ID_CONTRATO_2'
    end
    object ZSaidaID_FUNCIONARIO_1: TIntegerField
      FieldName = 'ID_FUNCIONARIO_1'
      Required = True
    end
    object ZSaidaID_ENTRADA_1: TIntegerField
      FieldName = 'ID_ENTRADA_1'
    end
    object ZSaidaID_SAIDA_1: TIntegerField
      FieldName = 'ID_SAIDA_1'
    end
    object ZSaidaDATA_REF_1: TDateField
      FieldName = 'DATA_REF_1'
      Required = True
    end
    object ZSaidaDATA_CAD_1: TDateTimeField
      FieldName = 'DATA_CAD_1'
      Required = True
    end
    object ZSaidaDATA_ALT_1: TDateTimeField
      FieldName = 'DATA_ALT_1'
      Required = True
    end
    object ZSaidaDATA_PGTO_1: TDateField
      FieldName = 'DATA_PGTO_1'
    end
    object ZSaidaHORA_PGTO_1: TTimeField
      FieldName = 'HORA_PGTO_1'
    end
    object ZSaidaDOCUMENTO_1: TStringField
      FieldName = 'DOCUMENTO_1'
      Size = 200
    end
    object ZSaidaOPERACAO_1: TStringField
      FieldName = 'OPERACAO_1'
      Required = True
      Size = 400
    end
    object ZSaidaVALOR_2: TFloatField
      FieldName = 'VALOR_2'
      Required = True
    end
    object ZSaidaVALOR_JUROS_1: TFloatField
      FieldName = 'VALOR_JUROS_1'
      Required = True
    end
    object ZSaidaVALOR_MULTA_1: TFloatField
      FieldName = 'VALOR_MULTA_1'
      Required = True
    end
    object ZSaidaVALOR_DESCONTO_1: TFloatField
      FieldName = 'VALOR_DESCONTO_1'
      Required = True
    end
    object ZSaidaPARCELA_1: TIntegerField
      FieldName = 'PARCELA_1'
      Required = True
    end
    object ZSaidaPENDENTE_1: TStringField
      FieldName = 'PENDENTE_1'
      Required = True
      Size = 3
    end
    object ZSaidaANOTACAO_1: TMemoField
      FieldName = 'ANOTACAO_1'
      BlobType = ftMemo
    end
    object ZSaidaATIVO_5: TStringField
      FieldName = 'ATIVO_5'
      Required = True
      Size = 3
    end
    object ZSaidaGARANTIDO_1: TStringField
      FieldName = 'GARANTIDO_1'
      Required = True
      Size = 3
    end
    object ZSaidaRUA: TStringField
      FieldName = 'RUA'
      Required = True
      Size = 100
    end
    object ZSaidaINQUILINO: TStringField
      FieldName = 'INQUILINO'
      Required = True
      Size = 100
    end
    object ZSaidaVR: TFloatField
      FieldName = 'VR'
      ReadOnly = True
    end
    object ZSaidaNOME_INQUILINO: TStringField
      FieldName = 'NOME_INQUILINO'
      ReadOnly = True
      Size = 100
    end
  end
  object ZFiltroPessoa: TZQuery
    Connection = PRINCIPAL.Conexao
    SQL.Strings = (
      
        'select p.id_pessoa, p.nome, p.icq, p.aim from pessoa p where p.a' +
        'tivo = '#39'SIM'#39' and p.nome like :NOME or p.nome_fantasia like :NOME' +
        ' or p.empresa like :NOME or p.obs like :NOME order by p.nome')
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
      end>
    Left = 160
    Top = 472
    ParamData = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
      end>
    object ZFiltroPessoaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Required = True
    end
    object ZFiltroPessoaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object ZFiltroPessoaICQ: TStringField
      FieldName = 'ICQ'
      Visible = False
    end
    object ZFiltroPessoaAIM: TStringField
      FieldName = 'AIM'
      Visible = False
    end
  end
  object ZFiltroImovel: TZQuery
    Connection = PRINCIPAL.Conexao
    SQL.Strings = (
      
        'SELECT I.ID_IMOVEL, L.nome AS RUA, I.numero, I.complemento, I.va' +
        'lor_aluquel, B.nome AS BAIRRO, c.nome as CIDADE,'
      
        '(SELECT FIRST 1 P.NOME FROM PESSOA P LEFT JOIN PESSOA_IMOVEL PI ' +
        'ON PI.id_pessoa = P.id_pessoa WHERE PI.status = '#39'PROPRIETARIO'#39' a' +
        'nd PI.id_imovel = I.id_imovel) as PESSOA'
      'FROM IMOVEL I'
      'LEFT JOIN LOGRADOURO L ON L.id_logradouro = I.id_logradouro'
      'LEFT JOIN CIDADE C ON C.id_cidade = L.id_cidade'
      'LEFT JOIN bairro B ON B.id_bairro = L.id_bairro'
      'WHERE'
      'L.nome LIKE :IMOVEL OR'
      'I.complemento LIKE :IMOVEL OR'
      'B.nome LIKE :IMOVEL OR'
      'C.nome LIKE :IMOVEL OR'
      'I.numero LIKE :IMOVEL OR'
      'I.id_imovel LIKE :IMOVEL'
      'ORDER BY'
      'C.nome, B.nome, L.nome, I.numero')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IMOVEL'
        ParamType = ptUnknown
      end>
    Left = 232
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IMOVEL'
        ParamType = ptUnknown
      end>
    object ZFiltroImovelID_IMOVEL: TIntegerField
      FieldName = 'ID_IMOVEL'
      Required = True
    end
    object ZFiltroImovelRUA: TStringField
      FieldName = 'RUA'
      Required = True
      Size = 100
    end
    object ZFiltroImovelNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Required = True
    end
    object ZFiltroImovelCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object ZFiltroImovelVALOR_ALUQUEL: TFloatField
      FieldName = 'VALOR_ALUQUEL'
      currency = True
    end
    object ZFiltroImovelBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Required = True
      Size = 100
    end
    object ZFiltroImovelCIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 100
    end
    object ZFiltroImovelPESSOA: TStringField
      FieldName = 'PESSOA'
      ReadOnly = True
      Size = 100
    end
  end
  object ZFiltroStatus: TZQuery
    Connection = PRINCIPAL.Conexao
    Params = <>
    Left = 344
    Top = 480
  end
  object DS_FiltroPessoa: TDataSource
    DataSet = ZFiltroPessoa
    Left = 464
    Top = 472
  end
  object DS_FiltroImovel: TDataSource
    DataSet = ZFiltroImovel
    Left = 536
    Top = 472
  end
  object DS_FiltroStatus: TDataSource
    DataSet = ZFiltroStatus
    Left = 624
    Top = 464
  end
  object ZSaldos: TZQuery
    Connection = PRINCIPAL.Conexao
    SQL.Strings = (
      
        'select u.id_usuario, u.nome, (select sum((select result from spv' +
        'alorcobranca1(1, C.data_ref, C.data_pgto, C.valor, C.valor_juros' +
        ', C.valor_multa, C.valor_desconto)))'
      
        'from caixa_entrada C where c.id_funcionario = u.id_usuario and c' +
        '.ativo <> '#39'XXX'#39' and c.data_pgto is not null) as CAIXAENTRADA,'
      
        '(select sum((select result from spvalorcobranca1(1, C.data_ref, ' +
        'C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desc' +
        'onto)))'
      
        'from caixa_saida C where c.id_funcionario = u.id_usuario and c.a' +
        'tivo <> '#39'XXX'#39' and c.data_pgto is not null) as CAIXASAIDA,'
      
        '(select sum((select result from spvalorcobranca1(1, C.data_ref, ' +
        'C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desc' +
        'onto)))'
      
        'from caixa_entrada C where c.id_funcionario = u.id_usuario and c' +
        '.ativo <> '#39'XXX'#39' and c.data_pgto is not null) -'
      
        '(select sum((select result from spvalorcobranca1(1, C.data_ref, ' +
        'C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desc' +
        'onto)))'
      
        'from caixa_saida C where c.id_funcionario = u.id_usuario and c.a' +
        'tivo <> '#39'XXX'#39' and c.data_pgto is not null) as SALDO'
      'from usuario u where u.ativo = '#39'SIM'#39' order by u.nome')
    Params = <>
    Left = 296
    Top = 472
    object ZSaldosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object ZSaldosNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object ZSaldosCAIXAENTRADA: TFloatField
      FieldName = 'CAIXAENTRADA'
      ReadOnly = True
      currency = True
    end
    object ZSaldosCAIXASAIDA: TFloatField
      FieldName = 'CAIXASAIDA'
      ReadOnly = True
      currency = True
    end
    object ZSaldosSALDO: TFloatField
      FieldName = 'SALDO'
      ReadOnly = True
      currency = True
    end
  end
  object DS_Saldos: TDataSource
    DataSet = ZSaldos
    Left = 400
    Top = 480
  end
  object ZIRRF: TZQuery
    Connection = PRINCIPAL.MySQL
    SQL.Strings = (
      'SELECT * FROM sistema_irrf ORDER BY id DESC')
    Params = <>
    Properties.Strings = (
      'SELECT * FROM sistema_irrf ORDER BY id ASC')
    Left = 744
    Top = 472
    object ZIRRFid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object ZIRRFvalor_inicio: TFloatField
      FieldName = 'valor_inicio'
      Required = True
      currency = True
    end
    object ZIRRFvalor_fim: TFloatField
      FieldName = 'valor_fim'
      Required = True
      currency = True
    end
    object ZIRRFaliquota: TFloatField
      FieldName = 'aliquota'
      Required = True
      DisplayFormat = '0.000 %'
    end
    object ZIRRFdeducao: TFloatField
      FieldName = 'deducao'
      Required = True
      currency = True
    end
    object ZIRRFvigencia_inicio: TDateField
      FieldName = 'vigencia_inicio'
      Required = True
    end
    object ZIRRFvigencia_fim: TDateField
      FieldName = 'vigencia_fim'
    end
    object ZIRRFtags: TStringField
      FieldName = 'tags'
      Required = True
      Size = 255
    end
    object ZIRRFativo: TStringField
      FieldName = 'ativo'
      Required = True
      Size = 3
    end
  end
  object DS_IRRF: TDataSource
    DataSet = ZIRRF
    Left = 696
    Top = 472
  end
  object PopupMenuPessoas: TPopupMenu
    Images = PRINCIPAL.ImagensRosa
    Left = 840
    Top = 65528
    object SelecionarConta1: TMenuItem
      Caption = 'Selecionar Pessoa'
      Hint = 'Selecionar uma pessoa'
      ImageIndex = 23
      OnClick = SelecionarConta1Click
    end
    object RemoverConta1: TMenuItem
      Caption = 'Remover Pessoa'
      Hint = 'Remover uma pessoa da sele'#231#227'o'
      ImageIndex = 26
      Visible = False
      OnClick = RemoverConta1Click
    end
    object NovaSeleo1: TMenuItem
      Caption = 'Limpar Sele'#231#227'o'
      Hint = 'Limpa a sele'#231#227'o realizada at'#233' o momento'
      ImageIndex = 72
      OnClick = NovaSeleo1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ValorBase1: TMenuItem
      Caption = 'A'#231#245'es com a Sele'#231#227'o'
      ImageIndex = 15
      object AdicionarValor1: TMenuItem
        Caption = 'Gerar Carta de Cobran'#231'a (Modelo MS Word)'
        Hint = 'Gera as cartas diretamente no Word'
        ImageIndex = 56
        OnClick = AdicionarValor1Click
      end
      object GerarCartadeCobranaModeloRelatrio1: TMenuItem
        Caption = 'Gerar Carta de Cobran'#231'a (Modelo C'#233'lula Digital)'
        Hint = 'Gera as cartas com base em um modelo gerado pela C'#233'lula Digital'
        ImageIndex = 56
        OnClick = GerarCartadeCobranaModeloRelatrio1Click
      end
      object RetirarValor1: TMenuItem
        Caption = 'Enviar Emails de Avisos (Pend'#234'ncia Financeira)'
        Hint = 'Envia avisos de pend'#234'ncia financeira pelo email da pessoa'
        ImageIndex = 57
        OnClick = RetirarValor1Click
      end
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Irparapessoa1: TMenuItem
      Caption = 'Cadastro da Pessoa'
      ImageIndex = 44
      OnClick = Irparapessoa1Click
    end
    object CadastrodeContratos1: TMenuItem
      Caption = 'Cadastro de Contrato'
      ImageIndex = 39
      OnClick = CadastrodeContratos1Click
    end
    object DadosBancrios1: TMenuItem
      Caption = 'Cadastro de Conta'
      ImageIndex = 17
    end
  end
  object ZlogCobranca: TZQuery
    Connection = PRINCIPAL.Conexao
    ReadOnly = True
    SQL.Strings = (
      ''
      ''
      
        'select Data, id_func as Usuario, id_conta as Registro, component' +
        'e as Origem, obs as acao from log where acao = '#39'LDC'#39' and id_func' +
        ' = 1 order by data desc')
    Params = <>
    Left = 680
    Top = 96
  end
  object DS_LogCobranca: TDataSource
    DataSet = ZlogCobranca
    Left = 584
    Top = 104
  end
end
