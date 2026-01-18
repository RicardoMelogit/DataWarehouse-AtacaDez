CREATE TABLE [dbo].[tbl_produto]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [cod_produto] VARCHAR(25) NULL, 
    [desc_produto] VARCHAR(200) NULL, 
    [atr_unidade_medida] VARCHAR(50) NULL, 
    [cod_fornecedor] VARCHAR(25) NULL, 
    [desc_fornecedor] VARCHAR(200) NULL, 
    [arquivo_origem] VARCHAR(200) NULL, 
    [data_carga] DATETIME NULL
)
