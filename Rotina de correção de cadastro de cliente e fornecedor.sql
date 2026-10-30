-- Rotina que trata o cadastro incorreto do cliente/fornecedor, caso o seqpessoa for Isento ou Nulo, e estiver com a flag "É contribuinte de ICMS" marcada, o loop vai setar pra "N" e desmarcar. 

BEGIN
    UPDATE CONSINCO.GE_PESSOA
       SET INDCONTRIBICMS = 'N'
     WHERE NVL(UPPER(TRIM(INSCRICAORG)), 'ISENTO') = 'ISENTO'
       AND INDCONTRIBICMS = 'S';
    COMMIT;
END;
