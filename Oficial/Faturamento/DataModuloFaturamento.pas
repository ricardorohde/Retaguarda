unit DataModuloFaturamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DataModuloTemplate, Db, DBTables, RxQuery, DBLists, VarSys, MemTable,
  UCrpe32, IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient,
  IdSMTP, IdBaseComponent, IdMessage, DBXpress, SqlExpr;

type
  TDMFaturamento = class(TDMTemplate)
    SQLConfigCrediario: TQuery;
    SQLConfigCrediarioCFCRN2PERCJURATRAS: TFloatField;
    SQLConfigCrediarioCFCRN2PERCMULATRAS: TFloatField;
    SQLConfigCrediarioCFCRINRODIASTOLJUR: TIntegerField;
    SQLConfigCrediarioCFCRINRODIASTOLMUL: TIntegerField;
    SQLConfigCrediarioCFCRN2PERCADIANT: TFloatField;
    SQLConfigCrediarioCFCRINRODIASADIANT: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA1A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA2A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA3A: TIntegerField;
    SQLConfigCrediarioCFCRA255PATHCART1A: TStringField;
    SQLConfigCrediarioCFCRA255PATHCART2A: TStringField;
    SQLConfigCrediarioCFCRA255PATHCART3A: TStringField;
    SQLConfigCrediarioCFCRCCONSMOTBLOQ: TStringField;
    SQLConfigCrediarioCFCRCCONSCARTAVISO: TStringField;
    SQLConfigCrediarioCFCRA255PATHRELSPC: TStringField;
    SQLConfigCrediarioCFCRA255PATHAUTDEP: TStringField;
    SQLConfigGeral: TQuery;
    SQLConfigGeralCFGEIEMPPADRAO: TIntegerField;
    SQLConfigGeralEmpresaPadraoCalcField: TStringField;
    SQLEmpresa: TRxQuery;
    SQLConfigVenda: TRxQuery;
    SQLConfigGeralCFGECATUSALDODIA: TStringField;
    SQLConfigGeralCFGECATIVAEXPORT: TStringField;
    SQLConfigGeralCFGEITIPMOVCONTENT: TIntegerField;
    SQLConfigGeralCFGEITIPMOVCONTSAI: TIntegerField;
    SQLConfigGeralCFGEA255PATHBLOQ: TStringField;
    SQLConfigGeralCFGECSETAREMPADREL: TStringField;
    SQLConfigGeralCFGECTROCAEMPLOGON: TStringField;
    SQLConfigGeralCFGEA255PATHFOTOCLI: TStringField;
    SQLConfigGeralCFGE1255PATHMALDIR: TStringField;
    SQLConfigGeralCFGECDELARQTEMPREL: TStringField;
    SQLConfigGeralCFGEA255PATHLOGOEMP: TStringField;
    SQLConfigGeralCFGECATUALSALDOMES: TStringField;
    SQLConfigGeralCFGECVALCODBARPROD: TStringField;
    SQLConfigGeralCFGECVALCODANTPRO: TStringField;
    SQLConfigGeralCFGECVALREFPROD: TStringField;
    SQLConfigGeralCFGECBASEPRCVENDA: TStringField;
    SQLConfigGeralCFGEA60HOSTSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDRETSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDHOSTPOP: TStringField;
    SQLConfigGeralCFGEA60NOMEUSERPOP: TStringField;
    SQLConfigGeralCFGEA60SENHAPOP: TStringField;
    SQLConfigGeralCGGEA30VERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHVERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHETIBAR: TStringField;
    SQLConfigVendaCFVEN3MAXLIMCRED: TFloatField;
    SQLConfigVendaCFVEN2PERCLIMCRED: TFloatField;
    SQLConfigVendaCFVECTIPOLIMCRED: TStringField;
    SQLConfigVendaCFVECARREDPARCELA: TStringField;
    SQLConfigVendaCFVECTIPOIMPPED: TStringField;
    SQLConfigVendaCFVECDADOSCHQPDV: TStringField;
    SQLConfigVendaCFVECUSADEBCREDCLI: TStringField;
    SQLConfigVendaCGVECTESTAITENSNF: TStringField;
    SQLConfigVendaCFVEN3ALIQISSQN: TFloatField;
    SQLConfigVendaCFVECIMPLEGPEDVENF: TStringField;
    SQLConfigVendaCFVEN3PERCICMFRETE: TFloatField;
    SQLConfigVendaCFVEA255OBSPADNF: TStringField;
    SQLConfigVendaCFVEITEMPOCONSPROD: TIntegerField;
    SQLConfigVendaCFVECQUITARPARCHQ: TStringField;
    SQLConfigVendaCFVEA255OBSPADRPED: TStringField;
    SQLConfigVendaOPESICODCUPOM: TIntegerField;
    SQLConfigVendaOPESICODCANCCUPOM: TIntegerField;
    SQLConfigVendaOPESICODNF: TIntegerField;
    SQLConfigVendaOPESICODCANCNF: TIntegerField;
    SQLConfigVendaOPESICODRETORNO: TIntegerField;
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLProduto: TRxQuery;
    SQLProdutoFilho: TRxQuery;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TFloatField;
    DSSQLProduto: TDataSource;
    SQLTerminalAtivo: TRxQuery;
    SQLTerminalAtivoTERMICOD: TIntegerField;
    SQLTerminalAtivoTERMCTIPO: TStringField;
    SQLTerminalAtivoTERMCSTATUSCAIXA: TStringField;
    SQLTerminalAtivoTERMDSTATUSCAIXA: TDateTimeField;
    SQLTerminalAtivoTERMA60DESCR: TStringField;
    SQLTerminalAtivoCLIEA13ID: TStringField;
    SQLTerminalAtivoVENDICOD: TIntegerField;
    SQLTerminalAtivoPLRCICOD: TIntegerField;
    SQLTerminalAtivoECFA13ID: TStringField;
    SQLTerminalAtivoTERMCMOVESTOQUE: TStringField;
    SQLTerminalAtivoTERMCUSAVENDEDOR: TStringField;
    SQLTerminalAtivoTERMCUSALIMITECRED: TStringField;
    SQLTerminalAtivoTERMA60IMPCARNE: TStringField;
    SQLTerminalAtivoTERMA60IMPPEDIDO: TStringField;
    SQLTerminalAtivoTERMA60IMPORCAMEN: TStringField;
    SQLTerminalAtivoTERMA60IMPCHEQUE: TStringField;
    SQLTerminalAtivoTERMA60IMPTCKAFCX: TStringField;
    SQLTerminalAtivoTERMCUSAMOEDA: TStringField;
    SQLTerminalAtivoTERMCIMPRIMECHEQUE: TStringField;
    SQLTerminalAtivoTERMCCONFIMPCARNE: TStringField;
    SQLTerminalAtivoTERMCIMPCONFDIVIDA: TStringField;
    SQLTerminalAtivoTERMCINFDADOSCLICP: TStringField;
    SQLTerminalAtivoTERMCIMPIDCUPOM: TStringField;
    SQLTerminalAtivoTERMA255MSGCARNE: TStringField;
    SQLTerminalAtivoTERMCIMPBARRASPED: TStringField;
    SQLTerminalAtivoTERMCINFDADOCLIPAD: TStringField;
    SQLTerminalAtivoTERMINRODECQUANT: TIntegerField;
    SQLTerminalAtivoTERMINUMEVISTA: TIntegerField;
    SQLTerminalAtivoTERMINUMEPRAZO: TIntegerField;
    SQLTerminalAtivoTERMCATIVO: TStringField;
    SQLTerminalAtivoUSUAICODATIVO: TIntegerField;
    SQLTerminalAtivoTERMA5ECFPORTACOM: TStringField;
    SQLTerminalAtivoTERMCIMPPREVENDA: TStringField;
    SQLConfigCompra: TRxQuery;
    SQLConfigCompraCFCOITIPMOVCANCNFE: TIntegerField;
    SQLConfigCompraCFCOCALTPRCPRODENT: TStringField;
    SQLConfigCompraCFCOCTESTAITENSNFE: TStringField;
    SQLConfigCompraCFCOCTOTPRCVENPROD: TStringField;
    SQLConfigCompraCFCOCNUMSERPRODENT: TStringField;
    SQLConfigCompraCFCOCIMPLEGORDCOMP: TStringField;
    SQLConfigCompraCFCOITIPMOVNFE: TIntegerField;
    SQLConfigCompraCFCOCALTVLRCOMPRA: TStringField;
    SQLConfigCompraCFCOCALTPERCIPI: TStringField;
    SQLConfigCompraCFCOCALTVLRCUSTO: TStringField;
    SQLConfigGeralEmpresaMatrizFilialLookUp: TStringField;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigVendaCFVECINFDADOVENDA: TStringField;
    SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField;
    SQLConfigVendaCFVEIQTDPADRPDV: TIntegerField;
    SQLPreco: TRxQuery;
    SQLConfigVendaTPRCICOD: TIntegerField;
    SQLConfigVendaCFVEICMSFRETECOD: TIntegerField;
    SQLConfigCrediarioCFCRN2PERCTAXACOBR: TFloatField;
    SQLConfigCrediarioCFCRINRODIACARTA4A: TIntegerField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI1AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI2AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI3AV: TStringField;
    SQLProdutoOrdemPesquisa: TRxQuery;
    SQLProdutoOrdemPesquisaPDOPIORDEM: TIntegerField;
    SQLProdutoOrdemPesquisaPDOPA30CAMPO: TStringField;
    SQLConfigVendaCFVEA250MSGBLOQ: TStringField;
    SQLConfigVendaCFVECMOVESTOQUENF: TStringField;
    SQLConfigVendaCFVECMOVESTOQUEPED: TStringField;
    SQLConfigVendaOPESICODCANCPED: TIntegerField;
    SQLConfigVendaOPESICODPED: TIntegerField;
    SQLConfigVendaPORTICOD: TIntegerField;
    SQLConfigVendaTPDCICOD: TIntegerField;
    SQLConfigVendaCFVECEXCLUIPEDFAT: TStringField;
    SQLConfigVendaCFVECALTPEDIMPORT: TStringField;
    SQLConfigVendaCFVEINROITENSNF: TIntegerField;
    SQLConfigVendaCFVECTESTALIMTCRED: TStringField;
    SQLConfigVendaMTBLICODVENDCONSIG: TIntegerField;
    SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField;
    SQLParcelas: TRxQuery;
    SQLCliente: TRxQuery;
    SQLConfigVendaCFVETOBSPADRAONF: TStringField;
    SQLConfigVendaCFVETOBSPADRAOPED: TStringField;
    SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField;
    SQLConfigVendaOPESICODIMPCUPOM: TIntegerField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoPRODA15APAVIM: TStringField;
    SQLProdutoPRODA15RUA: TStringField;
    SQLProdutoPRODA15PRATEL: TStringField;
    SQLProdutoCLFSICOD: TIntegerField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoICMSICOD: TIntegerField;
    SQLProdutoPRODN3PESOBRUTO: TFloatField;
    SQLProdutoPRODN3PESOLIQ: TFloatField;
    SQLProdutoPRODN3CAPACEMBAL: TFloatField;
    SQLProdutoPRODDCAD: TDateTimeField;
    SQLProdutoPRODDULTALTER: TDateTimeField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODN3VLRVENDAPROM: TFloatField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLProdutoPRODN3VLRCOMPRA: TFloatField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProdutoPRODN3VLRCUSTOMED: TFloatField;
    SQLProdutoPRODN3PERCIPI: TFloatField;
    SQLProdutoPRODN3PERCMARGLUCR: TFloatField;
    SQLProdutoPRODCATIVO: TStringField;
    SQLProdutoPRODCSERVICO: TStringField;
    SQLProdutoPRODCGERACOMIS: TStringField;
    SQLProdutoPRODN2COMISVISTA: TFloatField;
    SQLProdutoPRODN2COMISPRAZO: TFloatField;
    SQLProdutoPRODDIMOBOLIZ: TDateTimeField;
    SQLProdutoPRODICODPAI: TIntegerField;
    SQLProdutoPRODCTIPOBAIXA: TStringField;
    SQLProdutoPRODN3QTDEBAIXA: TFloatField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoPRODIORIGEM: TIntegerField;
    SQLProdutoPENDENTE: TStringField;
    SQLProdutoREGISTRO: TDateTimeField;
    SQLProdutoPRODDULTATUALIZ: TDateTimeField;
    SQLProdutoPRODA60DIMENSAO: TStringField;
    SQLProdutoSaldoPSLDN3QTDMIN: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMAX: TFloatField;
    SQLProdutoSaldoPENDENTE: TStringField;
    SQLProdutoSaldoREGISTRO: TDateTimeField;
    SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField;
    SQLConfigVendaOPESICODVENDCONSIG: TIntegerField;
    SQLConfigCrediarioCFCRA254PATHMALADIRETA: TStringField;
    SQLTerminalAtivoEMPRICOD: TIntegerField;
    SQLConfigGeralCFGECUSASALDODIARIO: TStringField;
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    SQLTerminalAtivoTERMTPATHNF: TStringField;
    SQLClienteDadChq: TRxQuery;
    SQLClienteDadChqCLIEA13ID: TStringField;
    SQLClienteDadChqCLIEA60RAZAOSOC: TStringField;
    SQLClienteDadChqBANCA5COD: TStringField;
    SQLClienteDadChqCLIEA5AGENCIA: TStringField;
    SQLClienteDadChqCLIEA10CONTA: TStringField;
    SQLClienteDadChqCLIEA60TITULAR: TStringField;
    SQLClienteDadChqCLIEDABERTCONTA: TDateTimeField;
    DSTblCheques: TDataSource;
    TblCheques: TMemoryTable;
    TblChequesDtDep: TDateTimeField;
    TblChequesNroCheque: TFloatField;
    TblChequesValor: TFloatField;
    TblChequesHistorico: TStringField;
    TblChequesPORTICOD: TIntegerField;
    TblChequesBANCA5COD: TStringField;
    TblChequesAGENCIA: TStringField;
    TblChequesCONTA: TStringField;
    TblChequesDATAABERT: TDateField;
    TblChequesTITULAR: TStringField;
    TblChequesCGCCPF: TStringField;
    TblChequesALINICOD: TIntegerField;
    TblPedidoCab: TTable;
    TblPedidoCabPedICod: TStringField;
    TblPedidoCabEmitente_Nome: TStringField;
    TblPedidoCabEmitente_Ender: TStringField;
    TblPedidoCabEmitente_Bairro: TStringField;
    TblPedidoCabEmitente_Cidade: TStringField;
    TblPedidoCabEmitente_UF: TStringField;
    TblPedidoCabEmitente_CGC: TStringField;
    TblPedidoCabEmitente_IE: TStringField;
    TblPedidoCabEmitente_Fone: TStringField;
    TblPedidoCabDtEmissao: TDateField;
    TblPedidoCabDestinatario_Nome: TStringField;
    TblPedidoCabDestinatario_Endereco: TStringField;
    TblPedidoCabDestinatario_Bairro: TStringField;
    TblPedidoCabDestinatario_Cep: TStringField;
    TblPedidoCabDestinatario_Cidade: TStringField;
    TblPedidoCabDestinatario_UF: TStringField;
    TblPedidoCabDestinatario_CpfCgc: TStringField;
    TblPedidoCabDestinatario_IE: TStringField;
    TblPedidoCabDestinatario_Fone: TStringField;
    TblPedidoCabDestinatario_Fax: TStringField;
    TblPedidoCabTransp: TStringField;
    TblPedidoCabDtaEntrega: TDateField;
    TblPedidoCabComprador: TStringField;
    TblPedidoCabOrdemCompra: TStringField;
    TblPedidoCabPlano: TStringField;
    TblPedidoCabTipoFrete: TStringField;
    TblPedidoCabValorFrete: TFloatField;
    TblPedidoCabTotalDesconto: TFloatField;
    TblPedidoCabTotal: TFloatField;
    TblPedidoCabObservacoes: TMemoField;
    TblPedidoCabVendedor: TStringField;
    TblPedidoCabEmail: TStringField;
    TblPedidoCabPEDIDOORCAMENTO: TStringField;
    TblPedidoCabTotalGeral: TFloatField;
    TblPedidoCabEmitente_Email: TStringField;
    TblPedidoCabEmitente_URL: TStringField;
    DSTblPedidoCab: TDataSource;
    DSTblPedidoItens: TDataSource;
    TblPedidoItens: TTable;
    TblPedidoItensPedICod: TStringField;
    TblPedidoItensCodigo: TIntegerField;
    TblPedidoItensDescricao: TStringField;
    TblPedidoItensUn: TStringField;
    TblPedidoItensQtd1: TFloatField;
    TblPedidoItensVlrUnitario: TFloatField;
    TblPedidoItensVlrTotal: TFloatField;
    TblPedidoItensCor: TStringField;
    TblPedidoItensTecido: TStringField;
    TblPedidoItensLegenda: TIntegerField;
    TblPedidoItensQtd2: TFloatField;
    TblPedidoItensQtd3: TFloatField;
    TblPedidoItensQtd4: TFloatField;
    TblPedidoItensQtd5: TFloatField;
    TblPedidoItensQtd6: TFloatField;
    TblPedidoItensQtd7: TFloatField;
    TblPedidoItensQtd8: TFloatField;
    TblPedidoItensQtd9: TFloatField;
    TblPedidoItensQtd10: TFloatField;
    TblPedidoItensQtd11: TFloatField;
    TblPedidoItensQtd12: TFloatField;
    TblPedidoItensQtd13: TFloatField;
    TblPedidoItensQtd14: TFloatField;
    TblPedidoItensQtd15: TFloatField;
    TblPedidoItensReferencia: TStringField;
    TblPedidoFinan: TTable;
    TblPedidoFinanPedICod: TStringField;
    TblPedidoFinanVencimento: TDateField;
    TblPedidoFinanValor: TFloatField;
    DSTblPedidoFinan: TDataSource;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRCFISJURID: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLEmpresaEMPRA11CPF: TStringField;
    SQLEmpresaEMPRA10RG: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    SQLEmpresaPENDENTE: TStringField;
    SQLEmpresaREGISTRO: TDateTimeField;
    SQLEmpresaEMPRA100INFSPC: TStringField;
    SQLTerminalAtivoTERMACTIPOIMPPEDORC: TStringField;
    SQLTerminalAtivoTERMTPATHPEDORC: TStringField;
    Report: TCrpe;
    SQLTeleEntrega: TRxQuery;
    SQLTeleEntregaTELEA13ID: TStringField;
    SQLTeleEntregaEMPRICOD: TIntegerField;
    SQLTeleEntregaTERMICOD: TIntegerField;
    SQLTeleEntregaTELEICOD: TIntegerField;
    SQLTeleEntregaCUPOA13ID: TStringField;
    SQLTeleEntregaNOFIA13ID: TStringField;
    SQLTeleEntregaPDVDA13ID: TStringField;
    SQLTeleEntregaTELEDENTRPREV: TDateTimeField;
    SQLTeleEntregaTELEDENTRPREV1: TDateTimeField;
    SQLTeleEntregaTELEDENTRPREV2: TDateTimeField;
    SQLTeleEntregaTELEDENTRREAL: TDateTimeField;
    SQLTeleEntregaTELEA60SOLICITANTE: TStringField;
    SQLTeleEntregaTELEA60ENTRPARANOME: TStringField;
    SQLTeleEntregaTELEA60ENTRPARAEND: TStringField;
    SQLTeleEntregaTELEA60ENTRPARABAI: TStringField;
    SQLTeleEntregaTELEA60ENTRPARACID: TStringField;
    SQLTeleEntregaTELEA2ENTRPARAUF: TStringField;
    SQLTeleEntregaTELEA15ENTRPARAFONE: TStringField;
    SQLTeleEntregaTELEA60RECPORNOME: TStringField;
    SQLTeleEntregaTELEADREC: TDateTimeField;
    SQLTeleEntregaTELEA1016MENSG: TMemoField;
    SQLTeleEntregaPENDENTE: TStringField;
    SQLTeleEntregaREGISTRO: TDateTimeField;
    SQLTeleEntregaTPVDICOD: TIntegerField;
    UpdateSQLTeleEntrega: TUpdateSQL;
    TblTicketPreVendaCab: TTable;
    TblTicketPreVendaCabTicketNumero: TStringField;
    TblTicketPreVendaCabVendedor: TStringField;
    TblTicketPreVendaCabPlano: TStringField;
    TblTicketPreVendaCabCliente: TStringField;
    TblTicketPreVendaCabFoneCliente: TStringField;
    TblTicketPreVendaCabTotalNominal: TFloatField;
    TblTicketPreVendaCabTaxaCrediario: TFloatField;
    TblTicketPreVendaCabAcrescimo: TFloatField;
    TblTicketPreVendaCabDesconto: TFloatField;
    TblTicketPreVendaCabTotalGeral: TFloatField;
    TblTicketPreVendaCabNomeEmpresa: TStringField;
    TblTicketPreVendaCabFoneEmpresa: TStringField;
    TblTicketPreVendaCabNroCreditCard: TStringField;
    TblTicketPreVendaCabNumerarioPagto: TStringField;
    TblTicketPreVendaCabMensagem: TStringField;
    TblTicketPreVendaCabDataEntrega: TStringField;
    TblTicketPreVendaCabTipoVenda: TStringField;
    TblTicketPreVendaCabPessoaRecebeNome: TStringField;
    TblTicketPreVendaCabPessoaRecebeEnder: TStringField;
    TblTicketPreVendaCabPessoaRecebeBai: TStringField;
    TblTicketPreVendaCabPessoaRecebeCid: TStringField;
    TblTicketPreVendaCabPessoaRecebeUF: TStringField;
    TblTicketPreVendaCabPessoaRecebeFone: TStringField;
    TblTicketPreVendaCabMensagem2: TMemoField;
    TblTicketPreVendaItem: TTable;
    TblTicketPreVendaItemCodigo: TIntegerField;
    TblTicketPreVendaItemDescricao: TStringField;
    TblTicketPreVendaItemQuantidade: TFloatField;
    TblTicketPreVendaItemValorUnitario: TFloatField;
    TblTicketPreVendaItemValorTotal: TFloatField;
    TblTicketPreVendaItemDesconto: TFloatField;
    TblTicketPreVendaItemMarca: TStringField;
    TblTicketPreVendaItemReferencia: TStringField;
    SQLConfigTransportadora: TRxQuery;
    SQLConfigTransportadoraCFTROPFUICODCREDITO: TIntegerField;
    SQLConfigTransportadoraOPFUA60DESCRCREDITO: TStringField;
    SQLConfigTransportadoraCFTROPFUICODDEBITO: TIntegerField;
    SQLConfigTransportadoraOPFUA60DESCRDEBITO: TStringField;
    DsSQLConfigTransportadora: TDataSource;
    QueryOperacaoDebito: TQuery;
    QueryOperacaoCredito: TQuery;
    SQLConfigGeralCFGECTESTEANPROD: TStringField;
    SQLConfigGeralCFGECTESTREFPROD: TStringField;
    SQLConfigGeralCFGECALCPRECOAUTOM: TStringField;
    SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField;
    SQLConfigGeralCFGECUSAMARGLIQ: TStringField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    TblPedidoCabEmitenteLogo: TBlobField;
    TblPedidoItensCodItem: TIntegerField;
    SQLConfigVendaCFVECSOLSENHAALTVLR: TStringField;
    TblTicketPreVendaCabDataEmissao: TDateField;
    SQLConfigVendaCFVECIMPDESCRPRINF: TStringField;
    SQLTeleEntregaFUNCA13ID: TStringField;
    SQLTeleEntregaTELEA30OCASIAO: TStringField;
    SQLConfigVendaCFVECCONTPEDVDAUSU: TStringField;
    SQLConfigVendaCFVECINFPRODSUBTRI: TStringField;
    TblPedidoCabDestinatario_Fone2: TStringField;
    SQLConfigVendaCFVECNAOIMPCLFISNF: TStringField;
    SQLConfigFinanceiro: TRxQuery;
    SQLConfigFinanceiroOPTEICODPAGAR: TIntegerField;
    SQLConfigFinanceiroOPBCICODPAGAR: TIntegerField;
    SQLConfigFinanceiroNUMEICODPAGAR: TIntegerField;
    SQLConfigFinanceiroCTCRICODPAGAR: TIntegerField;
    SQLConfigFinanceiroALINICODPAGAR: TIntegerField;
    SQLConfigFinanceiroCGFIA254HISTPAGAR: TStringField;
    SQLConfigFinanceiroOPTEICODRECEBER: TIntegerField;
    SQLConfigFinanceiroOPBCICODRECEBER: TIntegerField;
    SQLConfigFinanceiroNUMEICODRECEBER: TIntegerField;
    SQLConfigFinanceiroCGFIA254HISTRECEBE: TStringField;
    SQLConfigFinanceiroALINICODRECEBER: TIntegerField;
    SQLConfigFinanceiroPORTICODRECEBER: TIntegerField;
    SQLConfigFinanceiroCGFIUSATESOURARIA: TStringField;
    SQLConfigFinanceiroCGFICINFPLCTBXSIMP: TStringField;
    SQLConfigVendaCFVEIOPTESVENDANF: TIntegerField;
    DSSQLEmpresa: TDataSource;
    TblPedidoCabRota: TStringField;
    SQLConfigVendaCFVEIOPTESVENDNFNA: TIntegerField;
    SQLTerminalAtivoTERMA60IMPNF: TStringField;
    SQLTerminalAtivoTPDCICOD: TIntegerField;
    SQLConfigVendaCFVEN2PERCCOFINS: TFloatField;
    SQLConfigVendaCFVEN2PERCENCARG: TFloatField;
    SQLConfigVendaCFVEN2PERCPIS: TFloatField;
    SQLConfigVendaCFVEN2PERCICMS: TFloatField;
    SQLConfigGeralCFGECBLOQ: TStringField;
    SQLEmpresaEMPRA60CONTATO: TStringField;
    SQLEmpresaEMPRCLUCROREAL: TStringField;
    SQLEmpresaEMPRN2VLRFUNDOPROMO: TFloatField;
    SQLEmpresaEMPRA15REGJUNTA: TStringField;
    SQLConfigCrediarioCFCRA255PATHCARTPE: TStringField;
    SQLConfigGeralCFGEDBLOQ: TDateTimeField;
    SQLEmpresaEMPRIUFCODFED: TIntegerField;
    SQLPopUP: TQuery;
    SQLPopUPPOPTEMPO: TStringField;
    SQLPopUPCFGCCEXIBIRPOPTARE: TStringField;
    SQLConfigInventario: TRxQuery;
    SQLConfigInventarioOPESICODENTRADA: TIntegerField;
    SQLConfigInventarioOPESICODSAIDA: TIntegerField;
    SQLEmpresaEMPRA3CRT: TStringField;
    SQLConfigVendaCFVECVENDEDOREXIGE: TStringField;
    SQLConfigVendaCFVECFRETEPADRAO: TStringField;
    SQLConfigVendaNUMEVISTA: TIntegerField;
    SQLConfigVendaNUMEPRAZO: TIntegerField;
    SQLEmpresaEMPRIENDNRO: TIntegerField;
    SQLProdutoPRODA255DESCRTEC: TMemoField;
    TblTicketPreVendaCabEmpresaEmit: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Ender: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Bairro: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Cidade: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Fone: TStringField;
    SQLTerminalAtivoTERMA254PATHTERM: TStringField;
    SQLEmpresaEMPRA100CERTIFSERIE: TStringField;
    SQLEmpresaEMPRA35CERTIFSENHA: TStringField;
    SQLEmpresaEMPRIFORMAEMISDANFE: TIntegerField;
    SQLEmpresaEMPRIFORMAEMISNFE: TIntegerField;
    SQLEmpresaEMPRA100CAMINHOLOGO: TStringField;
    SQLEmpresaEMPRA100CAMINHOXML: TStringField;
    SQLEmpresaEMPRA100CAMINHODANFES: TStringField;
    SQLEmpresaEMPRA2WSUF: TStringField;
    SQLEmpresaEMPRIWSAMBIENTE: TIntegerField;
    SQLEmpresaEMPRA1VISUALIZAMSG: TStringField;
    SQLEmpresaEMPRA100PROXYHOST: TStringField;
    SQLEmpresaEMPRIPROXYPORTA: TIntegerField;
    SQLEmpresaEMPRA50PROXYUSUARIO: TStringField;
    SQLEmpresaEMPRA50PROXYSENHA: TStringField;
    SQLEmpresaEMPRA50EMAILHOST: TStringField;
    SQLEmpresaEMPRIEMAILPORTA: TIntegerField;
    SQLEmpresaEMPRA50EMAILSENHA: TStringField;
    SQLEmpresaEMPRA1SSL: TStringField;
    SQLEmpresaEMPRA60EMAILCOPIA: TStringField;
    SQLEmpresaEMPRA1TSL: TStringField;
    SQLTerminalAtivoUSATABLET: TStringField;
    sqlImportarPrevenda: TRxQuery;
    SQLEmpresaEMPRA75EMAILUSUARIO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    GrupoAtual, SubGrupoAtual, RotaAtualPedidos,
    VendedorAtualPedidos, TranspAtualPedidos, ConfigEtiqueta : Integer;
    GerandoPedidoVenda, InserindoItemPV : Boolean;
    GerandoNotaFiscal, InserindoItemNV:Boolean;
    ImportandoPedidoVenda, ImportandoColetor,
    GerarNovaNota, TrocarStatusPedidoParaFaturado :Boolean;
    PedidoVenda, Cupom, TipoPlanoContas, ClienteVenda, SerieAtualPedidos, FretePorConta,
    PedidoVolume, PedidoEspecie, PedidoMarca, PedidoPesoB, PedidoPesoL, PedidoObs, ID_NotaFiscal_Boleto,
    OSPesquisa, CodTabelaFrete, VeiculoAtualPedidos, CodTarefa, PrevendaTerminalStr, PrevendaCodigoStr: String;
    DataEntregaPedidos, DataEmissaoPedidos : TDate;
  end;

var
  DMFaturamento: TDMFaturamento;
  OP: String;

implementation

uses UnitLibrary, TelaSplash;

{$R *.DFM}

procedure TDMFaturamento.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FormSplash .lbDados.Caption := 'Abrindo Tabela de Parametros...'; FormSplash.lbDados.Update;
  SQLConfigGeral.Open ;
  SQLConfigVenda.Open ;
  SQLConfigCrediario.Open ;
end;

end.
