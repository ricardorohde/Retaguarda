�
 TFORMCADASTROBARRAS 0v	  TPF0�TFormCadastroBarrasFormCadastroBarrasLeft!Top\Caption    OldCreateOrder	PixelsPerInch`
TextHeight �
TScrollBoxScrollBoxFundo �TPanelPanelCentral �TPanelPanelFundoDados �TPanelPanel5 �TPageControlPagePrincipal �	TTabSheetTabSheetConsulta �TDBGridDBGridListaColumnsExpanded	FieldNamePRBAA15BARRASVisible	    �TPanelPanelProcura �TPanelPanelBetween �	TAdvPanel	AdvPanel1
FullHeight    �TPanelPanelEditProcura �	TAdvPanelAdvPanelEditProcura
FullHeight    �TPanelPanelIndice �	TAdvPanelAdvPanelIndice
FullHeight       �TPanelPanelCodigoDescricao TLabelLabel2LeftTopWidth_HeightCaptionCodigo de BarrasFocusControlDBEdit2Font.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel112Left� TopWidth,HeightCaptionImp.EtqFont.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBEditDBEdit2Left
TopWidth� Height	DataFieldPRBAA15BARRAS
DataSource
DSTemplateTabOrder   TRxDBComboBoxComboImpEtqBarrasLeft� TopWidthEHeightStylecsDropDownList	DataFieldPRODCIMPETIQCDBAR
DataSource
DSTemplateEnableValues	Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ItemHeightItems.StringsSim   Não 
ParentFontTabOrderValues.StringsSN        �TRxQuerySQLTemplateSQL.StringsSelect * From PRODUTOBARRASWhere     PRODICOD = :PRODICOD and  (%MFiltro) 	ParamDataDataType	ftUnknownNamePRODICOD	ParamType	ptUnknown   TIntegerFieldSQLTemplatePRODICOD	FieldNamePRODICODOriginDB.PRODUTOBARRAS.PRODICOD  TStringFieldSQLTemplatePRBAA15BARRASConstraintErrorMessage1DisplayLabel	Cd.Barras	FieldNamePRBAA15BARRASOriginDB.PRODUTOBARRAS.PRBAA15BARRAS	FixedChar	Size  TStringFieldSQLTemplatePRODCIMPETIQCDBAR	FieldNamePRODCIMPETIQCDBAROrigin"DB.PRODUTOBARRAS.PRODCIMPETIQCDBAR	FixedChar	Size  TStringFieldSQLTemplatePENDENTE	FieldNamePENDENTEOriginDB.PRODUTOBARRAS.PENDENTE	FixedChar	Size  TDateTimeFieldSQLTemplateREGISTRO	FieldNameREGISTROOriginDB.PRODUTOBARRAS.REGISTRO   TRxQuerySQLBarrasPdvsDatabaseNameDBRequestLive	SQL.StringsSelect * from PRODUTOBARRASPDVSwhere (%MFiltro) MacrosDataTypeftStringNameMFiltro	ParamTypeptInputValue0=0  Left:Top   