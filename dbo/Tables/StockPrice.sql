CREATE TABLE [dbo].[StockPrice] (
    [StockID]      INT             IDENTITY (1, 1) NOT NULL,
    [StockSymbol]  VARCHAR (10)    NULL,
    [TradeDate]    DATE            NULL,
    [ExchangeCode] VARCHAR (10)    NULL,
    [ClosePrice]   DECIMAL (10, 2) NULL,
    [Volume]       BIGINT          NULL,
    PRIMARY KEY CLUSTERED ([StockID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_StockPrice_Date_Symbol_Exchange]
    ON [dbo].[StockPrice]([TradeDate] ASC, [StockSymbol] ASC, [ExchangeCode] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_StockPrice_Symbol_Date_Exchange]
    ON [dbo].[StockPrice]([StockSymbol] ASC, [TradeDate] ASC, [ExchangeCode] ASC);

