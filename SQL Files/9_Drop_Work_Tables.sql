--DROP RGTEMP TABLES--

Use NewWorldDB

DECLARE @sql NVARCHAR(MAX) = N'';

SELECT @sql += '
DROP TABLE ' 
    + QUOTENAME(s.name)
    + '.' + QUOTENAME(t.name) + ';'
    FROM sys.tables AS t
    INNER JOIN sys.schemas AS s
    ON t.[schema_id] = s.[schema_id] 
    WHERE t.name LIKE 'RGTEMP%';

PRINT @sql;
EXEC sp_executesql @sql;
