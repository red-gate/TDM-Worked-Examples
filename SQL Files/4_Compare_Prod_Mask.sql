--Comparison between "Prod" and "Masked Subset" showing determinism--

SELECT Prod.OrderID AS OrderNumber, Prod.ShipAddress AS Prod_ShipAddress, Mask.ShipAddress AS Masked_Deterministic_ShipAddress, Prod.ShipCity AS Prod_ShipCity, Mask.ShipCity AS Masked_Deterministic_ShipCity, Prod.ShipPostalCode as Prod_ZipCode, Mask.ShipPostalCode as Mask_ZipCode
FROM [NewWorldDB].[dbo].[Orders] Prod
JOIN [NewWorldDB_subset].[dbo].[Orders] Mask on Prod.OrderID = Mask.OrderID
WHERE Prod.ShipAddress IN (select ShipAddress from [NewWorldDB].[dbo].[Orders]  where prod.ShipAddress LIKE '%59%')