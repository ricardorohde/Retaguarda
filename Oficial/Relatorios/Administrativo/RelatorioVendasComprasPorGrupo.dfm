inherited FormRelatorioVendasComprasPorGrupo: TFormRelatorioVendasComprasPorGrupo
  Left = 303
  Top = 209
  Caption = 'Relat'#243'rio de Vendas e Compras por Grupo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      inherited BtnVisualizar: TSpeedButton
        Top = 210
        OnClick = BtnVisualizarClick
      end
    end
  end
  inherited DSTblTemporaria: TDataSource
    Left = 362
  end
  inherited TblTemporaria: TTable
    TableName = 'VendasPorGrupo.DB'
    Left = 390
    object TblTemporariaGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object TblTemporariaGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTOTVENDA: TBCDField
      FieldName = 'TOTVENDA'
    end
    object TblTemporariaQTDEVENDA: TIntegerField
      FieldName = 'QTDEVENDA'
    end
    object TblTemporariaTOTCOMPRA: TBCDField
      FieldName = 'TOTCOMPRA'
    end
    object TblTemporariaQTDECOMPRA: TIntegerField
      FieldName = 'QTDECOMPRA'
    end
  end
  object SQLRelVendasPorGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  G.GRUPICOD, G.GRUPA60DESCR,'
      '  sum(CPI.CPITN3QTD * ('
      '  CPI.CPITN3VLRUNIT -'
      '  CPI.CPITN2DESC)) as TotVenda,'
      '  count(P.GRUPICOD) as QtdeVenda'
      'from'
      '  CUPOMITEM CPI,'
      '  CUPOM CP,'
      '  PRODUTO P,'
      '  GRUPO G'
      'where'
      '   CPI.PRODICOD = P.PRODICOD'
      '  and P.GRUPICOD = G.GRUPICOD'
      '  and CP.CUPOA13ID = CPI.CUPOA13ID'
      '  and CP.CUPOA13ID <> '#39'C'#39
      '    and (%MEmpresa)'
      '  and (%MDataInicial)'
      '  and (%MDataFinal)'
      'Group By'
      '  GRUPICOD, GRUPA60DESCR'
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataFinal'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLRelVendasPorGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object SQLRelVendasPorGrupoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLRelVendasPorGrupoTOTVENDA: TFloatField
      FieldName = 'TOTVENDA'
    end
    object SQLRelVendasPorGrupoQTDEVENDA: TIntegerField
      FieldName = 'QTDEVENDA'
    end
  end
  object SQLRelComprasPorGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select G.GRUPICOD,  G.GRUPA60DESCR,'
      
        '  SUM(NCI.NOCIN3VLREMBAL*NCI.NOCIN3QTDEMBAL-NCI.NOCIN3VLRDESC)  ' +
        'AS TotCompra,'
      '     count(NCI.PRODICOD) as QtdeCompra'
      '   from '
      '   NOTACOMPRA NC,'
      '   NOTACOMPRAITEM NCI,'
      '   PRODUTO P,'
      '   GRUPO G'
      '   Where'
      '   NC.NOCPA13ID = NCI.NOCPA13ID'
      '   and NC.NOCPCSTATUS <> '#39'C'#39
      '   and NCI.PRODICOD = P.PRODICOD'
      '   and P.GRUPICOD = G.GRUPICOD'
      '   and (%MDataInicial)'
      '   and (%MDataFinal)'
      '   and (%MEmpresa)'
      'Group By'
      '    GRUPICOD, GRUPA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MDataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataFinal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 446
    Top = 5
    object SQLRelComprasPorGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object SQLRelComprasPorGrupoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLRelComprasPorGrupoTOTCOMPRA: TFloatField
      FieldName = 'TOTCOMPRA'
    end
    object SQLRelComprasPorGrupoQTDECOMPRA: TIntegerField
      FieldName = 'QTDECOMPRA'
    end
  end
  object SQLRelSaldoPorGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select G.GRUPICOD, G.GRUPA60DESCR,'
      'sum(P.PRODN3VLRVENDA) as Venda, '
      'sum(P.PRODN3VLRCOMPRA)as Compra,'
      'sum(P.PRODN3VLRCUSTO) as Custo,'
      'sum(PS.PSLDN3QTDE) as Saldo,'
      'sum(P.PRODN3VLRVENDA * PS.PSLDN3QTDE) as TotalVenda,'
      'sum(P.PRODN3VLRCOMPRA * PS.PSLDN3QTDE) as TotalCompra,'
      'sum(P.PRODN3VLRCUSTO * PS.PSLDN3QTDE) as TotalCusto'
      'From '
      'PRODUTO P,'
      'PRODUTOSALDO PS,'
      'GRUPO G'
      'Where'
      'P.PRODICOD = PS.PRODICOD'
      'and P.GRUPICOD = G.GRUPICOD'
      'and PS.PSLDN3QTDE > 0'
      'and (%MEmpresa)'
      'Group By'
      ' GRUPICOD, GRUPA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 502
    Top = 5
    object SQLRelSaldoPorGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object SQLRelSaldoPorGrupoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLRelSaldoPorGrupoVENDA: TFloatField
      FieldName = 'VENDA'
    end
    object SQLRelSaldoPorGrupoCOMPRA: TFloatField
      FieldName = 'COMPRA'
    end
    object SQLRelSaldoPorGrupoCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object SQLRelSaldoPorGrupoSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLRelSaldoPorGrupoTOTALVENDA: TFloatField
      FieldName = 'TOTALVENDA'
    end
    object SQLRelSaldoPorGrupoTOTALCOMPRA: TFloatField
      FieldName = 'TOTALCOMPRA'
    end
    object SQLRelSaldoPorGrupoTOTALCUSTO: TFloatField
      FieldName = 'TOTALCUSTO'
    end
  end
  object TblTemporariaSaldo: TTable
    Tag = 1
    DatabaseName = 'Easy_TEMP'
    TableName = 'SaldoPorGrupo.DB'
    Left = 474
    Top = 5
    object TblTemporariaSaldoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object TblTemporariaSaldoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaSaldoVENDA: TBCDField
      FieldName = 'VENDA'
    end
    object TblTemporariaSaldoCOMPRA: TBCDField
      FieldName = 'COMPRA'
    end
    object TblTemporariaSaldoCUSTO: TBCDField
      FieldName = 'CUSTO'
    end
    object TblTemporariaSaldoSALDO: TBCDField
      FieldName = 'SALDO'
    end
    object TblTemporariaSaldoTOTALVENDA: TBCDField
      FieldName = 'TOTALVENDA'
    end
    object TblTemporariaSaldoTOTALCOMPRA: TBCDField
      FieldName = 'TOTALCOMPRA'
    end
    object TblTemporariaSaldoTOTALCUSTO: TBCDField
      FieldName = 'TOTALCUSTO'
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    PrintDate.Day = 0
    PrintDate.Month = 0
    PrintDate.Year = 0
    Subreports.NLinks = 0
    Subreports.OnDemand = False
    Tables.Number = -1
    SortFields.Number = -1
    GroupSortFields.Number = -1
    GroupCondition.Number = -1
    GroupCondition.GroupType = gtOther
    GroupOptions.Number = -1
    GroupOptions.GroupType = gtOther
    GroupOptions.RepeatGH = cDefault
    GroupOptions.KeepTogether = cDefault
    GroupOptions.TopNOptions = tnDefault
    GroupOptions.TopNGroups = -1
    GroupOptions.TopNDiscardOthers = cDefault
    ParamFields.ParamType = pfString
    ParamFields.ParamSource = psReport
    ParamFields.Info.AllowNull = cDefault
    ParamFields.Info.AllowEditing = cDefault
    ParamFields.Info.AllowMultipleValues = cDefault
    ParamFields.Info.ValueType = vtDiscrete
    ParamFields.Info.PartOfGroup = cDefault
    ParamFields.Info.MutuallyExclusiveGroup = cDefault
    ParamFields.Info.GroupNum = -1
    ParamFields.ValueLimit = cDefault
    ParamFields.Ranges.Number = -1
    ParamFields.Ranges.RangeBounds = IncludeStartAndEnd
    ParamFields.PLDescriptionOnly = cDefault
    ParamFields.PLSortMethod = psmDefaultSort
    ParamFields.PLSortByDescription = cDefault
    SectionFormat.BackgroundColor = clNone
    SectionHeight.Height = 0
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9.000000000000000000
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowButtonBar.CloseBtn = True
    WindowButtonBar.PrintSetupBtn = True
    WindowButtonBar.SearchBtn = True
    WindowCursor.GroupArea = wcDefault
    WindowCursor.GroupAreaField = wcDefault
    WindowCursor.DetailArea = wcDefault
    WindowCursor.DetailAreaField = wcDefault
    WindowCursor.Graph = wcDefault
    GraphType.Number = -1
    GraphType.Style = barSideBySide
    GraphText.Number = -1
    GraphText.TitleFont.Charset = DEFAULT_CHARSET
    GraphText.TitleFont.Color = clWindowText
    GraphText.TitleFont.Height = -11
    GraphText.TitleFont.Name = 'MS Sans Serif'
    GraphText.TitleFont.Style = []
    GraphText.SubTitleFont.Charset = DEFAULT_CHARSET
    GraphText.SubTitleFont.Color = clWindowText
    GraphText.SubTitleFont.Height = -11
    GraphText.SubTitleFont.Name = 'MS Sans Serif'
    GraphText.SubTitleFont.Style = []
    GraphText.FootNoteFont.Charset = DEFAULT_CHARSET
    GraphText.FootNoteFont.Color = clWindowText
    GraphText.FootNoteFont.Height = -11
    GraphText.FootNoteFont.Name = 'MS Sans Serif'
    GraphText.FootNoteFont.Style = []
    GraphText.GroupsTitleFont.Charset = DEFAULT_CHARSET
    GraphText.GroupsTitleFont.Color = clWindowText
    GraphText.GroupsTitleFont.Height = -11
    GraphText.GroupsTitleFont.Name = 'MS Sans Serif'
    GraphText.GroupsTitleFont.Style = []
    GraphText.DataTitleFont.Charset = DEFAULT_CHARSET
    GraphText.DataTitleFont.Color = clWindowText
    GraphText.DataTitleFont.Height = -11
    GraphText.DataTitleFont.Name = 'MS Sans Serif'
    GraphText.DataTitleFont.Style = []
    GraphText.LegendFont.Charset = DEFAULT_CHARSET
    GraphText.LegendFont.Color = clWindowText
    GraphText.LegendFont.Height = -11
    GraphText.LegendFont.Name = 'MS Sans Serif'
    GraphText.LegendFont.Style = []
    GraphText.GroupLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.GroupLabelsFont.Color = clWindowText
    GraphText.GroupLabelsFont.Height = -11
    GraphText.GroupLabelsFont.Name = 'MS Sans Serif'
    GraphText.GroupLabelsFont.Style = []
    GraphText.DataLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.DataLabelsFont.Color = clWindowText
    GraphText.DataLabelsFont.Height = -11
    GraphText.DataLabelsFont.Name = 'MS Sans Serif'
    GraphText.DataLabelsFont.Style = []
    GraphOptions.Number = -1
    GraphOptions.Max = -1.000000000000000000
    GraphOptions.Min = -1.000000000000000000
    GraphOptions.DataValues = cDefault
    GraphOptions.GridLines = cDefault
    GraphOptions.Legend = cDefault
    GraphOptions.BarDirection = bdDefault
    GraphOptionInfo.Number = -1
    GraphOptionInfo.Color = gcDefault
    GraphOptionInfo.Legend = glDefault
    GraphOptionInfo.PieSize = gpsDefault
    GraphOptionInfo.PieSlice = gslDefault
    GraphOptionInfo.BarSize = gbsDefault
    GraphOptionInfo.BarDirection = bdDefault
    GraphOptionInfo.MarkerSize = gmsDefault
    GraphOptionInfo.MarkerShape = gshDefault
    GraphOptionInfo.DataPoints = gdpDefault
    GraphOptionInfo.NumberFormat = gnfDefault
    GraphOptionInfo.ViewingAngle = gvaDefault
    GraphData.Number = -1
    GraphData.RowGroupN = -1
    GraphData.ColGroupN = -1
    GraphData.SummarizedFieldN = -1
    GraphData.Direction = Unknown
    GraphAxis.Number = -1
    GraphAxis.GridLineX = gglDefault
    GraphAxis.GridLineY = gglDefault
    GraphAxis.GridLineY2 = gglDefault
    GraphAxis.GridLineZ = gglDefault
    GraphAxis.DataValuesY = gdvDefault
    GraphAxis.DataValuesY2 = gdvDefault
    GraphAxis.DataValuesZ = gdvDefault
    GraphAxis.NumberFormatY = gnfDefault
    GraphAxis.NumberFormatY2 = gnfDefault
    GraphAxis.NumberFormatZ = gnfDefault
    GraphAxis.DivisionTypeY = gdvDefault
    GraphAxis.DivisionTypeY2 = gdvDefault
    GraphAxis.DivisionTypeZ = gdvDefault
    GraphAxis.DivisionsY = 0
    GraphAxis.DivisionsY2 = 0
    GraphAxis.DivisionsZ = 0
    Left = 242
    Top = 4
  end
end
