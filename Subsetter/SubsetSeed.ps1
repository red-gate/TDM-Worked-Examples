$Database = "SqlServer"
$Options = 'C:\Github\TDM\End-to-End\SQL\options.json'
$Output = 'C:\Github\TDM\End-to-End\SQL\Subset_Log.json'
$Log = 'Verbose'

## Source Database ##
$SourceHost = "127.0.0.1"
$SourcePort = 1988
$SourceDB = 'NewWorldDB'
$SourceUser = 'Redgate'
$SourcePassword = 'Redg@te1'

## Subset Target Database NewWorldDB_Seed_1 ##
$TargetHost1 = "127.0.0.1"
$TargetPort1 = 1988
$TargetDB1 = 'NewWorldDB_Seed_1'
$TargetUser1 = 'Redgate'
$TargetPassword1 = 'Redg@te1'

## Subset Target Database NewWorldDB_Seed_2 ##
$TargetHost2 = "127.0.0.1"
$TargetPort2 = 1988
$TargetDB2 = 'NewWorldDB_Seed_2'
$TargetUser2 = 'Redgate'
$TargetPassword2 = 'Redg@te1'

## Subset Target Database NewWorldDB_NoSeed_1 ##
$TargetHost3 = "127.0.0.1"
$TargetPort3 = 1988
$TargetDB3 = 'NewWorldDB_NoSeed_1'
$TargetUser3 = 'Redgate'
$TargetPassword3 = 'Redg@te1'

## Subset Target Database NewWorldDB_NoSeed_2 ##
$TargetHost4 = "127.0.0.1"
$TargetPort4 = 1988
$TargetDB4 = 'NewWorldDB_NoSeed_2'
$TargetUser4 = 'Redgate'
$TargetPassword4 = 'Redg@te1'

rgsubset.exe rgsubset run `
--database-engine $Database `
--source-connection-string "Server=$SourceHost,$SourcePort;Database=$SourceDB;Trust Server Certificate=yes;User ID=$SourceUser;Password=$SourcePassword" `
--target-connection-string "Server=$TargetHost1,$TargetPort1;Database=$TargetDB1;Trust Server Certificate=yes;User ID=$TargetUser1;Password=$TargetPassword1" `
--target-database-write-mode Overwrite `
--options-file $Options `
--log-level $Log `
--output-file $Output

rgsubset.exe rgsubset run `
--database-engine $Database `
--source-connection-string "Server=$SourceHost,$SourcePort;Database=$SourceDB;Trust Server Certificate=yes;User ID=$SourceUser;Password=$SourcePassword" `
--target-connection-string "Server=$TargetHost2,$TargetPort2;Database=$TargetDB2;Trust Server Certificate=yes;User ID=$TargetUser2;Password=$TargetPassword2" `
--target-database-write-mode Overwrite `
--options-file $Options `
--log-level $Log `
--output-file $Output

rgsubset.exe rgsubset run `
--database-engine $Database `
--source-connection-string "Server=$SourceHost,$SourcePort;Database=$SourceDB;Trust Server Certificate=yes;User ID=$SourceUser;Password=$SourcePassword" `
--target-connection-string "Server=$TargetHost3,$TargetPort3;Database=$TargetDB3;Trust Server Certificate=yes;User ID=$TargetUser3;Password=$TargetPassword3" `
--target-database-write-mode Overwrite `
--options-file $Options `
--log-level $Log `
--output-file $Output

rgsubset.exe rgsubset run `
--database-engine $Database `
--source-connection-string "Server=$SourceHost,$SourcePort;Database=$SourceDB;Trust Server Certificate=yes;User ID=$SourceUser;Password=$SourcePassword" `
--target-connection-string "Server=$TargetHost4,$TargetPort4;Database=$TargetDB4;Trust Server Certificate=yes;User ID=$TargetUser4;Password=$TargetPassword4" `
--target-database-write-mode Overwrite `
--options-file $Options `
--log-level $Log `
--output-file $Output