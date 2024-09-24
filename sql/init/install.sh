#!/bin/bash

cd /u01/app/oracle/db-sample-schemas
sqlplus system/oracle@localhost:1521/EE.oracle.docker <<EOF
    @mksample oracle oracle HR OE PM IX SH BI users temp /logs localhost:1521/EE.oracle.docker
    quit
EOF
