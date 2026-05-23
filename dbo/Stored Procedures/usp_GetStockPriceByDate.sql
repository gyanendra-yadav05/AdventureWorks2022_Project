CREATE   PROCEDURE dbo.usp_GetStockPriceByDate
    @TradeDate date
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TradeDate, StockSymbol, ExchangeCode, ClosePrice, Volume
    FROM dbo.StockPrice
    WHERE TradeDate = @TradeDate;
END