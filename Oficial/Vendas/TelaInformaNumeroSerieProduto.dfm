�
 TFORMTELAINFORMANUMEROSERIEPRODUTO 0A  TPF0"TFormTelaInformaNumeroSerieProduto!FormTelaInformaNumeroSerieProdutoLeft~TopaBorderIconsbiSystemMenu BorderStylebsSingleCaption   Informa Número de SérieClientHeight�ClientWidth�Color��� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 	FormStylefsStayOnTop
KeyPreview	OldCreateOrderPositionpoDesktopCenterOnCreate
FormCreateOnShowFormShowPixelsPerInch`
TextHeight TRxLabelLblNomeSistemaLeft Top Width�HeightAlignalTop	AlignmenttaCenterCaption"   Informe o Nro de Série do ProdutoColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameVerdana
Font.Style ParentColor
ParentFontShadowColorclBlack
ShadowSize	ShadowPosspRightBottomTransparent	  TLabellblNomeProdutoLeft Top(WidthHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclGreenFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TPanelPanel1Left Top=Width�Height8AlignalBottomColor��� TabOrder  TDBGridgridProdutoNovoLeftTop� Width�Height_AlignalBottomBorderStylebsNoneColorclWhite
DataSourcedsProdutoNovo
FixedColor��� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OptionsdgTitlesdgColumnResize
dgColLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit 
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ColumnsExpanded	FieldNamePRODICODVisible	 Expanded	FieldNamePRSEA60NROSERIEWidthLVisible	 Expanded	FieldNameEMPRICODWidthUVisible	    	TSMDBGrid	SMDBGrid1Left�Top�Width�Height� 
DataSourceDSSQLProdutoSerieOptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style OnDrawColumnCellSMDBGrid1DrawColumnCell	OnKeyDownSMDBGrid1KeyDownFlatBandsFont.CharsetDEFAULT_CHARSETBandsFont.ColorclWindowTextBandsFont.Height�BandsFont.NameMS Sans SerifBandsFont.Style 	Groupings GridStyle.StylegsCustomGridStyle.OddColorclWindowGridStyle.EvenColorclWindowTitleHeight.PixelCountFooterColor	clBtnFace	ExOptionseoENTERlikeTABeoKeepSelectioneoStandardPopupeoBLOBEditoreoTitleWordWrapeoShowFilterBar RegistryKeySoftware\ScalabiumRegistrySectionSMDBGridWidthOfIndicatorDefaultRowHeight
ScrollBarsssHorizontalColCountRowCountColumnsExpanded	FieldNamePRODICODWidthSVisible	 Expanded	FieldNamePRSEA60NROSERIEWidth7Visible	 Expanded	FieldNameEMPRICODVisible	     TEditedtNumeroSerieLeftTop"Width� HeightTabOrder  TBitBtn
btnInserirLeft� Top!WidthFHeightCaption&IncluirDefault	TabOrderOnClickbtnInserirClick
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphs  TPanelPanel2Left TopuWidth�Height)AlignalBottomTabOrder TBitBtnBitBtn1Left� TopWidth� Height!Caption&OKDefault	TabOrder OnClickBitBtn1Click
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphs  TBitBtnBitBtn2Left�TopWidth� Height!Caption	&CancelarTabOrderOnClickBitBtn2ClickKindbkCancel   TQuerySQLConsultaDatabaseNameDBLeft�Top�   TRxQuerySQLProdutoSerieDatabaseNameDBSQL.Stringsselect *from PRODUTOSERIE PSwhere PRODICOD = :PRODUTO and"           EMPRICOD = :EMPRESA and           (%Status)  MacrosDataTypeftStringNameStatus	ParamTypeptInputValue0=0  Left8Top� 	ParamDataDataType	ftIntegerNamePRODUTO	ParamTypeptInput DataType	ftIntegerNameEMPRESA	ParamTypeptInput   TIntegerFieldSQLProdutoSeriePRODICODDisplayLabel   Código Produto	FieldNamePRODICODOriginDB.PRODUTOSERIE.PRODICOD  TStringFieldSQLProdutoSeriePRSEA60NROSERIEDisplayLabel   Série	FieldNamePRSEA60NROSERIEOriginDB.PRODUTOSERIE.PRSEA60NROSERIE	FixedChar	Size<  TIntegerFieldSQLProdutoSerieEMPRICODDisplayLabelEmpresa	FieldNameEMPRICODOriginDB.PRODUTOSERIE.EMPRICOD   TDataSourceDSSQLProdutoSerieDataSetSQLProdutoSerieLeftpTop�   TRxMemoryDataRXSerie	FieldDefs LeftpTop�  TIntegerFieldRXSerieItem	FieldNameItem  TStringFieldRXSerieNumeroSerie	FieldNameNumeroSerieSize<   TClientDataSetcdsProdutoNovoActive	
Aggregates Params LeftHTop>Data
p   l   ��              l PRODICOD      PRSEA60NROSERIE I    WIDTH   EMPRICOD I    WIDTH      TIntegerFieldcdsProdutoNovoPRODICODDisplayLabel   Código Produto	FieldNamePRODICOD  TStringFieldcdsProdutoNovoPRSEA60NROSERIEDisplayLabel   Série	FieldNamePRSEA60NROSERIE  TStringFieldcdsProdutoNovoEMPRICODDisplayLabelEmpresaDisplayWidth	FieldNameEMPRICOD   TDataSourcedsProdutoNovoDataSetcdsProdutoNovoLeftpTopF   