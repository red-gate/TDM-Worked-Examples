## Masking Target Database ##
$TargetHost = "127.0.0.1"
$TargetPort = 1988
$TargetDB = 'NewWorldDB_Subset'
$TargetUser = 'Redgate'
$TargetPassword = 'Redg@te1'
$Database = "SqlServer"


## Masking Target Database using previously created masking file ##
rganonymize.exe mask `
--database-engine $Database `
--connection-string "Server=$TargetHost,$TargetPort;Database=$TargetDB;Trust Server Certificate=yes;User ID=$TargetUser;Password=$TargetPassword" `
--masking-file masking.json