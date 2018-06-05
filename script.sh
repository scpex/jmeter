#!/bin/bash
./jmeter -n -t ./test/write_data_hdb.jmx -l /test/write_data_hdb1.log -e -o ./test/write_data_hdb1
./jmeter -n -t ./test/write_data_hdb.jmx -l /test/write_data_hdb2.log -e -o ./test/write_data_hdb2
./jmeter -n -t ./test/write_data_hdb.jmx -l /test/write_data_hdb3.log -e -o ./test/write_data_hdb3