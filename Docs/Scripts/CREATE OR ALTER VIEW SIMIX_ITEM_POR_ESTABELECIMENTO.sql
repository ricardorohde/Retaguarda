CREATE OR ALTER VIEW SIMIX_ITEM_POR_ESTABELECIMENTO(
    CODIGO_INTERNO,
    PRECO_VENDA,
    PRECO_PROMOCAO,
    TIPO_PROMOCAO,
    DATA_INICIAL_PROMO,
    DATA_FINAL_PROMO,
    DATA_ALTERACAO)
AS
select P.PRODICOD, P.PRODN3VLRVENDA, P.PRODN3VLRVENDAPROM, 'desconto', P.PRODDINIPROMO, P.PRODDFIMPROMO,
       P.PRODDULTALTER
from PRODUTO P
;