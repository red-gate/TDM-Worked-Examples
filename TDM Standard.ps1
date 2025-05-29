## Subset Prod into Subset based on Where Clause in Options file ##
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

## Target Database ##
$TargetHost = "127.0.0.1"
$TargetPort = 1988
$TargetDB = 'NewWorldDB_Subset'
$TargetUser = 'Redgate'
$TargetPassword = 'Redg@te1'

rgsubset.exe rgsubset run `
--database-engine $Database `
--source-connection-string "Server=$SourceHost,$SourcePort;Database=$SourceDB;Trust Server Certificate=yes;User ID=$SourceUser;Password=$SourcePassword" `
--target-connection-string "Server=$TargetHost,$TargetPort;Database=$TargetDB;Trust Server Certificate=yes;User ID=$TargetUser;Password=$TargetPassword" `
--target-database-write-mode Overwrite `
--options-file $Options `
--log-level $Log `
--output-file $Output

pause

## Begin process of Masking Target Database ##


## Classifying Table Structure of Target Database ##
rganonymize.exe classify `
--database-engine $Database `
--connection-string "Server=$TargetHost,$TargetPort;Database=$TargetDB;Trust Server Certificate=yes;User ID=$TargetUser;Password=$TargetPassword" `
--classification-file classification.json `
--output-all-columns

pause

## Mapping Table Structure ##
rganonymize.exe map `
--classification-file classification.json `
--masking-file masking.json

pause

## Masking Target Database ##
rganonymize.exe mask `
--database-engine $Database `
--connection-string "Server=$TargetHost,$TargetPort;Database=$TargetDB;Trust Server Certificate=yes;User ID=$TargetUser;Password=$TargetPassword" `
--masking-file masking.json