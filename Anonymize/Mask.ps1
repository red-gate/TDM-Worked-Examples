## Masking Target Database ##
$TargetHost = "127.0.0.1"
$TargetPort = 1988
$TargetDB = 'NewWorldDB_Subset'
$TargetUser = 'Redgate'
$TargetPassword = 'Redg@te1'
$Database = "SqlServer"

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