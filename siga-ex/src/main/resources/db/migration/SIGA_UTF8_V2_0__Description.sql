-------------------------------------------
--	SCRIPT:CONSTRAINTS
-------------------------------------------

--------------------------------------------------------
--  Constraints for Table EX_BOLETIM_DOC
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_BOLETIM_DOC" ADD CONSTRAINT "BOLETIM_DOC_PK" PRIMARY KEY ("ID_BOLETIM_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_BOLETIM_DOC" ADD CONSTRAINT "BOL_DOC_UK" UNIQUE ("ID_DOC") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_CLASSIFICACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_CLASSIFICACAO" ADD CONSTRAINT "CLASSIFICACAO_PK" PRIMARY KEY ("ID_CLASSIFICACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_CLASSIFICACAO" MODIFY ("ID_CLASSIFICACAO" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_CLASSIFICACAO" MODIFY ("COD_CLASSE" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_CLASSIFICACAO" MODIFY ("COD_SUBCLASSE" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_CLASSIFICACAO" MODIFY ("COD_ATIVIDADE" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_CLASSIFICACAO" MODIFY ("DESCR_CLASSIFICACAO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_COMPETENCIA
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_COMPETENCIA" MODIFY ("FG_COMPETENCIA" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_COMPETENCIA" MODIFY ("DT_INI_VIG_COMPETENCIA" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_COMPETENCIA" MODIFY ("ID_FORMA_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_COMPETENCIA" ADD PRIMARY KEY ("ID_COMPETENCIA") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_CONFIGURACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_CONFIGURACAO" ADD PRIMARY KEY ("ID_CONFIGURACAO_EX") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_DOCUMENTO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "DOCUMENTO_PK" PRIMARY KEY ("ID_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "EX_DOC_FORMA_NUM_ANO_FK" UNIQUE ("ANO_EMISSAO", "NUM_EXPEDIENTE", "ID_FORMA_DOC") DISABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "FG_PESSOAL_CK" CHECK (fg_pessoal in ('S','N')) ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "FG_SIGILOSO_CK" CHECK (fg_sigiloso in ('S','N')) ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" MODIFY ("ID_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" MODIFY ("ID_TP_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" MODIFY ("ID_CADASTRANTE" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" MODIFY ("ID_LOTA_CADASTRANTE" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" MODIFY ("DT_REG_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" MODIFY ("FG_SIGILOSO" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" MODIFY ("FG_ELETRONICO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_EMAIL_NOTIFICACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_EMAIL_NOTIFICACAO" ADD CONSTRAINT "EX_EMAIL_NOTIFICACAO_PK" PRIMARY KEY ("ID_EMAIL_NOTIFICACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_EMAIL_NOTIFICACAO" MODIFY ("ID_LOTACAO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_ESTADO_DOC
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_ESTADO_DOC" ADD CONSTRAINT "ESTADO_DOC_PK" PRIMARY KEY ("ID_ESTADO_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_ESTADO_DOC" MODIFY ("ID_ESTADO_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_ESTADO_DOC" MODIFY ("DESC_ESTADO_DOC" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_ESTADO_TP_MOV
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_ESTADO_TP_MOV" ADD CONSTRAINT "ESTADO_TP_MOV_PK" PRIMARY KEY ("ID_ESTADO_DOC", "ID_TP_MOV") ENABLE;
 
  ALTER TABLE "SIGA"."EX_ESTADO_TP_MOV" MODIFY ("ID_ESTADO_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_ESTADO_TP_MOV" MODIFY ("ID_TP_MOV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_FORMA_DOCUMENTO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_FORMA_DOCUMENTO" ADD CONSTRAINT "FORMA_DOCUMENTO_PK" PRIMARY KEY ("ID_FORMA_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_FORMA_DOCUMENTO" MODIFY ("ID_FORMA_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_FORMA_DOCUMENTO" MODIFY ("DESCR_FORMA_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_FORMA_DOCUMENTO" MODIFY ("SIGLA_FORMA_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_FORMA_DOCUMENTO" MODIFY ("ID_TIPO_FORMA_DOC" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_MOBIL
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_MOBIL" MODIFY ("ID_MOBIL" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_MOBIL" MODIFY ("ID_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_MOBIL" MODIFY ("ID_TIPO_MOBIL" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_MOBIL" MODIFY ("NUM_SEQUENCIA" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_MOBIL" ADD PRIMARY KEY ("ID_MOBIL") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_MODELO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_MODELO" ADD CONSTRAINT "MODELO_PK" PRIMARY KEY ("ID_MOD") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MODELO" MODIFY ("ID_MOD" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_MODELO" MODIFY ("NM_MOD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_MODELO_TP_DOC_PUBLICACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_MODELO_TP_DOC_PUBLICACAO" ADD CONSTRAINT "EX_MODELO_TP_DOC_PUBLICACAO_PK" PRIMARY KEY ("ID_MOD", "ID_DOC_PUBLICACAO") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_MOVIMENTACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOVIMENTACAO_PK" PRIMARY KEY ("ID_MOV") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" MODIFY ("ID_MOV" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" MODIFY ("ID_TP_MOV" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" MODIFY ("DT_MOV" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" MODIFY ("DT_INI_MOV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_NIVEL_ACESSO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_NIVEL_ACESSO" ADD CONSTRAINT "NIVEL_ACESSO_PK" PRIMARY KEY ("ID_NIVEL_ACESSO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_NIVEL_ACESSO" MODIFY ("ID_NIVEL_ACESSO" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_NIVEL_ACESSO" MODIFY ("NM_NIVEL_ACESSO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_NUMERACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_NUMERACAO" ADD CONSTRAINT "NUMERACAO_PK" PRIMARY KEY ("ID_ORGAO_USU", "ID_FORMA_DOC", "ANO_EMISSAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_NUMERACAO" MODIFY ("ID_ORGAO_USU" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_NUMERACAO" MODIFY ("ID_FORMA_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_NUMERACAO" MODIFY ("ANO_EMISSAO" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_NUMERACAO" MODIFY ("NUM_EXPEDIENTE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_PAPEL
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_PAPEL" ADD PRIMARY KEY ("ID_PAPEL") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_PREENCHIMENTO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_PREENCHIMENTO" ADD CONSTRAINT "PREENCHIMENTO_FK" PRIMARY KEY ("ID_PREENCHIMENTO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_PREENCHIMENTO" MODIFY ("ID_PREENCHIMENTO" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_PREENCHIMENTO" MODIFY ("ID_LOTACAO" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_PREENCHIMENTO" MODIFY ("ID_MOD" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_PREENCHIMENTO" MODIFY ("EX_NOME_PREENCHIMENTO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_SITUACAO_CONFIGURACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_SITUACAO_CONFIGURACAO" ADD CONSTRAINT "EX_SITUACAO_CONFIGURACAO_PK" PRIMARY KEY ("ID_SIT_CONFIGURACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_SITUACAO_CONFIGURACAO" MODIFY ("ID_SIT_CONFIGURACAO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_TEMPORALIDADE
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_TEMPORALIDADE" MODIFY ("ID_TEMPORALIDADE" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_TEMPORALIDADE" MODIFY ("DESC_TEMPORALIDADE" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_TEMPORALIDADE" ADD CONSTRAINT "TEMPORALIDADE_PK" PRIMARY KEY ("ID_TEMPORALIDADE") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_TIPO_DESPACHO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_TIPO_DESPACHO" MODIFY ("ID_TP_DESPACHO" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_TIPO_DESPACHO" MODIFY ("DESC_TP_DESPACHO" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_TIPO_DESPACHO" ADD CONSTRAINT "TIPO_DESPACHO_PK" PRIMARY KEY ("ID_TP_DESPACHO") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_TIPO_DESTINACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_TIPO_DESTINACAO" MODIFY ("ID_TP_DESTINACAO" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_TIPO_DESTINACAO" MODIFY ("DESCR_TIPO_DESTINACAO" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_TIPO_DESTINACAO" ADD CONSTRAINT "TIPO_DESTINACAO_PK" PRIMARY KEY ("ID_TP_DESTINACAO") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_TIPO_DOCUMENTO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_TIPO_DOCUMENTO" MODIFY ("ID_TP_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_TIPO_DOCUMENTO" MODIFY ("DESCR_TIPO_DOCUMENTO" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_TIPO_DOCUMENTO" ADD CONSTRAINT "TIPO_DOCUMETO_PK" PRIMARY KEY ("ID_TP_DOC") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_TIPO_FORMA_DOCUMENTO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_TIPO_FORMA_DOCUMENTO" ADD PRIMARY KEY ("ID_TIPO_FORMA_DOC") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_TIPO_MOBIL
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_TIPO_MOBIL" ADD PRIMARY KEY ("ID_TIPO_MOBIL") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_TIPO_MOVIMENTACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_TIPO_MOVIMENTACAO" MODIFY ("ID_TP_MOV" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_TIPO_MOVIMENTACAO" MODIFY ("DESCR_TIPO_MOVIMENTACAO" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_TIPO_MOVIMENTACAO" ADD CONSTRAINT "TIPO_MOVIMENTACAO_PK" PRIMARY KEY ("ID_TP_MOV") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_TP_DOC_PUBLICACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_TP_DOC_PUBLICACAO" ADD CONSTRAINT "TP_DOC_PUBLICACAO_PK" PRIMARY KEY ("ID_DOC_PUBLICACAO") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_TP_FORMA_DOC
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_TP_FORMA_DOC" MODIFY ("ID_FORMA_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_TP_FORMA_DOC" MODIFY ("ID_TP_DOC" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_TP_MOV_ESTADO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_TP_MOV_ESTADO" MODIFY ("ID_TP_MOV" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_TP_MOV_ESTADO" MODIFY ("ID_ESTADO_DOC" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_TP_MOV_ESTADO" ADD CONSTRAINT "TP_MOV_ESTADO_PK" PRIMARY KEY ("ID_ESTADO_DOC", "ID_TP_MOV") ENABLE;
--------------------------------------------------------
--  Constraints for Table EX_VIA
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_VIA" MODIFY ("ID_VIA" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_VIA" MODIFY ("ID_CLASSIFICACAO" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_VIA" MODIFY ("FG_MAIOR" NOT NULL ENABLE);
 
  ALTER TABLE "SIGA"."EX_VIA" ADD CONSTRAINT "VIA_PK" PRIMARY KEY ("ID_VIA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_BOLETIM_DOC
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_BOLETIM_DOC" ADD CONSTRAINT "BOL_BOLETIM_FK" FOREIGN KEY ("ID_BOLETIM") REFERENCES "SIGA"."EX_DOCUMENTO" ("ID_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_BOLETIM_DOC" ADD CONSTRAINT "BOL_DOC_FK" FOREIGN KEY ("ID_DOC") REFERENCES "SIGA"."EX_DOCUMENTO" ("ID_DOC") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_COMPETENCIA
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_COMPETENCIA" ADD CONSTRAINT "COMPETENCIA_CARGO_FK" FOREIGN KEY ("ID_CARGO") REFERENCES "CORPORATIVO"."DP_CARGO" ("ID_CARGO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_COMPETENCIA" ADD CONSTRAINT "COMPETENCIA_FUNC_CONF_FK" FOREIGN KEY ("ID_FUNCAO_CONFIANCA") REFERENCES "CORPORATIVO"."DP_FUNCAO_CONFIANCA" ("ID_FUNCAO_CONFIANCA") ENABLE;
 
  ALTER TABLE "SIGA"."EX_COMPETENCIA" ADD CONSTRAINT "COMPETENCIA_LOTACAO_FK" FOREIGN KEY ("ID_LOTACAO") REFERENCES "CORPORATIVO"."DP_LOTACAO" ("ID_LOTACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_COMPETENCIA" ADD CONSTRAINT "COMPETENCIA_PESSOA_FK" FOREIGN KEY ("ID_PESSOA") REFERENCES "CORPORATIVO"."DP_PESSOA" ("ID_PESSOA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_CONFIGURACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_CONFIGURACAO" ADD CONSTRAINT "FK_CLASSIFICACAO" FOREIGN KEY ("ID_CLASSIFICACAO") REFERENCES "SIGA"."EX_CLASSIFICACAO" ("ID_CLASSIFICACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_CONFIGURACAO" ADD CONSTRAINT "FK_FORMA_DOC" FOREIGN KEY ("ID_FORMA_DOC") REFERENCES "SIGA"."EX_FORMA_DOCUMENTO" ("ID_FORMA_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_CONFIGURACAO" ADD CONSTRAINT "FK_MOD" FOREIGN KEY ("ID_MOD") REFERENCES "SIGA"."EX_MODELO" ("ID_MOD") ENABLE;
 
  ALTER TABLE "SIGA"."EX_CONFIGURACAO" ADD CONSTRAINT "FK_NIVEL_ACESSO" FOREIGN KEY ("ID_NIVEL_ACESSO") REFERENCES "SIGA"."EX_NIVEL_ACESSO" ("ID_NIVEL_ACESSO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_CONFIGURACAO" ADD CONSTRAINT "FK_PAPEL" FOREIGN KEY ("ID_PAPEL") REFERENCES "SIGA"."EX_PAPEL" ("ID_PAPEL") ENABLE;
 
  ALTER TABLE "SIGA"."EX_CONFIGURACAO" ADD CONSTRAINT "FK_TP_DOC" FOREIGN KEY ("ID_TP_DOC") REFERENCES "SIGA"."EX_TIPO_DOCUMENTO" ("ID_TP_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_CONFIGURACAO" ADD CONSTRAINT "FK_TP_FORMA_DOC" FOREIGN KEY ("ID_TP_FORMA_DOC") REFERENCES "SIGA"."EX_TIPO_FORMA_DOCUMENTO" ("ID_TIPO_FORMA_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_CONFIGURACAO" ADD CONSTRAINT "FK_TP_MOV" FOREIGN KEY ("ID_TP_MOV") REFERENCES "SIGA"."EX_TIPO_MOVIMENTACAO" ("ID_TP_MOV") ENABLE;
 
  ALTER TABLE "SIGA"."EX_CONFIGURACAO" ADD CONSTRAINT "FK_VIA" FOREIGN KEY ("ID_VIA") REFERENCES "SIGA"."EX_VIA" ("ID_VIA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_DOCUMENTO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "DOCUMENTO_MODELO_FK" FOREIGN KEY ("ID_MOD") REFERENCES "SIGA"."EX_MODELO" ("ID_MOD") ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "DOC_CADASTRANTE_PESSOA_FK" FOREIGN KEY ("ID_CADASTRANTE") REFERENCES "CORPORATIVO"."DP_PESSOA" ("ID_PESSOA") ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "DOC_CLASSIFICACAO_FK" FOREIGN KEY ("ID_CLASSIFICACAO") REFERENCES "SIGA"."EX_CLASSIFICACAO" ("ID_CLASSIFICACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "DOC_CP_ORGAO_DEST_FK" FOREIGN KEY ("ID_ORGAO_DESTINATARIO") REFERENCES "CORPORATIVO"."CP_ORGAO" ("ID_ORGAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "DOC_CP_ORGAO_FK" FOREIGN KEY ("ID_ORGAO") REFERENCES "CORPORATIVO"."CP_ORGAO" ("ID_ORGAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "DOC_FORMA_DOC_FK" FOREIGN KEY ("ID_FORMA_DOC") REFERENCES "SIGA"."EX_FORMA_DOCUMENTO" ("ID_FORMA_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "DOC_LOTA_TITULAR_LOTACAO_FK" FOREIGN KEY ("ID_LOTA_TITULAR") REFERENCES "CORPORATIVO"."DP_LOTACAO" ("ID_LOTACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "DOC_NIVEL_ACESSO_FK" FOREIGN KEY ("ID_NIVEL_ACESSO") REFERENCES "SIGA"."EX_NIVEL_ACESSO" ("ID_NIVEL_ACESSO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "DOC_ORGAO_USU_FK" FOREIGN KEY ("ID_ORGAO_USU") REFERENCES "CORPORATIVO"."CP_ORGAO_USUARIO" ("ID_ORGAO_USU") ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "DOC_SUBSCRITOR_PESSOA_FK" FOREIGN KEY ("ID_SUBSCRITOR") REFERENCES "CORPORATIVO"."DP_PESSOA" ("ID_PESSOA") ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "DOC_TITULAR_PESSOA_FK" FOREIGN KEY ("ID_TITULAR") REFERENCES "CORPORATIVO"."DP_PESSOA" ("ID_PESSOA") ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD CONSTRAINT "DOC_TP_DOC_FK" FOREIGN KEY ("ID_TP_DOC") REFERENCES "SIGA"."EX_TIPO_DOCUMENTO" ("ID_TP_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_DOCUMENTO" ADD FOREIGN KEY ("ID_MOB_PAI") REFERENCES "SIGA"."EX_MOBIL" ("ID_MOBIL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_ESTADO_TP_MOV
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_ESTADO_TP_MOV" ADD CONSTRAINT "ESTADO_TPMOV_ESTADO_FK" FOREIGN KEY ("ID_ESTADO_DOC") REFERENCES "SIGA"."EX_ESTADO_DOC" ("ID_ESTADO_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_ESTADO_TP_MOV" ADD CONSTRAINT "TP_MOV_ESTADO_TPMOV_FK" FOREIGN KEY ("ID_TP_MOV") REFERENCES "SIGA"."EX_TIPO_MOVIMENTACAO" ("ID_TP_MOV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_FORMA_DOCUMENTO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_FORMA_DOCUMENTO" ADD FOREIGN KEY ("ID_TIPO_FORMA_DOC") REFERENCES "SIGA"."EX_TIPO_FORMA_DOCUMENTO" ("ID_TIPO_FORMA_DOC") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_MOBIL
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_MOBIL" ADD FOREIGN KEY ("ID_DOC") REFERENCES "SIGA"."EX_DOCUMENTO" ("ID_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOBIL" ADD FOREIGN KEY ("ID_TIPO_MOBIL") REFERENCES "SIGA"."EX_TIPO_MOBIL" ("ID_TIPO_MOBIL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_MODELO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_MODELO" ADD CONSTRAINT "MOD_CLASSIFICACAO_FK" FOREIGN KEY ("ID_CLASSIFICACAO") REFERENCES "SIGA"."EX_CLASSIFICACAO" ("ID_CLASSIFICACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MODELO" ADD CONSTRAINT "MOD_CLASS_VIA_FK" FOREIGN KEY ("ID_CLASS_CRIACAO_VIA") REFERENCES "SIGA"."EX_CLASSIFICACAO" ("ID_CLASSIFICACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MODELO" ADD CONSTRAINT "MOD_FORMA_DOC_FK" FOREIGN KEY ("ID_FORMA_DOC") REFERENCES "SIGA"."EX_FORMA_DOCUMENTO" ("ID_FORMA_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MODELO" ADD CONSTRAINT "MOD_NIVEL_ACESSO_FK" FOREIGN KEY ("ID_NIVEL_ACESSO") REFERENCES "SIGA"."EX_NIVEL_ACESSO" ("ID_NIVEL_ACESSO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_MODELO_TP_DOC_PUBLICACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_MODELO_TP_DOC_PUBLICACAO" ADD CONSTRAINT "MOD_PUBL_ID_DOC_PUBLICACAO_FK" FOREIGN KEY ("ID_DOC_PUBLICACAO") REFERENCES "SIGA"."EX_TP_DOC_PUBLICACAO" ("ID_DOC_PUBLICACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MODELO_TP_DOC_PUBLICACAO" ADD CONSTRAINT "MOD_PUBL_ID_MOD_FK" FOREIGN KEY ("ID_MOD") REFERENCES "SIGA"."EX_MODELO" ("ID_MOD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_MOVIMENTACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOVIMENTACAO_ESTADO_DOC_FK" FOREIGN KEY ("ID_ESTADO_DOC") REFERENCES "SIGA"."EX_ESTADO_DOC" ("ID_ESTADO_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_DEST_FIM_LOTA_FK" FOREIGN KEY ("ID_LOTA_DESTINO_FINAL") REFERENCES "CORPORATIVO"."DP_LOTACAO" ("ID_LOTACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_DEST_FIM_PESSOA_FK" FOREIGN KEY ("ID_DESTINO_FINAL") REFERENCES "CORPORATIVO"."DP_PESSOA" ("ID_PESSOA") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_DOC_FK" FOREIGN KEY ("ID_DOC") REFERENCES "SIGA"."EX_DOCUMENTO" ("ID_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_DOC_PAI_FK" FOREIGN KEY ("ID_DOC_PAI") REFERENCES "SIGA"."EX_DOCUMENTO" ("ID_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_DOC_REF_FK" FOREIGN KEY ("ID_DOC_REF") REFERENCES "SIGA"."EX_DOCUMENTO" ("ID_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_DP_LOTA_SIN_CAD_FK" FOREIGN KEY ("ID_LOTA_CADASTRANTE") REFERENCES "CORPORATIVO"."DP_LOTACAO" ("ID_LOTACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_DP_LOTA_SIN_SUB_FK" FOREIGN KEY ("ID_LOTA_SUBSCRITOR") REFERENCES "CORPORATIVO"."DP_LOTACAO" ("ID_LOTACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_DP_PESSOA_SIN_CAD_FK" FOREIGN KEY ("ID_CADASTRANTE") REFERENCES "CORPORATIVO"."DP_PESSOA" ("ID_PESSOA") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_DP_PESSOA_SIN_SUB_FK" FOREIGN KEY ("ID_SUBSCRITOR") REFERENCES "CORPORATIVO"."DP_PESSOA" ("ID_PESSOA") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_LOTA_RESP_FK" FOREIGN KEY ("ID_LOTA_RESP") REFERENCES "CORPORATIVO"."DP_LOTACAO" ("ID_LOTACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_LOTA_TITULAR_LOTACAO_FK" FOREIGN KEY ("ID_LOTA_TITULAR") REFERENCES "CORPORATIVO"."DP_LOTACAO" ("ID_LOTACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_MOV_CANCELADA_FK" FOREIGN KEY ("ID_MOV_CANCELADORA") REFERENCES "SIGA"."EX_MOVIMENTACAO" ("ID_MOV") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_NIVEL_ACESSO_FK" FOREIGN KEY ("ID_NIVEL_ACESSO") REFERENCES "SIGA"."EX_NIVEL_ACESSO" ("ID_NIVEL_ACESSO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_ORGAO_FK" FOREIGN KEY ("ID_ORGAO") REFERENCES "CORPORATIVO"."CP_ORGAO" ("ID_ORGAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_PESSOA_RESP_FK" FOREIGN KEY ("ID_RESP") REFERENCES "CORPORATIVO"."DP_PESSOA" ("ID_PESSOA") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_REF_MOV_FK" FOREIGN KEY ("ID_MOV_REF") REFERENCES "SIGA"."EX_MOVIMENTACAO" ("ID_MOV") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_TITULAR_PESSOA_FK" FOREIGN KEY ("ID_TITULAR") REFERENCES "CORPORATIVO"."DP_PESSOA" ("ID_PESSOA") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_TP_DESPACHO_FK" FOREIGN KEY ("ID_TP_DESPACHO") REFERENCES "SIGA"."EX_TIPO_DESPACHO" ("ID_TP_DESPACHO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD CONSTRAINT "MOV_TP_MOV_FK" FOREIGN KEY ("ID_TP_MOV") REFERENCES "SIGA"."EX_TIPO_MOVIMENTACAO" ("ID_TP_MOV") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD FOREIGN KEY ("ID_MOBIL") REFERENCES "SIGA"."EX_MOBIL" ("ID_MOBIL") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD FOREIGN KEY ("ID_MOB_REF") REFERENCES "SIGA"."EX_MOBIL" ("ID_MOBIL") ENABLE;
 
  ALTER TABLE "SIGA"."EX_MOVIMENTACAO" ADD FOREIGN KEY ("ID_PAPEL") REFERENCES "SIGA"."EX_PAPEL" ("ID_PAPEL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_NUMERACAO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_NUMERACAO" ADD CONSTRAINT "NUMERACAO_FORMA_DOC_FK" FOREIGN KEY ("ID_FORMA_DOC") REFERENCES "SIGA"."EX_FORMA_DOCUMENTO" ("ID_FORMA_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_NUMERACAO" ADD CONSTRAINT "NUMERACAO_ORGAO_USU_FK" FOREIGN KEY ("ID_ORGAO_USU") REFERENCES "CORPORATIVO"."CP_ORGAO_USUARIO" ("ID_ORGAO_USU") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_PREENCHIMENTO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_PREENCHIMENTO" ADD CONSTRAINT "PREENCHIMENTO_LOTACAO_FK" FOREIGN KEY ("ID_LOTACAO") REFERENCES "CORPORATIVO"."DP_LOTACAO" ("ID_LOTACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_PREENCHIMENTO" ADD CONSTRAINT "PREENCHIMENTO_MODELO_FK" FOREIGN KEY ("ID_MOD") REFERENCES "SIGA"."EX_MODELO" ("ID_MOD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_TP_FORMA_DOC
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_TP_FORMA_DOC" ADD CONSTRAINT "TP_FORMA_DOC_FORMA_DOC_FK" FOREIGN KEY ("ID_FORMA_DOC") REFERENCES "SIGA"."EX_FORMA_DOCUMENTO" ("ID_FORMA_DOC") ENABLE;
 
  ALTER TABLE "SIGA"."EX_TP_FORMA_DOC" ADD CONSTRAINT "TP_FORMA_DOC_TP_DOC_FK" FOREIGN KEY ("ID_TP_DOC") REFERENCES "SIGA"."EX_TIPO_DOCUMENTO" ("ID_TP_DOC") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_TP_MOV_ESTADO
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_TP_MOV_ESTADO" ADD CONSTRAINT "TP_MOV_TPMOV_ESTADO_FK" FOREIGN KEY ("ID_TP_MOV") REFERENCES "SIGA"."EX_TIPO_MOVIMENTACAO" ("ID_TP_MOV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_VIA
--------------------------------------------------------

  ALTER TABLE "SIGA"."EX_VIA" ADD CONSTRAINT "VIA_CLASSIFICACAO_FK" FOREIGN KEY ("ID_CLASSIFICACAO") REFERENCES "SIGA"."EX_CLASSIFICACAO" ("ID_CLASSIFICACAO") ENABLE;
 
  ALTER TABLE "SIGA"."EX_VIA" ADD CONSTRAINT "VIA_TMP_CORRENTE_FK" FOREIGN KEY ("ID_TMP_CORRENTE") REFERENCES "SIGA"."EX_TEMPORALIDADE" ("ID_TEMPORALIDADE") ENABLE;
 
  ALTER TABLE "SIGA"."EX_VIA" ADD CONSTRAINT "VIA_TMP_INTERMEDIARIO_FK" FOREIGN KEY ("ID_TMP_INTERMEDIARIO") REFERENCES "SIGA"."EX_TEMPORALIDADE" ("ID_TEMPORALIDADE") ENABLE;
 
  ALTER TABLE "SIGA"."EX_VIA" ADD CONSTRAINT "VIA_TP_DESTINACAO_FK" FOREIGN KEY ("ID_TP_DESTINACAO") REFERENCES "SIGA"."EX_TIPO_DESTINACAO" ("ID_TP_DESTINACAO") ENABLE;
--------------------------------------------------------
  
    ALTER TABLE "CORPORATIVO"."CP_MARCA" ADD FOREIGN KEY ("ID_MOBIL") REFERENCES "SIGA"."EX_MOBIL" ("ID_MOBIL") ENABLE;