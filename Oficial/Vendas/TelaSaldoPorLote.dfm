�
 TFORMTELASALDOPORLOTE 0�  TPF0TFormTelaSaldoPorLoteFormTelaSaldoPorLoteLeft� TopWidthHeight]BorderIconsbiSystemMenu Caption   Lotes com saldo disponívelColor�ؿ Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 	FormStylefsStayOnTop
KeyPreview	OldCreateOrderPositionpoDesktopCenterPixelsPerInch`
TextHeight TDBGridDBGridListaLeft Top WidthHeight9BorderStylebsNoneColorclWhite
DataSourceDSSQLLoteSaldo
FixedColor3f� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OptionsdgTitlesdgColumnResize
dgColLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit 
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWhiteTitleFont.Height�TitleFont.NameTahomaTitleFont.StylefsBold 	OnKeyDownDBGridListaKeyDownColumnsExpanded	FieldNameSALDOVisible	 Expanded	FieldNameQtdeNFFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameTahoma
Font.Style Visible	 Expanded	FieldNameSaldoDisponivelFont.CharsetDEFAULT_CHARSET
Font.ColorclGreenFont.Height�	Font.NameTahoma
Font.Style Visible	 Expanded	FieldName
LOTEA30NROWidth� Visible	 Expanded	FieldName	DataVectoVisible	    TDataSourceDSSQLLoteSaldoDataSetSQLLoteSaldoLeftTop�   TRxQuerySQLLoteSaldoOnCalcFieldsSQLLoteSaldoCalcFieldsDatabaseNameDBSQL.StringsSelect0SUM(MVESN3QTDENTRADA - MVESN3QTDSAIDA) as Saldo,
LOTEA30NROfromMovimentoEstoquewhereW(((MVESN3QTDENTRADA - MVESN3QTDSAIDA)> 0) or ((MVESN3QTDSAIDA - MVESN3QTDENTRADA) > 0))and	 %Produtoand  LOTEA30NRO is not nullGroup By  PRODICOD, LOTEA30NROOrder By  LOTEA30NRO MacrosDataTypeftStringNameProduto	ParamTypeptInputValue0=0  LeftTop	 TFloatFieldSQLLoteSaldoSALDODisplayLabelSaldo	FieldNameSALDOOrigin$DB.MOVIMENTOESTOQUE.MVESN3QTDENTRADA  TStringFieldSQLLoteSaldoLOTEA30NRODisplayLabel	Nro. Lote	FieldName
LOTEA30NRO	FixedChar	Size  
TDateFieldSQLLoteSaldoDataVectoDisplayLabelDt. Vencimento	FieldKindfkLookup	FieldName	DataVectoLookupDataSetSQLLoteLookupKeyFields
LOTEA30NROLookupResultField
LOTEDVECTO	KeyFields
LOTEA30NROLookup	  TFloatFieldSQLLoteSaldoQtdeNF	FieldKindfkCalculated	FieldNameQtdeNF
Calculated	  TFloatFieldSQLLoteSaldoSaldoDisponivelDisplayLabel   Disponível	FieldKindfkCalculated	FieldNameSaldoDisponivel
Calculated	   TRxQuerySQLLoteDatabaseNameDBSQL.StringsSelect * from Lote Macros Left$Top	 TStringFieldSQLLoteLOTEA30NRO	FieldName
LOTEA30NROOriginDB.LOTE.LOTEA30NRO	FixedChar	Size  TDateTimeFieldSQLLoteLOTEDVECTO	FieldName
LOTEDVECTOOriginDB.LOTE.LOTEDVECTO  TDateTimeFieldSQLLoteREGISTRO	FieldNameREGISTROOriginDB.LOTE.REGISTRO  TStringFieldSQLLotePENDENTE	FieldNamePENDENTEOriginDB.LOTE.PENDENTE	FixedChar	Size   TRxQuerySQLNotaFiscalitemDatabaseNameDBSQL.StringsSelect,  Sum(NOTAFISCALITEM.NFITN3QUANT) as QtdeNF,  NOTAFISCALITEM.PRODICOD,  NOTAFISCALITEM.LOTEA30NROfrom NOTAFISCALITEM, NOTAFISCALwhere0 NOTAFISCALITEM.NOFIA13ID = NOTAFISCAL.NOFIA13IDand NOTAFISCAL.NOFICSTATUS = 'A'and%  NOTAFISCALITEM.PRODICOD = :PRODICODGroup By2 NOTAFISCALITEM.PRODICOD,NOTAFISCALITEM.LOTEA30NRO             Macros Left@Top		ParamDataDataType	ftIntegerNamePRODICOD	ParamType	ptUnknown   TFloatFieldSQLNotaFiscalitemQTDENF	FieldNameQTDENFOriginDB.NOTAFISCALITEM.NFITN3QUANT  TIntegerFieldSQLNotaFiscalitemPRODICOD	FieldNamePRODICODOriginDB.NOTAFISCALITEM.PRODICOD  TStringFieldSQLNotaFiscalitemLOTEA30NRO	FieldName
LOTEA30NROOriginDB.NOTAFISCALITEM.LOTEA30NRO	FixedChar	Size    