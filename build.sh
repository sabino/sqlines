#!/bin/bash

cd ./sqlparser && g++ -m64 --all-warnings -c dllmain.cpp cobol.cpp clauses.cpp datatypes.cpp db2.cpp functions.cpp greenplum.cpp guess.cpp informix.cpp language.cpp mysql.cpp oracle.cpp postgresql.cpp report.cpp select.cpp helpers.cpp patterns.cpp post.cpp procedures.cpp storage.cpp sqlparser.cpp sqlserver.cpp bigquery.cpp statements.cpp stats.cpp teradata.cpp token.cpp
                             ar rcs sqlparser.a dllmain.o cobol.o clauses.o datatypes.o db2.o functions.o greenplum.o guess.o informix.o language.o mysql.o oracle.o postgresql.o report.o select.o helpers.o patterns.o post.o procedures.o storage.o sqlparser.o sqlserver.o bigquery.o statements.o stats.o teradata.o token.o
cd ../sqlines && g++ -m64 applog.cpp file.cpp filelist.cpp main.cpp os.cpp parameters.cpp sqlines.cpp str.cpp ../sqlparser/sqlparser.a -o sqlines

mv sqlines ../sqlines
chmod +x sqlines