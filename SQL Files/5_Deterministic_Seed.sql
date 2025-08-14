--Deterministic Seed will output 230 Rowan Vale--
SELECT Prod.OrderID AS OrderNumber, Prod.ShipAddress AS Prod_ShipAddress, Seed1.ShipAddress AS Seed_1_ShipAddress, Seed2.ShipAddress AS Seed_2_ShipAddress, NoSeed1.ShipAddress AS NoSeed_1_ShipAddress, NoSeed2.ShipAddress AS NoSeed_2_ShipAddress
FROM [NewWorldDB].[dbo].[Orders] Prod
JOIN [NewWorldDB_Seed_1].[dbo].[Orders] Seed1 on Prod.OrderID = Seed1.OrderID
JOIN [NewWorldDB_Seed_2].[dbo].[Orders] Seed2 on Prod.OrderID = Seed2.OrderID
JOIN [NewWorldDB_NoSeed_1].[dbo].[Orders] NoSeed1 on Prod.OrderID = NoSeed1.OrderID
JOIN [NewWorldDB_NoSeed_2].[dbo].[Orders] NoSeed2 on Prod.OrderID = NoSeed2.OrderID
WHERE Prod.ShipAddress IN (select ShipAddress from [NewWorldDB].[dbo].[Orders]  where prod.ShipAddress LIKE '%59%')