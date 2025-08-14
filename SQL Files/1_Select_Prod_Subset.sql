SELECT  (
        SELECT COUNT(*)
        FROM   [NewWorldDB].[dbo].[Orders]
        ) AS Prod,
        (
        SELECT COUNT(*)
        FROM   [NewWorldDB_Subset].[dbo].[Orders]
        ) AS Subset