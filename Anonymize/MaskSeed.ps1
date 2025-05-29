$Database = "SqlServer"
$seed = 'my-secret-seed'

## Masking Target Database NewWorldDB_Seed_1 ##
$TargetHost1 = "127.0.0.1"
$TargetPort1 = 1988
$TargetDB1 = 'NewWorldDB_Seed_1'
$TargetUser1 = 'Redgate'
$TargetPassword1 = 'Redg@te1'

## Masking Target Database NewWorldDB_Seed_1 ##
$TargetHost2 = "127.0.0.1"
$TargetPort2 = 1988
$TargetDB2 = 'NewWorldDB_Seed_2'
$TargetUser2 = 'Redgate'
$TargetPassword2 = 'Redg@te1'

## Masking Target Database NewWorldDB_Seed_1 ##
$TargetHost3 = "127.0.0.1"
$TargetPort3 = 1988
$TargetDB3 = 'NewWorldDB_NoSeed_1'
$TargetUser3 = 'Redgate'
$TargetPassword3 = 'Redg@te1'

## Masking Target Database NewWorldDB_Seed_1 ##
$TargetHost4 = "127.0.0.1"
$TargetPort4 = 1988
$TargetDB4 = 'NewWorldDB_NoSeed_2'
$TargetUser4 = 'Redgate'
$TargetPassword4 = 'Redg@te1'


## Masking Target Database "NewWorldDB_Seed_1" with Seed ##
rganonymize.exe mask `
--database-engine $Database `
--connection-string "Server=$TargetHost1,$TargetPort1;Database=$TargetDB1;Trust Server Certificate=yes;User ID=$TargetUser1;Password=$TargetPassword1" `
--deterministic-seed "$seed" `
--masking-file masking.json

## Masking Target Database "NewWorldDB_Seed_2" with Seed ##
rganonymize.exe mask `
--database-engine $Database `
--connection-string "Server=$TargetHost2,$TargetPort2;Database=$TargetDB2;Trust Server Certificate=yes;User ID=$TargetUser2;Password=$TargetPassword2" `
--deterministic-seed "$seed" `
--masking-file masking.json

## Masking Target Database "NewWorldDB_NoSeed_1" without Seed ##
rganonymize.exe mask `
--database-engine $Database `
--connection-string "Server=$TargetHost3,$TargetPort3;Database=$TargetDB3;Trust Server Certificate=yes;User ID=$TargetUser3;Password=$TargetPassword3" `
--masking-file masking.json

## Masking Target Database "NewWorldDB_NoSeed_2" without Seed ##
rganonymize.exe mask `
--database-engine $Database `
--connection-string "Server=$TargetHost4,$TargetPort4;Database=$TargetDB4;Trust Server Certificate=yes;User ID=$TargetUser4;Password=$TargetPassword4" `
--masking-file masking.json