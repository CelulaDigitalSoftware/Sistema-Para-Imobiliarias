inherited CAD_Usuario: TCAD_Usuario
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 408
  ClientWidth = 402
  ExplicitWidth = 408
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    Width = 402
    ExplicitWidth = 402
    inherited Image1: TImage
      Width = 400
      ExplicitWidth = 400
    end
    inherited Btn_Imprimir: TSpeedButton
      Visible = False
    end
    inherited Btn_Fechar: TBitBtn
      Left = 371
      ExplicitLeft = 371
    end
  end
  inherited PageControl1: TPageControl
    Width = 402
    Height = 378
    ExplicitWidth = 402
    ExplicitHeight = 378
    inherited Tab_Pesquisa: TTabSheet
      ExplicitWidth = 394
      ExplicitHeight = 349
      inherited Panel2: TPanel
        Width = 394
        Height = 41
        ExplicitWidth = 394
        ExplicitHeight = 41
        inherited Image2: TImage
          Width = 87
          Height = 39
          ExplicitWidth = 87
          ExplicitHeight = 39
        end
        inherited Valor: TEdit
          Width = 385
          Text = 'ESTE FORMUL'#193'RIO N'#195'O POSSUI PAR'#194'METROS DE BUSCA.'
          ExplicitWidth = 385
        end
        inherited Valor_Ativo: TCheckBox
          Left = 341
          Visible = False
          ExplicitLeft = 341
        end
        inherited Data_Maior: TDateTimePicker
          Left = 235
          Visible = False
          ExplicitLeft = 235
        end
        inherited Data_Menor: TDateTimePicker
          Left = 133
          Visible = False
          ExplicitLeft = 133
        end
      end
      inherited Grid_Busca: TDBGrid
        Top = 41
        Width = 394
        Height = 308
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_USUARIO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SENHA'
            Title.Caption = 'Senha'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FUNDO'
            Title.Caption = 'Fundo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Title.Caption = 'Ativo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADMINISTRADOR'
            Title.Caption = 'Administrador'
            Visible = False
          end>
      end
    end
    inherited Tab_Cadastro: TTabSheet
      ExplicitWidth = 394
      ExplicitHeight = 349
      inherited PageControl2: TPageControl
        Width = 394
        Height = 349
        ExplicitWidth = 394
        ExplicitHeight = 349
        inherited Tab_Informacoes: TTabSheet
          ExplicitWidth = 386
          ExplicitHeight = 320
          inherited ScrollBox1: TScrollBox
            Width = 386
            Height = 320
            ExplicitWidth = 386
            ExplicitHeight = 320
            object Label1: TLabel
              Left = 8
              Top = 8
              Width = 35
              Height = 12
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
            end
            object Label2: TLabel
              Left = 112
              Top = 8
              Width = 29
              Height = 12
              Caption = 'Nome'
              FocusControl = DBEdit2
            end
            object Label3: TLabel
              Left = 281
              Top = 13
              Width = 35
              Height = 12
              Caption = 'Senha:'
              FocusControl = DBEdit3
            end
            object Label5: TLabel
              Left = 8
              Top = 47
              Width = 33
              Height = 12
              Caption = 'E-Mail'
              FocusControl = DBEdit5
            end
            object Label6: TLabel
              Left = 267
              Top = 39
              Width = 49
              Height = 12
              Caption = 'Confirme:'
              FocusControl = DBEdit3
            end
            object Label4: TLabel
              Left = 48
              Top = 92
              Width = 279
              Height = 12
              Alignment = taCenter
              Caption = 'Para cadastrar as permiss'#245'es deste funcion'#225'rio, v'#225' em:'
            end
            object Label7: TLabel
              Left = 46
              Top = 110
              Width = 287
              Height = 12
              Alignment = taCenter
              Caption = 'ARQUIVOS >> SISTEMA >> ADMINISTRA'#199#195'O GERAL'
            end
            object Label8: TLabel
              Left = 146
              Top = 128
              Width = 72
              Height = 12
              Cursor = crHandPoint
              Alignment = taCenter
              Caption = 'ou clique aqui.'
              OnClick = Label8Click
            end
            object DBEdit1: TDBEdit
              Left = 8
              Top = 24
              Width = 97
              Height = 20
              Cursor = crNo
              Color = cl3DLight
              DataField = 'ID_USUARIO'
              DataSource = DS
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit2: TDBEdit
              Left = 111
              Top = 24
              Width = 150
              Height = 20
              CharCase = ecUpperCase
              DataField = 'NOME'
              DataSource = DS
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 318
              Top = 10
              Width = 65
              Height = 20
              CharCase = ecUpperCase
              DataField = 'SENHA'
              DataSource = DS
              PasswordChar = #167
              TabOrder = 2
              OnChange = DBEdit3Change
            end
            object DBCheckBox1: TDBCheckBox
              Left = 333
              Top = 65
              Width = 50
              Height = 17
              BiDiMode = bdRightToLeft
              Caption = 'Ativo'
              DataField = 'ATIVO'
              DataSource = DS
              ParentBiDiMode = False
              TabOrder = 4
              ValueChecked = 'SIM'
              ValueUnchecked = 'NAO'
            end
            object DBEdit5: TDBEdit
              Left = 8
              Top = 63
              Width = 319
              Height = 20
              CharCase = ecUpperCase
              DataField = 'EMAIL'
              DataSource = DS
              TabOrder = 1
            end
            object EditSenha: TEdit
              Left = 318
              Top = 37
              Width = 65
              Height = 20
              CharCase = ecUpperCase
              PasswordChar = #167
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  inherited DS: TDataSource
    Left = 336
  end
  object DS_Autorizacao: TDataSource
    DataSet = ZAutorizacao
    Left = 264
    Top = 32
  end
  object ZAutorizacao: TZQuery
    Connection = PRINCIPAL.Conexao
    OnNewRecord = ZAutorizacaoNewRecord
    SQL.Strings = (
      
        'SELECT ID_USUARIO, JANELA FROM AUTORIZACAO WHERE ID_USUARIO = :U' +
        'SUARIO ORDER BY JANELA')
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptUnknown
      end>
    Left = 184
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptUnknown
      end>
  end
end
