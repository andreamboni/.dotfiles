#!/bin/sh

echo "Compilando MainTest.java"
javac -verbose MainTest.java

echo "Executando MainTest"
java MainTest $1 $2 $3 $4
