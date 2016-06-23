#!/bin/sh

rm mydata.db
sqlite3 mydata.db < code.sql
sqlite3 mydata.db < ex13.sql
