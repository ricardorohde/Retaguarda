�
 TFORMRELATORIOPRODUTOSPORFORNECEDOR 0�!  TPF0�#TFormRelatorioProdutosPorFornecedor"FormRelatorioProdutosPorFornecedorLeft�Top� Caption'   Relatório de Produtos Por FornecededorPixelsPerInch`
TextHeight �
TScrollBox	ScrollBox �TPanelPanelCentroHeight3 �TSpeedButtonBtnVisualizarTop  �	TGroupBox	GroupBox1Visible  	TGroupBox	GroupBox2LeftTop� Width�Height/Caption
FornecedorFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder TRxDBLookupComboComboFornecedorLeftTopWidth�HeightDropDownCountLookupFieldFORNICODLookupDisplayFORNA60RAZAOSOCLookupSourceDSSQLFornecedorTabOrder 	OnKeyDownComboFornecedorKeyDown   TRadioGroup
RadioOrdemLeftTop� Width� Height+CaptionOrdemColumnsFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 	ItemIndex Items.Strings   Código   Descrição 
ParentFontTabOrder  	TCheckBoxCKMostrarSemFornecLeft� Top� Width� HeightCaptionMostrar sem FornecedorFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder    �TTableTblTemporaria	TableNameRelProdForn.db TStringFieldTblTemporariaPRODA60DESCR	FieldNamePRODA60DESCROriginDB.PRODUTO.PRODA60DESCR	FixedChar	Size<  	TBCDFieldTblTemporariaPRODN3VLRVENDA	FieldNamePRODN3VLRVENDAOriginDB.PRODUTO.PRODN3VLRVENDA	PrecisionSize  	TBCDFieldTblTemporariaPRODN3VLRCOMPRA	FieldNamePRODN3VLRCOMPRAOriginDB.PRODUTO.PRODN3VLRCOMPRA	PrecisionSize  	TBCDFieldTblTemporariaPRODN3VLRCUSTO	FieldNamePRODN3VLRCUSTOOriginDB.PRODUTO.PRODN3VLRCUSTO	PrecisionSize  TIntegerFieldTblTemporariaPRODICOD	FieldNamePRODICODOriginDB.PRODUTO.PRODICOD  TIntegerFieldTblTemporariaFORNICOD	FieldNameFORNICODOriginDB.PRODUTOFORNECEDOR.FORNICOD  TStringFieldTblTemporariaFORNA60RAZAOSOC	FieldNameFORNA60RAZAOSOCOriginDB.FORNECEDOR.FORNA60RAZAOSOC	FixedChar	Size<   TRxQuerySQLFornecedorDatabaseNameDBSQL.Strings/Select FORNICOD,FORNA60RAZAOSOC from FORNECEDOROrder by FORNA60RAZAOSOC Macros Left�Top TIntegerFieldSQLFornecedorFORNICOD	FieldNameFORNICODOriginDB.FORNECEDOR.FORNICOD  TStringFieldSQLFornecedorFORNA60RAZAOSOC	FieldNameFORNA60RAZAOSOCOriginDB.FORNECEDOR.FORNA60RAZAOSOC	FixedChar	Size<   TRxQuery
SQLProdutoDatabaseNameDBSQL.StringsSelectPRODUTO.PRODA60DESCR,PRODUTO.PRODN3VLRVENDA,PRODUTO.PRODN3VLRCOMPRA,PRODUTO.PRODN3VLRCUSTO,PRODUTO.PRODICOD,PRODUTOFORNECEDOR.FORNICOD,FORNECEDOR.FORNA60RAZAOSOCfrom&PRODUTOFORNECEDOR, PRODUTO, FORNECEDORwhere-PRODUTOFORNECEDOR.PRODICOD = PRODUTO.PRODICODand0PRODUTOFORNECEDOR.FORNICOD = FORNECEDOR.FORNICODand
(%MFiltro)order by %CampoOrdem  MacrosDataTypeftStringNameMFiltro	ParamTypeptInputValue0=0 DataTypeftStringName
CampoOrdem	ParamTypeptInputValue0=0  Left�Top TStringFieldSQLProdutoPRODA60DESCR	FieldNamePRODA60DESCROriginDB.PRODUTO.PRODA60DESCR	FixedChar	Size<  TFloatFieldSQLProdutoPRODN3VLRVENDA	FieldNamePRODN3VLRVENDAOriginDB.PRODUTO.PRODN3VLRVENDA  TFloatFieldSQLProdutoPRODN3VLRCOMPRA	FieldNamePRODN3VLRCOMPRAOriginDB.PRODUTO.PRODN3VLRCOMPRA  TFloatFieldSQLProdutoPRODN3VLRCUSTO	FieldNamePRODN3VLRCUSTOOriginDB.PRODUTO.PRODN3VLRCUSTO  TIntegerFieldSQLProdutoPRODICOD	FieldNamePRODICODOriginDB.PRODUTO.PRODICOD  TIntegerFieldSQLProdutoFORNICOD	FieldNameFORNICODOriginDB.PRODUTOFORNECEDOR.FORNICOD  TStringFieldSQLProdutoFORNA60RAZAOSOC	FieldNameFORNA60RAZAOSOCOriginDB.FORNECEDOR.FORNA60RAZAOSOC	FixedChar	Size<   TDataSourceDSSQLFornecedorDataSetSQLFornecedorLeft�Top  TCrpeReportAboutVersion and Credits...DesignControlsDesign-Time Window ControlsVersion.Major Version.Minor 
ReportNameEC:\Easy2Solutions\Relatorios\Relatorio de Produtos Por Fornecedor.rptMargins.Left�Margins.Right�Margins.Top�Margins.Bottom�DiscardSavedData	PrintDate.Day PrintDate.Month PrintDate.Year Subreports.NLinks Subreports.OnDemandTables.Number�SortFields.Number�GroupSortFields.Number�GroupCondition.Number�GroupCondition.GroupTypegtOtherGroupOptions.Number�GroupOptions.GroupTypegtOtherGroupOptions.RepeatGHcDefaultGroupOptions.KeepTogethercDefaultGroupOptions.TopNOptions	tnDefaultGroupOptions.TopNGroups�GroupOptions.TopNDiscardOtherscDefaultParamFields.ParamTypepfStringParamFields.ParamSourcepsReportParamFields.Info.AllowNullcDefaultParamFields.Info.AllowEditingcDefault$ParamFields.Info.AllowMultipleValuescDefaultParamFields.Info.ValueType
vtDiscreteParamFields.Info.PartOfGroupcDefault'ParamFields.Info.MutuallyExclusiveGroupcDefaultParamFields.Info.GroupNum�ParamFields.ValueLimitcDefaultParamFields.Ranges.Number�ParamFields.Ranges.RangeBoundsIncludeStartAndEndParamFields.PLDescriptionOnlycDefaultParamFields.PLSortMethodpsmDefaultSortParamFields.PLSortByDescriptioncDefaultSectionFormat.BackgroundColorclNoneSectionHeight.Height SQL.Params.ParamTypespCharLogOnInfo.Table�SessionInfo.Table�SessionInfo.Propagate	Export.Excel.Constant       �@Export.Excel.AreaDExport.CharSepQuote WindowZoom.Magnification�WindowStatewsMaximizedWindowButtonBar.CloseBtn	WindowButtonBar.PrintSetupBtn	WindowButtonBar.SearchBtn	WindowCursor.GroupArea	wcDefaultWindowCursor.GroupAreaField	wcDefaultWindowCursor.DetailArea	wcDefaultWindowCursor.DetailAreaField	wcDefaultWindowCursor.Graph	wcDefaultGraphType.Number�GraphType.StylebarSideBySideGraphText.Number�GraphText.TitleFont.CharsetDEFAULT_CHARSETGraphText.TitleFont.ColorclWindowTextGraphText.TitleFont.Height�GraphText.TitleFont.NameMS Sans SerifGraphText.TitleFont.Style GraphText.SubTitleFont.CharsetDEFAULT_CHARSETGraphText.SubTitleFont.ColorclWindowTextGraphText.SubTitleFont.Height�GraphText.SubTitleFont.NameMS Sans SerifGraphText.SubTitleFont.Style GraphText.FootNoteFont.CharsetDEFAULT_CHARSETGraphText.FootNoteFont.ColorclWindowTextGraphText.FootNoteFont.Height�GraphText.FootNoteFont.NameMS Sans SerifGraphText.FootNoteFont.Style !GraphText.GroupsTitleFont.CharsetDEFAULT_CHARSETGraphText.GroupsTitleFont.ColorclWindowText GraphText.GroupsTitleFont.Height�GraphText.GroupsTitleFont.NameMS Sans SerifGraphText.GroupsTitleFont.Style GraphText.DataTitleFont.CharsetDEFAULT_CHARSETGraphText.DataTitleFont.ColorclWindowTextGraphText.DataTitleFont.Height�GraphText.DataTitleFont.NameMS Sans SerifGraphText.DataTitleFont.Style GraphText.LegendFont.CharsetDEFAULT_CHARSETGraphText.LegendFont.ColorclWindowTextGraphText.LegendFont.Height�GraphText.LegendFont.NameMS Sans SerifGraphText.LegendFont.Style !GraphText.GroupLabelsFont.CharsetDEFAULT_CHARSETGraphText.GroupLabelsFont.ColorclWindowText GraphText.GroupLabelsFont.Height�GraphText.GroupLabelsFont.NameMS Sans SerifGraphText.GroupLabelsFont.Style  GraphText.DataLabelsFont.CharsetDEFAULT_CHARSETGraphText.DataLabelsFont.ColorclWindowTextGraphText.DataLabelsFont.Height�GraphText.DataLabelsFont.NameMS Sans SerifGraphText.DataLabelsFont.Style GraphOptions.Number�GraphOptions.Max       ���GraphOptions.Min       ���GraphOptions.DataValuescDefaultGraphOptions.GridLinescDefaultGraphOptions.LegendcDefaultGraphOptions.BarDirection	bdDefaultGraphOptionInfo.Number�GraphOptionInfo.Color	gcDefaultGraphOptionInfo.Legend	glDefaultGraphOptionInfo.PieSize
gpsDefaultGraphOptionInfo.PieSlice
gslDefaultGraphOptionInfo.BarSize
gbsDefaultGraphOptionInfo.BarDirection	bdDefaultGraphOptionInfo.MarkerSize
gmsDefaultGraphOptionInfo.MarkerShape
gshDefaultGraphOptionInfo.DataPoints
gdpDefaultGraphOptionInfo.NumberFormat
gnfDefaultGraphOptionInfo.ViewingAngle
gvaDefaultGraphData.Number�GraphData.RowGroupN�GraphData.ColGroupN�GraphData.SummarizedFieldN�GraphData.DirectionUnknownGraphAxis.Number�GraphAxis.GridLineX
gglDefaultGraphAxis.GridLineY
gglDefaultGraphAxis.GridLineY2
gglDefaultGraphAxis.GridLineZ
gglDefaultGraphAxis.DataValuesY
gdvDefaultGraphAxis.DataValuesY2
gdvDefaultGraphAxis.DataValuesZ
gdvDefaultGraphAxis.NumberFormatY
gnfDefaultGraphAxis.NumberFormatY2
gnfDefaultGraphAxis.NumberFormatZ
gnfDefaultGraphAxis.DivisionTypeY
gdvDefaultGraphAxis.DivisionTypeY2
gdvDefaultGraphAxis.DivisionTypeZ
gdvDefaultGraphAxis.DivisionsY GraphAxis.DivisionsY2 GraphAxis.DivisionsZ Left�Top   