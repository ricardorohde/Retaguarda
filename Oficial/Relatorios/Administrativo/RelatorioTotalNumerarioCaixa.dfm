�
 TFORMRELATORIOTOTALNUMERARIOCAIXA 0�&  TPF0�!TFormRelatorioTotalNumerarioCaixa FormRelatorioTotalNumerarioCaixaLeft&Top~Caption)   Relatório Totais por Numerário do CaixaPixelsPerInch`
TextHeight �
TScrollBox	ScrollBox �TPanelPanelCentroTopPHeightd �TSpeedButtonBtnVisualizarLeft� Top!  	TGroupBox	GroupBox3LeftTop� Width�Height(Caption
 Terminal Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder TRxDBLookupComboComboTerminalLeftTopWidth�HeightDropDownCountFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style LookupFieldTERMICODLookupDisplayTERMA60DESCRLookupSourceDSSQLTerminal
ParentFontTabOrder    	TGroupBox	GroupBox2LeftTop� Width�Height(Caption
   NumerárioFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder TRxDBLookupComboComboNumerarioLeftTopWidth�HeightDropDownCountFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style LookupFieldNUMEICODLookupDisplayNUMEA30DESCRLookupSourceDSSQLNumerario
ParentFontTabOrder    TRadioGroup	RadioTipoLeftTopWidth� Height!CaptionTipoColumnsFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 	ItemIndex Items.Strings
   Analítico
   Sintético 
ParentFontTabOrder    �TTableTblTemporaria	TableNameTotalNumerarioCaixa.db TIntegerFieldTblTemporariaEMPRICOD	FieldNameEMPRICOD  TIntegerFieldTblTemporariaTERMICOD	FieldNameTERMICOD  TIntegerFieldTblTemporariaNUMEICOD	FieldNameNUMEICOD  TDateTimeFieldTblTemporariaMVCXDMOV	FieldNameMVCXDMOV  TIntegerFieldTblTemporariaOPCXICOD	FieldNameOPCXICOD  TIntegerFieldTblTemporariaUSUAICOD	FieldNameUSUAICOD  TStringFieldTblTemporariaMVCXA15DOCORIG	FieldNameMVCXA15DOCORIG	FixedChar	Size  	TBCDFieldTblTemporariaDEBITO	FieldNameDEBITO	PrecisionSize  	TBCDFieldTblTemporariaCREDITO	FieldNameCREDITO	PrecisionSize  TStringFieldTblTemporariaMVCXA255HIST	FieldNameMVCXA255HIST	FixedChar	Size�   TStringFieldTblTemporariaOPCXA60DESCR	FieldNameOPCXA60DESCR	FixedChar	Size<  TStringFieldTblTemporariaNUMEA30DESCR	FieldNameNUMEA30DESCR	FixedChar	Size  TStringFieldTblTemporariaUSUAA60LOGIN	FieldNameUSUAA60LOGIN	FixedChar	Size<   TRxQuerySQLMovimentoCaixaDatabaseNameDBSQL.StringsselectMOVIMENTOCAIXA.EMPRICOD,MOVIMENTOCAIXA.TERMICOD,MOVIMENTOCAIXA.NUMEICOD,MOVIMENTOCAIXA.MVCXDMOV,MOVIMENTOCAIXA.OPCXICOD,MOVIMENTOCAIXA.USUAICOD,MOVIMENTOCAIXA.MVCXA15DOCORIG,&MOVIMENTOCAIXA.MVCXN2VLRDEB as DEBITO,(MOVIMENTOCAIXA.MVCXN2VLRCRED as CREDITO,MOVIMENTOCAIXA.MVCXA255HIST,OPERACAOCAIXA.OPCXA60DESCR,NUMERARIO.NUMEA30DESCR,USUARIO.USUAA60LOGINfromMOVIMENTOCAIXAQLeft outer join OPERACAOCAIXA on MOVIMENTOCAIXA.OPCXICOD = OPERACAOCAIXA.OPCXICODILeft outer join NUMERARIO on MOVIMENTOCAIXA.NUMEICOD = NUMERARIO.NUMEICODELeft outer join USUARIO on MOVIMENTOCAIXA.USUAICOD = USUARIO.USUAICOD where(%MEmpresa) and(%MTerminal) and(%MData) and(%MNumerario) and(%Cupom) and#MOVIMENTOCAIXA.NUMEICOD is not nullorder byMOVIMENTOCAIXA.EMPRICOD,MOVIMENTOCAIXA.TERMICOD,MOVIMENTOCAIXA.MVCXDMOV,MOVIMENTOCAIXA.NUMEICOD MacrosDataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0 DataTypeftStringName	MTerminal	ParamTypeptInputValue0=0 DataTypeftStringNameMData	ParamTypeptInputValue0=0 DataTypeftStringName
MNumerario	ParamTypeptInputValue0=0 DataTypeftStringNameCupom	ParamTypeptInputValue0=0  Left�Top TIntegerFieldSQLMovimentoCaixaEMPRICOD	FieldNameEMPRICOD  TIntegerFieldSQLMovimentoCaixaTERMICOD	FieldNameTERMICOD  TIntegerFieldSQLMovimentoCaixaNUMEICOD	FieldNameNUMEICOD  TDateTimeFieldSQLMovimentoCaixaMVCXDMOV	FieldNameMVCXDMOV  TIntegerFieldSQLMovimentoCaixaOPCXICOD	FieldNameOPCXICOD  TIntegerFieldSQLMovimentoCaixaUSUAICOD	FieldNameUSUAICOD  TStringFieldSQLMovimentoCaixaMVCXA15DOCORIG	FieldNameMVCXA15DOCORIG	FixedChar	Size  TFloatFieldSQLMovimentoCaixaDEBITO	FieldNameDEBITO  TFloatFieldSQLMovimentoCaixaCREDITO	FieldNameCREDITO  TStringFieldSQLMovimentoCaixaMVCXA255HIST	FieldNameMVCXA255HIST	FixedChar	Size�   TStringFieldSQLMovimentoCaixaOPCXA60DESCR	FieldNameOPCXA60DESCR	FixedChar	Size<  TStringFieldSQLMovimentoCaixaNUMEA30DESCR	FieldNameNUMEA30DESCR	FixedChar	Size  TStringFieldSQLMovimentoCaixaUSUAA60LOGIN	FieldNameUSUAA60LOGIN	FixedChar	Size<   TQuerySQLTerminalDatabaseNameDBSQL.Stringsselect * from TERMINALorder by TERMA60DESCR Left�Top  TDataSourceDSSQLTerminalDataSetSQLTerminalLeft�Top  TQuerySQLNumerarioDatabaseNameDBSQL.Stringsselect * from NUMERARIOorder by NUMEA30DESCR Left�Top  TDataSourceDSSQLNumerarioDataSetSQLNumerarioLeftTop  TCrpeReportAboutVersion and Credits...DesignControlsDesign-Time Window ControlsVersion.Major Version.Minor 
ReportName6D:\DESENV\UnitGestao\Relatorios\Movimentacao Caixa.rptMargins.Left�Margins.Right�Margins.Top�Margins.Bottom�DiscardSavedData	PrintDate.Day PrintDate.Month PrintDate.Year Subreports.NLinks Subreports.OnDemandTables.Number�SortFields.Number�GroupSortFields.Number�GroupCondition.Number�GroupCondition.GroupTypegtOtherGroupOptions.Number�GroupOptions.GroupTypegtOtherGroupOptions.RepeatGHcDefaultGroupOptions.KeepTogethercDefaultGroupOptions.TopNOptions	tnDefaultGroupOptions.TopNGroups�GroupOptions.TopNDiscardOtherscDefaultParamFields.ParamTypepfStringParamFields.ParamSourcepsReportParamFields.Info.AllowNullcDefaultParamFields.Info.AllowEditingcDefault$ParamFields.Info.AllowMultipleValuescDefaultParamFields.Info.ValueType
vtDiscreteParamFields.Info.PartOfGroupcDefault'ParamFields.Info.MutuallyExclusiveGroupcDefaultParamFields.Info.GroupNum�ParamFields.ValueLimitcDefaultParamFields.Ranges.Number�ParamFields.Ranges.RangeBoundsIncludeStartAndEndParamFields.PLDescriptionOnlycDefaultParamFields.PLSortMethodpsmDefaultSortParamFields.PLSortByDescriptioncDefaultFormulas.Formula.Strings"Periodo Emissao" SectionFormat.BackgroundColorclNoneSectionHeight.Height SQL.Params.ParamTypespCharLogOnInfo.Table�SessionInfo.Table�SessionInfo.Propagate	Export.Excel.Constant       �@Export.Excel.AreaDExport.CharSepQuote WindowZoom.Magnification�WindowStatewsMaximizedWindowButtonBar.CloseBtn	WindowButtonBar.PrintSetupBtn	WindowButtonBar.SearchBtn	WindowCursor.GroupArea	wcDefaultWindowCursor.GroupAreaField	wcDefaultWindowCursor.DetailArea	wcDefaultWindowCursor.DetailAreaField	wcDefaultWindowCursor.Graph	wcDefaultGraphType.Number�GraphType.StylebarSideBySideGraphText.Number�GraphText.TitleFont.CharsetDEFAULT_CHARSETGraphText.TitleFont.ColorclWindowTextGraphText.TitleFont.Height�GraphText.TitleFont.NameMS Sans SerifGraphText.TitleFont.Style GraphText.SubTitleFont.CharsetDEFAULT_CHARSETGraphText.SubTitleFont.ColorclWindowTextGraphText.SubTitleFont.Height�GraphText.SubTitleFont.NameMS Sans SerifGraphText.SubTitleFont.Style GraphText.FootNoteFont.CharsetDEFAULT_CHARSETGraphText.FootNoteFont.ColorclWindowTextGraphText.FootNoteFont.Height�GraphText.FootNoteFont.NameMS Sans SerifGraphText.FootNoteFont.Style !GraphText.GroupsTitleFont.CharsetDEFAULT_CHARSETGraphText.GroupsTitleFont.ColorclWindowText GraphText.GroupsTitleFont.Height�GraphText.GroupsTitleFont.NameMS Sans SerifGraphText.GroupsTitleFont.Style GraphText.DataTitleFont.CharsetDEFAULT_CHARSETGraphText.DataTitleFont.ColorclWindowTextGraphText.DataTitleFont.Height�GraphText.DataTitleFont.NameMS Sans SerifGraphText.DataTitleFont.Style GraphText.LegendFont.CharsetDEFAULT_CHARSETGraphText.LegendFont.ColorclWindowTextGraphText.LegendFont.Height�GraphText.LegendFont.NameMS Sans SerifGraphText.LegendFont.Style !GraphText.GroupLabelsFont.CharsetDEFAULT_CHARSETGraphText.GroupLabelsFont.ColorclWindowText GraphText.GroupLabelsFont.Height�GraphText.GroupLabelsFont.NameMS Sans SerifGraphText.GroupLabelsFont.Style  GraphText.DataLabelsFont.CharsetDEFAULT_CHARSETGraphText.DataLabelsFont.ColorclWindowTextGraphText.DataLabelsFont.Height�GraphText.DataLabelsFont.NameMS Sans SerifGraphText.DataLabelsFont.Style GraphOptions.Number�GraphOptions.Max       ���GraphOptions.Min       ���GraphOptions.DataValuescDefaultGraphOptions.GridLinescDefaultGraphOptions.LegendcDefaultGraphOptions.BarDirection	bdDefaultGraphOptionInfo.Number�GraphOptionInfo.Color	gcDefaultGraphOptionInfo.Legend	glDefaultGraphOptionInfo.PieSize
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
gdvDefaultGraphAxis.DivisionsY GraphAxis.DivisionsY2 GraphAxis.DivisionsZ Left� Top   