#!/bin/bash
perf_client -m wd --input-data data_64.json --shape INPUT0__0:64,39 -v -v -f perf_64.csv
perf_client -m wd --input-data data_128.json --shape INPUT0__0:128,39 -v -v -f perf_128.csv
perf_client -m wd --input-data data_256.json --shape INPUT0__0:256,39 -v -v -f perf_256.csv
perf_client -m wd --input-data data_512.json --shape INPUT0__0:512,39 -v -v -f perf_512.csv
perf_client -m wd --input-data data_1024.json --shape INPUT0__0:1024,39 -v -v -f perf_1024.csv
perf_client -m wd --input-data data_2048.json --shape INPUT0__0:2048,39 -v -v -f perf_2048.csv
perf_client -m wd --input-data data_4096.json --shape INPUT0__0:4096,39 -v -v -f perf_4096.csv