--Comparison between "Prod" and "Subset"--

SELECT Prod.OrderID AS OrderNumber, Prod.ShipAddress AS Prod_ShipAddress, Subset.ShipAddress AS Subset_ShipAddress, Prod.ShipCity AS Prod_ShipCity, Subset.ShipCity AS Subset_ShipCity, Prod.ShipPostalCode as Prod_ZipCode, Subset.ShipPostalCode as Subset_ZipCode
FROM [NewWorldDB].[dbo].[Orders] Prod
JOIN [NewWorldDB_subset].[dbo].[Orders] Subset on Prod.OrderID = Subset.OrderID
--WHERE Prod.ShipAddress IN (select ShipAddress from [NewWorldDB].[dbo].[Orders]  where prod.ShipAddress LIKE '%59%')
